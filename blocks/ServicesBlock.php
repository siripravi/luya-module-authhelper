<?php

namespace app\blocks;

use luya\cms\base\PhpBlock;
use luya\cms\frontend\blockgroups\ProjectGroup;

/**
 * Portfolio Block.
 *
 * File has been created with `block/create` command on LUYA version 1.0.0. 
 */
class ServicesBlock extends PhpBlock
{
    /**
     * @var string The module where this block belongs to in order to find the view files.
     */
   
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
        return 'Services';
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
        return [];
    }

    /**
     * @inheritDoc
     */
    public function extraVars()
    {
        return [];
    }

    /**
     * {@inheritDoc} 
     *
     * @param {{vars.elements}}
     */
    public function admin()
    {
        return '<h5 class="mb-3">Services</h5>';
    }

    /**
     * {@inheritdoc}
     */
    /* public function getViewPath()
    {
        return  dirname(__DIR__).'/src/views/blocks';
    }  */
}
