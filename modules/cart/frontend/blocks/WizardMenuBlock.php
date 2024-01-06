<?php
namespace app\modules\cart\frontend\blocks;

use luya\cms\base\PhpBlock;
use app\modules\cart\models\Cart;
use siripravi\catalog\models\Article;
use luya\helpers\ArrayHelper;
use luya\admin\filters\MediumCrop;
use siripravi\catalog\frontend\blockgroups\BlockCollectionGroup;
use yii\data\ActiveDataProvider;
use yii\widgets\Menu;

/**
 * WizardMenu class.
 * Creates a menu from the wizard steps.
 */
class WizardMenuBlock extends PhpBlock
{
    public $module = 'cart';
     /**
     * @var boolean Choose whether block is a layout/container/segmnet/section block or not, Container elements will be optically displayed
     * in a different way for a better user experience. Container block will not display isDirty colorizing.
     */
    //  public $isContainer = true;

    /**
     * @var bool Choose whether a block can be cached trough the caching component. Be carefull with caching container blocks.
     */
    public $cacheEnabled = false;

    /**
     * @var int The cache lifetime for this block in seconds (3600 = 1 hour), only affects when cacheEnabled is true
     */
    public $cacheExpiration = 3600;
    /**
     * @var string The CSS class for the current step
     */
    public $currentStepCssClass = 'current-step';
    /**
     * @var array The item to be shown to indicate completion of the wizard.
     * e.g. ['label' => 'Done', 'url' => null]
     */
    public $finalItem;
    /**
     * @var string The CSS class for future steps
     */
    public $futureStepCssClass = 'future-step';
    /**
     * @var string The CSS class for past steps
     */
    public $pastStepCssClass = 'past-step';
    /**
     * @var string The current step
     */
    public $step;
    /**
     * @var \beastbytes\wizard\WizardBehavior The Wizard
     */
    public $wizard;

    /**
     * Initialise the widget
     * echo WizardMenu::widget(['step' => $event->step, 'wizard' => $event->sender]);
     */
    public function init()
    {
      /*  $route  = ['/'.$this->wizard->owner->route];
        $params = $this->wizard->owner->actionParams;
        $steps  = $this->wizard->steps;
        $index  = array_search($this->step, $steps);

        foreach ($steps as $step) {
            $stepIndex = array_search($step, $steps);
            $params[$this->wizard->queryParam] = $step;

            if ($stepIndex == $index) {
                $active = true;
                $class  = $this->currentStepCssClass;
                $url    = array_merge($route, $params);
            } elseif ($stepIndex < $index) {
                $active = false;
                $class  = $this->pastStepCssClass;
                $url    = ($this->wizard->forwardOnly
                    ? null : array_merge($route, $params)
                );
            } else {
                $active = false;
                $class  = $this->futureStepCssClass;
                $url    = null;
            }

            $this->items[] = [
                'label'   => $this->wizard->stepLabel($step),
                'url'     => $url,
                'active'  => $active,
                'options' => compact('class')
            ];

            if (!empty($this->finalItem)) {
                $this->items[] = $this->finalItem;
            }
        } */
    }

    /**
     * @inheritDoc
     */
    public function name()
    {
        return 'Checkout Wizard';
    }

    /**
     * @inheritDoc
     */
    public function icon()
    {
        return 'local_mall'; // see the list of icons on: https://design.google.com/icons/
    }

    /**
     * @inheritDoc
     */
    public function config()
    {
        return [
         /*   'placeholders' => [
                ['var' => 'elements', 'label' => 'Elemente', 'type' => self::TYPE_LIST_ARRAY],
            ],*/
        ];
    }

    /**
     * {@inheritDoc}
     *
     */
    public function admin()
    {
        return '<p>Checkout Wizard</p>';
    }

}