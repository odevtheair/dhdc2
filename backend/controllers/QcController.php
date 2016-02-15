<?php

namespace backend\controllers;

//use backend\models\SysCheckProcess;
use backend\models\SysStoreProcErr;

class QcController extends \yii\web\Controller {

    protected function call($store_name, $arg = NULL) {
        $sql = "";
        if ($arg != NULL) {
            $sql = "call " . $store_name . "(" . $arg . ");";
        } else {
            $sql = "call " . $store_name . "();";
        }
        $this->exec_sql($sql);
    }

    protected function call2($store_name, $arg1 = NULL, $arg2 = NULL) {
        $sql = "";
        if ($arg1 != NULL and $arg2 != NULL) {
            $sql = "call  $store_name ($arg1,$arg2);";
        }
        $this->exec_sql($sql);
    }

    protected function exec_sql($sql) {
        $affect_row = \Yii::$app->db->createCommand($sql)->execute();
        return $affect_row;
    }

    public function actionIndex() {
        return $this->render('index');
    }

    public function actionExec() {

        $running = \backend\models\SysProcessRunning::find()->one();
        if ($running->is_running == 'false') {
            $this->call("start_process", NULL);
            $this->call("clear_qc", NULL);
            //$models=  SysStoreProcErr::find()->where(['note1' => 'err','note2'=>1])->all();
             $models=  SysStoreProcErr::find()->all();
             
            foreach ($models as $model) {
                 $this->call($model->spname, NULL);
                //echo $model->spname;
            }
          
            $this->call("end_process", NULL);
            return 'success';
        }else{
            return 'running';
        }
    }

}
