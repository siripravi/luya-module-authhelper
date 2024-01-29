<?php

namespace app\blocks;

use luya\cms\base\PhpBlock;

use luya\cms\frontend\blockgroups\ProjectGroup;


/**
 * Section Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0-RC3.
 */
class SectionBlock extends PhpBlock
{
   
    /**
     * @var boolean Choose whether block is a layout/container/segmnet/section block or not, Container elements will be optically displayed
     * in a different way for a better user experience. Container block will not display isDirty colorizing.
     */
    public $isContainer = true;

    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = false;

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
        return 'Section Block';
    }

    /**
     * @inheritdoc
     */
    public function icon()
    {
        return 'cake';
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [
            'vars' => [
                ['var' => 'disableWrapper', 'label' => 'Disable wrapper', 'initvalue' => false, 'type' => self::TYPE_CHECKBOX],
                ['var' => 'useFlexContainer', 'label' => 'Flex Container', 'initvalue' => false, 'type' => self::TYPE_CHECKBOX],
            ],
            'cfgs' => [
                ['var' => 'htmlClass', 'label' => 'Wrapper Html-Klasse', 'initvalue' => null, 'type' => self::TYPE_TEXT],
                ['var' => 'containerHtmlClass', 'label' => 'Container Html-Klasse', 'initvalue' => 'container', 'type' => self::TYPE_TEXT],
            ],
            'placeholders' => [
                ['var' => 'elements', 'label' => 'Elemente', 'type' => self::TYPE_LIST_ARRAY],
            ],
        ];
    }

    /**
     * {@inheritDoc}
     *
     */
    public function admin()
    {
        return '';
    }
}
