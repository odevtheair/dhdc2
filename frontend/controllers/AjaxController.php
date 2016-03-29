<?php

namespace frontend\controllers;

use yii;
use yii\helpers\Html;
use yii\helpers\FileHelper;
use frontend\models\UploadFortythree;
use frontend\models\SysCountImport;

class AjaxController extends \yii\web\Controller {

    protected function deleteDirectory($dir) {
        if (!file_exists($dir)) {
            return true;
        }

        if (!is_dir($dir)) {
            return unlink($dir);
        }

        foreach (scandir($dir) as $item) {
            if ($item == '.' || $item == '..') {
                continue;
            }

            if (!$this->deleteDirectory($dir . DIRECTORY_SEPARATOR . $item)) {
                return false;
            }
        }

        return rmdir($dir);
    }

    protected function loaddata($txtfile, $table, $zip_file_name, $stat = 1) {

        $transaction = \Yii::$app->db->beginTransaction();
        try {
            //raw
            $sql = "LOAD DATA LOCAL INFILE '$txtfile'";
            $sql.= " REPLACE INTO TABLE $table";
            $sql.= " FIELDS TERMINATED BY '|'  LINES TERMINATED BY '\r\n' IGNORE 1 LINES";
            $raw = \Yii::$app->db->createCommand($sql)->execute();

            if ($stat == 1) {
                //tmp                        
                $sql = "LOAD DATA LOCAL INFILE '$txtfile'";
                $sql.= " REPLACE INTO TABLE dhdc_tmp_$table";
                $sql.= " FIELDS TERMINATED BY '|'  LINES TERMINATED BY '\r\n' IGNORE 1 LINES";
                $sql.= " SET NOTE1='$zip_file_name',NOTE2=NOW()";
                $tmp = \Yii::$app->db->createCommand($sql)->execute();

                // count
                $sql = " REPLACE  INTO sys_count_import_file  (
                                 SELECT IF(NOTE1 is NULL,'$zip_file_name','$zip_file_name'),'$table',COUNT(*),NOW(),'','','' FROM dhdc_tmp_$table
                                 WHERE NOTE1 = '$zip_file_name'
                            );  ";
                \Yii::$app->db->createCommand($sql)->execute();

                $sql = "DELETE FROM dhdc_tmp_$table WHERE NOTE1 = '$zip_file_name' ";
                \Yii::$app->db->createCommand($sql)->execute();
            }

            $transaction->commit();
        } catch (Exception $e) {
            $transaction->rollBack();
        }
    }

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionImport($fortythree, $upload_date, $upload_time, $id) {

        ini_set('max_execution_time', 0);

        $zip = new \ZipArchive();

        if (strncasecmp(PHP_OS, 'WIN', 3) === 0) {
            $path_zip = 'fortythree';
            $path_unzip = 'unzip';
        } else {
            $path_zip = \Yii::getAlias('@webroot') . "/fortythree/";
            $path_unzip = \Yii::getAlias('@webroot') . "/unzip/";
        }

        $model = UploadFortythree::findOne($id);
        $model->note2 = 'กำลังนำเข้า';
        $model->update();

        $file_zip = $path_zip . '/' . $fortythree;
        $zip_file_name = basename($file_zip);

        if ($zip->open($file_zip) === TRUE) {
            $path_unzip_ = $path_unzip . '/' . basename($file_zip);
            $zip->extractTo($path_unzip_);
            $zip->close();
        }
        // อ่านไฟล์และนำเข้า

        $txtFiles = FileHelper::findFiles($path_unzip_, [
                    'only' => ['*.txt', '*.TXT'],
                    'recursive' => TRUE,
        ]);

        foreach ($txtFiles as $file) {

            $info = pathinfo($file);

            $table = strtolower($info['filename']);
            //echo "\t reading..." . $table . "\r\n";

            $file = str_replace("\\", "/", $file);
            $model->note3 = basename($file);

            $model->update();
            // importing
            $this->loaddata($file, $table, $zip_file_name, 1);
            // end importing
            unlink($file);
        }

        $this->deleteDirectory($path_unzip_);
        unlink($file_zip);

        //จบอ่านและนำเข้า
        $model->note3 = '';
        $model->note2 = 'OK';
        $model->update();

        return $fortythree;
    }

    public function actionImportAll($fortythree, $upload_date, $upload_time) {

        ini_set('max_execution_time', 0);

        $zip = new \ZipArchive();

        if (strncasecmp(PHP_OS, 'WIN', 3) === 0) {
            $path_zip = 'fortythree';
            $path_unzip = 'unzip';
        } else {
            $path_zip = \Yii::getAlias('@webroot') . "/fortythree/";
            $path_unzip = \Yii::getAlias('@webroot') . "/unzip/";
        }

        $file_zip = $path_zip . '/' . $fortythree;
        $file_size = number_format(filesize($file_zip) / (1024 * 1024), 3);
        $zip_file_name = basename($file_zip);

        if ($zip->open($file_zip) === TRUE) {
            $path_unzip_ = $path_unzip . '/' . basename($file_zip);
            $zip->extractTo($path_unzip_);
            $zip->close();
        }
        // อ่านไฟล์และนำเข้า

        $txtFiles = FileHelper::findFiles($path_unzip_, [
                    'only' => ['*.txt', '*.TXT'],
                    'recursive' => TRUE,
        ]);

        foreach ($txtFiles as $file) {

            $info = pathinfo($file);

            $table = strtolower($info['filename']);
            //echo "\t reading..." . $table . "\r\n";

            $file = str_replace("\\", "/", $file);

            // importing
            $this->loaddata($file, $table, $zip_file_name, 0);
            // end importing
            unlink($file);
        }

        $this->deleteDirectory($path_unzip_);
        unlink($file_zip);

        //จบอ่านและนำเข้า

        $upload = new UploadFortythree;
        $upload->file_name = $fortythree;
        $upload->file_size = $file_size;
        $upload->upload_date = date('Y-m-d');
        $upload->upload_time = date('H:i:s');
        $upload->note2 = 'OK';
        $upload->note3 = 'import all';
        $upload->save();

        return $fortythree;
    }

    public function actionTruncate() {
        ini_set('max_execution_time', 0);
        if (!\Yii::$app->user->isGuest) {
            $user = Html::encode(Yii::$app->user->identity->username);
            if ($user === 'admin') {
                
                $model = \frontend\models\SysFiles::find()->asArray()->all();
                foreach ($model as $m) {
                    $table = $m['file_name'];
                    $sql = "truncate $table";
                    \Yii::$app->db->createCommand($sql)->execute();

                    $sql = "truncate tmp_$table";
                    \Yii::$app->db->createCommand($sql)->execute();

                    echo $sql . "<br>";
                }

                \Yii::$app->db->createCommand("truncate sys_upload_fortythree;")->execute();
                \Yii::$app->db->createCommand("truncate sys_count_import;")->execute();
                \Yii::$app->db->createCommand("truncate  sys_count_import_file;")->execute();
            }
        }
    }

    public function actionUpdate() {
        ini_set('max_execution_time', 0);
        if (!\Yii::$app->user->isGuest) {
            $user = Html::encode(Yii::$app->user->identity->username);
            if ($user === 'admin') {
                //return;
                $sql = " select table_name from information_schema.tables  "
                        . " where table_schema='dhdc' AND TABLE_NAME like 'tmp_%'; ";
                $raw = \Yii::$app->db->createCommand($sql)->queryAll();
                //\yii\helpers\VarDumper::dump($raw);
                foreach ($raw as $tb) {
                    $old = $tb['table_name'];
                    $new = "dhdc_" . $old;
                    $sql = " RENAME TABLE $old TO $new ";
                    \Yii::$app->db->createCommand($sql)->execute();
                    echo $sql; echo "<br>";
                }
                $sql = "CALL zz_update_upload_log;";
                \Yii::$app->db->createCommand($sql)->execute();
                echo 'update success.';
            }
        }
    }

}
