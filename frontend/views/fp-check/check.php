<?php
/* @var $this yii\web\View */

?>
<h4>งานวางแผนครอบครัว</h4>

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
<b style="color: blue">ได้รับบริการวางแผนครอบครัว (<u>FP</u> + SERVICE + DIAGNOSIS_OPD)</b>
<?php
echo \kartik\grid\GridView::widget([
    'dataProvider' => $check,
    'summary' => "",
    'formatter' => ['class' => 'yii\i18n\Formatter', 'nullDisplay' => '-'],
    'columns' => [
        ['attribute' => 'AGE_M', 'header' => 'อายุ(เดือน)', 'contentOptions' => ['class' => 'text-center']],
        ['attribute' => 'VACCINETYPE', 'header' => 'รหัสวัคซีน', 'contentOptions' => ['class' => 'text-center']],
        ['attribute' => 'engvaccine', 'header' => 'ชื่อวัคซีน'],
        ['attribute' => 'DATE_SERV','header' => 'วันที่ได้รับ' ],
        ['attribute' => 'VACCINEPLACE', 'header' => 'ได้รับที่'],
        ['attribute' => 'HOSPCODE', 'header' => 'ผู้บันทึก'],
        ['attribute' => 'CC', 'header' => 'Cc'],
        ['attribute' => 'DX', 'header' => 'Dx'],
        ['attribute' => 'D_UPDATE', 'header' => 'อัพเดท',]
    ]

        /* 'panel' => [
          'before' => '',
          //'type' => \kartik\grid\GridView::TYPE_SUCCESS,

          ], */
]);
?>