<?php
/* @var $this yii\web\View */
$this->params['breadcrumbs'][] = 'ข้อมูลพื้นฐาน';
?>

<div class="alert alert-warning">
    <?php
    $model = frontend\models\SysEventLog::find()->orderBy('id DESC')->one();
    $last_process = '';
    if ($model->end_at != 'wait')
    $last_process = date_format(date_create($model->end_at), 'Y-m-d H:i:s');
    ?>
    ประมวลผล <?= $last_process ?>
</div>

<p>
    <?php
    echo \yii\helpers\Html::a('1) จำนวนประชากรแยกตามกลุ่มอายุ', ['base-data/pyramid']);    
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('2) จำนวนประชากรแยกตาม TYPEAREA', ['base-data/checktype']);    
    ?>
</p>

<p>
    <?php
    echo \yii\helpers\Html::a('3) จำนวนข้อมูลบริการ (SERVICE)', ['opd/report1']);    
    ?>
</p>





<div class="footerrow" style="padding-top: 60px">
    <div class="alert alert-success">
        
    </div>
</div>