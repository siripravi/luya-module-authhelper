<?php

namespace app\blocks;

use luya\cms\base\PhpBlock;
use luya\cms\helpers\BlockHelper;
use luya\cms\models\NavContainer;
use luya\cms\frontend\blockgroups\ProjectGroup;


/**
 * Menu Block.
 *
 * File has been created with `block/create` command. 
 */
class MenuBlock extends PhpBlock
{
  
    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = true;

    /**
     * @var int The cache lifetime for this block in seconds (3600 = 1 hour), only affects when cacheEnabled is true
     */
    public $cacheExpiration = 3600;

    /**
     * @inheritDoc
     */
    public function blockGroup()
    {
        return ProjectGroup::class;
    }

    /**
     * @inheritDoc
     */
    public function name()
    {
        return 'Menu Block';
    }

    /**
     * @inheritDoc
     */
    public function icon()
    {
        return 'cake'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        $containers = NavContainer::ngRestFind()->asArray()->select(['label' => 'name', 'value' => 'alias'])->all();
        return [
            'vars' => [
                ['var' => 'container', 'label' => 'Container', 'type' => self::TYPE_SELECT, 'options' => BlockHelper::selectArrayOption($containers)],
            ],
        ];
    }

    /**
     * {@inheritDoc} 
     *
     * @param {{vars.container}}
     */
    public function admin()
    {
        return '<h5 class="mb-3">Menu Block</h5>' .
            '<table class="table table-bordered">' .
            '{% if vars.container is not empty %}' .
            '<tr><td><b>Container</b></td><td>{{vars.container}}</td></tr>' .
            '{% endif %}' .
            '</table>';
    }

    /**
     * @inheritdoc
     */
    public function extraVars()
    {
        \Yii::$app->menu->findAll(['depth' => 1, 'container' => 'default']);
        return [
            'menuItems' => \Yii::$app->menu->find()->container($this->getVarValue('container'))->all(),
        ];
    }
}
