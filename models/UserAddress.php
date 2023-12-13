<?php
namespace app\models;
use Yii;
use yii\db\ActiveRecord;

/**
 * This is the model class for table "user_address".
 * @author Albert Gainutdinov <xalbert.einsteinx@gmail.com>
 *
 * @property integer $id
 * @property integer $user_profile_id
 * @property string $country
 * @property string $region
 * @property string $city
 * @property string $house
 * @property string $apartment
 * @property integer $zipcode
 * @property integer $postoffice
 *
 * @property Profile $userProfile
 */
class UserAddress extends ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user_address';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_profile_id', 'zipcode'], 'integer'],
            [['country', 'region', 'city', 'street', 'house'], 'string', 'max' => 255],
            [['apartment'], 'string', 'max' => 11],
            [['user_profile_id'], 'exist', 'skipOnError' => true, 'targetClass' => Profile::class, 'targetAttribute' => ['user_profile_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'country' => Yii::t('app', 'Country'),
            'region' => Yii::t('app', 'Region'),
            'city' => Yii::t('app', 'City'),
            'house' => Yii::t('app', 'House'),
            'apartment' => Yii::t('app', 'Apartment'),
            'zipcode' => Yii::t('app', 'Zip-Code'),
            'post-office' => Yii::t('app', 'Post office')
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUserProfile()
    {
        return $this->hasOne(Profile::class, ['id' => 'user_profile_id']);
    }
}