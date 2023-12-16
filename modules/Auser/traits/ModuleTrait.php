<?php


namespace chandra\user\traits;

use chandra\user\Module;

/**
 * Trait ModuleTrait
 * @property-read Module $module
 * @package chandra\user\traits
 */
trait ModuleTrait
{
    /**
     * @return Module
     */
    public function getModule()
    {
        return \Yii::$app->getModule('user');
    }
}
