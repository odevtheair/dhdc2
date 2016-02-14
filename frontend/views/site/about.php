<?php

use yii\helpers\Html;
use backend\models\Sysconfigmain;

/* @var $this yii\web\View */
$this->title = 'เกียวกับ';
$this->params['breadcrumbs'][] = $this->title;
$sys = Sysconfigmain::find()->one();
?>
<div class="site-about">
    <h1>ผู้ดูแลระบบ</h1>
    <p>- <?= $sys->note1 ?></p>
</div>
<hr>
<div class="site-about">
    <h3>เกี่ยวกับโปรแกรม DHDC (District Health Data Checker)</h3>
    <p>-พัฒนาโดย งานเทคโนโลยีสารสนเทศ สสจ.พิษณุโลก โทร 055 252052 ต่อ 454-5</p>
    <p>-Developer : นายอุเทน จาดยางโทน โทร 081-2841147</p>
    <p>-&copy; สงวนลิขสิทธิ์ SOURCECODE ส่วนการทำงานนำเข้าไฟล์ 43 แฟ้ม</p>

  
</div>
<div>
    <?= Html::a('กลุ่ม Facebook DHDC', 'https://www.facebook.com/groups/1533692120236074/', ['target' => '_blank']) ?>
</div>

<!--<div>
    <?= Html::a('Source Code', 'https://github.com/utehnphnu2015/', ['target' => '_blank']) ?>
</div>-->

