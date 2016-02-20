<?php
/* @var $this yii\web\View */
?>
<h4>งานวางแผนครอบครัว FP</h4>

<form method="POST">
    <input type="text" name="cid" id="cid" placeholder="กรอกเลข 13 หลัก" value="<?= isset($_GET['cid']) ? $_GET['cid'] : '' ?>" > 
    <button> ตรวจสอบ </button>
</form>

<?php
//print_r($data)
?>
<hr>
<b style="color: blue">ข้อมูลประชากร (<u>PERSON</u> + HOME)</b>
<?php
echo \kartik\grid\GridView::widget([
    'dataProvider' => $person,
    'summary' => "",
    'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
]);
?>
<b style="color: blue">ได้รับบริการวางแผนครอบครัว (<u>FP</u>)</b>
<?php
echo \kartik\grid\GridView::widget([
    'dataProvider' => $check,
    'summary' => "",
    'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
    

        /* 'panel' => [
          'before' => '',
          //'type' => \kartik\grid\GridView::TYPE_SUCCESS,

          ], */
]);
?>