<?php

/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Chandra\Yii2Account\models;

use Chandra\Yii2Account\clients\ClientInterface;
use Chandra\Yii2Account\models\query\AccountQuery;
use Chandra\Yii2Account\traits\ModuleTrait;
use yii\authclient\ClientInterface as BaseClientInterface;
use yii\db\ActiveRecord;
use luya\admin\ngrest\base\NgRestModel;
use yii\helpers\Json;
use yii\helpers\Url;

/**
 * @property integer $id          Id
 * @property integer $user_id     User id, null if account is not bind to user
 * @property string  $provider    Name of service
 * @property string  $client_id   Account id
 * @property string  $data        Account properties returned by social network (json encoded)
 * @property string  $decodedData Json-decoded properties
 * @property string  $code
 * @property integer $created_at
 * @property string  $email
 * @property string  $username
 *
 * @property User    $user        User that this account is connected for.
 *
 * @author Dmitry Erofeev <dmeroff@gmail.com>
 */
class Account extends NgRestModel
{
    use ModuleTrait;

    /** @var */
    private $_data;

    public static function ngRestApiEndpoint()
    {
        return 'api-userauth-social_account';
    }

    /** @inheritdoc */
    public static function tableName()
    {
        return '{{%social_account}}';
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(get_class(\Yii::createObject(User::class)), ['id' => 'user_id']);
    }

    /**
     * @return bool Whether this social account is connected to user.
     */
    public function getIsConnected()
    {
        return $this->user_id != null;
    }

    /**
     * @return mixed Json decoded properties.
     */
    public function getDecodedData()
    {
        if ($this->_data == null) {
            $this->_data = Json::decode($this->data);
        }

        return $this->_data;
    }

    /**
     * Returns connect url.
     * @return string
     */
    public function getConnectUrl()
    {
        $code = \Yii::$app->security->generateRandomString();
        $this->updateAttributes(['code' => md5($code)]);

        return Url::to(['/user/registration/connect', 'code' => $code]);
    }

    public function connect(User $user)
    {
        return $this->updateAttributes([
            'username' => null,
            'email'    => null,
            'code'     => null,
            'user_id'  => $user->id,
        ]);
    }

    /**
     * @return AccountQuery|object
     */
    public static function find()
    {
        return \Yii::createObject(AccountQuery::class, [get_called_class()]);
    }

    public static function create(BaseClientInterface $client)
    {
        /** @var Account $account */
        $account = \Yii::createObject([
            'class'      => static::class,
            'provider'   => $client->getId(),
            'client_id'  => $client->getUserAttributes()['id'],
            'data'       => Json::encode($client->getUserAttributes()),
        ]);

        if ($client instanceof ClientInterface) {
            $account->setAttributes([
                'username' => $client->getUsername(),
                'email'    => $client->getEmail(),
            ], false);
        }

        if (($user = static::fetchUser($account)) instanceof User) {
            $account->user_id = $user->id;
        }

        $account->save(false);

        return $account;
    }

    /**
     * Tries to find an account and then connect that account with current user.
     *
     * @param BaseClientInterface $client
     */
    public static function connectWithUser(BaseClientInterface $client)
    {
        if (\Yii::$app->user->isGuest) {
            \Yii::$app->session->setFlash('danger', \Yii::t('user', 'Something went wrong'));

            return;
        }

        $account = static::fetchAccount($client);

        if ($account->user === null) {
            $account->link('user', \Yii::$app->user->identity);
            \Yii::$app->session->setFlash('success', \Yii::t('user', 'Your account has been connected'));
        } else {
            \Yii::$app->session->setFlash(
                'danger',
                \Yii::t('user', 'This account has already been connected to another user')
            );
        }
    }

    /**
     * Tries to find account, otherwise creates new account.
     *
     * @param BaseClientInterface $client
     *
     * @return Account
     * @throws \yii\base\InvalidConfigException
     */
    protected static function fetchAccount(BaseClientInterface $client)
    {
        /** @var Account $account */
        $account = \Yii::createObject(Account::class);
        $account = $account::find()->byClient($client)->one();

        if (null === $account) {
            $account = \Yii::createObject([
                'class'      => static::class,
                'provider'   => $client->getId(),
                'client_id'  => $client->getUserAttributes()['id'],
                'data'       => Json::encode($client->getUserAttributes()),
            ]);
            $account->save(false);
        }

        return $account;
    }

    /**
     * Tries to find user or create a new one.
     *
     * @param Account $account
     *
     * @return User|bool False when can't create user.
     */
    protected static function fetchUser(Account $account)
    {
        /** @var User $user */
        $user = \Yii::createObject(User::class);
        $user = $user::find()->byEmail($account->email)->one();

        if (null !== $user) {
            return $user;
        }

        $user = \Yii::createObject([
            'class'    => User::class,
            'scenario' => 'connect',
            'username' => $account->username,
            'email'    => $account->email,
        ]);

        if (!$user->validate(['email'])) {
            $account->email = null;
        }

        if (!$user->validate(['username'])) {
            $account->username = null;
        }

        return $user->create() ? $user : false;
    }
}
