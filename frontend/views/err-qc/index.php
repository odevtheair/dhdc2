<?php
/* @var $this yii\web\View */

use yii\helpers\ArrayHelper;
use frontend\models\ChospitalAmp;
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\Url;

$this->params['breadcrumbs'][] = 'ERROR แฟ้ม ' . $filename;
?>
<div class="well">
    <?php
    ActiveForm::begin([
        'method' => 'get',
        'action' => Url::to(['err-qc/index']),
    ]);
    ?>
    <input type="hidden" name="filename" value="<?= $filename ?>"/>
    <?php
    $items = ArrayHelper::map(ChospitalAmp::find()->all(), 'hoscode', 'fullname');

    echo Html::dropDownList('hospcode', $hospcode, $items, ['prompt' => '--- หน่วยบริการ ---']);
    ?>

    <?php
    echo Html::submitButton(' ตกลง ', ['class' => 'btn btn-danger']);
    ActiveForm::end();
    ?>
</div>
<div>
    <?php
    
    echo \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
        'hover' => true,
        'pjax' => true,
        'containerOptions' => ['style'=>'overflow: auto'],
        'responsive' => FALSE,
        //'floatHeader' => true,
        'panel' => [
            'before' => '',
            'type' => \kartik\grid\GridView::TYPE_DANGER,
        ],
    ]);
   
    ?>
</div>
<div><a href="err_code.xls">ERROR_CODE</a></div>