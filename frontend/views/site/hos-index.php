<?php

use miloschuman\highcharts\Highcharts;
use yii\data\Pagination;
use yii\helpers\Html;

$this->title = "District Health Data Checker";
$this->params['breadcrumbs'][] = 'คุณภาพข้อมูลรายหน่วยบริการ';
?>

<div>
    <?php
    echo \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
        'hover' => true,
        //'pjax' => true,
        'containerOptions' => ['style' => 'overflow: auto'],
        'responsive' => FALSE,
        //'floatHeader' => true,
        'panel' => [
            'before' => '',
            'type' => \kartik\grid\GridView::TYPE_DANGER,
        ],
        'columns' => [
            [
                'attribute' => 'HOSPCODE',
                'format'=>'raw',
                'label' => 'รหัส',
                'value'=> function($data){
                    return Html::a($data['HOSPCODE'], ['site/hos-file','hospcode'=>$data['HOSPCODE']]);
                }
            ],
            ['attribute' => 'HOSPNAME', 'label' => 'หน่วยบริการ'],
            ['attribute' => 'TOTAL'],
            ['attribute' => 'ERR'],
            ['attribute' => 'QC', 'label' => 'คุณภาพ'],
        ]
    ]);
    ?>
</div>