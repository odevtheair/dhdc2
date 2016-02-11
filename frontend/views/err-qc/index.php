<?php
/* @var $this yii\web\View */
use yii\helpers\ArrayHelper;
use frontend\models\ChospitalAmp;
use yii\helpers\Html;

$this->params['breadcrumbs'][] = 'ERROR แฟ้ม '.$filename;
?>
<div class="well">
 <form method="POST">       
<!--        <input type="text" name="hospcode" placeholder="รหัสสถานบริการ" maxlength="5" size="15" >  -->
        <?php
        $items = ArrayHelper::map(ChospitalAmp::find()->all(), 'hoscode', 'fullname');
        echo Html::dropDownList('hospcode', NULL, $items, ['prompt' => '--- หน่วยบริการ ---']);
        ?>
     <button class='btn btn-danger'> ตกลง </button>
 </form>
</div>
<div>
    <?php
    echo \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
         'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
        'hover' => true,
        //'floatHeader' => true,
        'panel' => [
            'before' => '',
            'type' => \kartik\grid\GridView::TYPE_DANGER,
            
        ],
    ]);
    ?>
</div>