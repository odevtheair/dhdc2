<?php

namespace backend\controllers;

use Yii;
use backend\models\ChospitalAmp;
use backend\models\SysCheckProcess;

class ExecuteController extends \yii\web\Controller {

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

    protected function query_all($sql) {
        $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        return $rawData;
    }

    protected function run_sys_count_all($ym) {

        $sql = "call cal_sys_count_all($ym)";
        $this->exec_sql($sql);
    }

    public function actionIndex() {
        $time = date('Y-m-d H:i:s');
        $chk_proc = SysCheckProcess::find()->one();
        $fnc_name = $chk_proc->fnc_name;
        $fnc_time = $chk_proc->time;


        $sql = "show processlist;";
        $rawData = $this->query_all($sql);

        $dataProvider = new \yii\data\ArrayDataProvider([
            // 'key' => 'hoscode',
            'allModels' => $rawData,
            'sort' => count($rawData) > 0 ? ['attributes' => array_keys($rawData[0])] : [],
            'pagination' => FALSE
        ]);

        if (Yii::$app->request->isPjax) {
            return $this->renderAjax('index', [
                        'dataProvider' => $dataProvider,
                        'sql' => $sql,
                        'time' => $time,
                        'fnc_name' => $fnc_name,
                        'fnc_time' => $fnc_time
            ]);
        }

        return $this->render('index', [
                    'dataProvider' => $dataProvider,
                    'sql' => $sql,
                    'time' => $time,
                    'fnc_name' => $fnc_name,
                    'fnc_time' => $fnc_time
        ]);
    }

    public function actionQc() {
        
    }

    public function actionProcessreport() {
        $running = \backend\models\SysProcessRunning::find()->one();

        if ($running->is_running == 'false') {
            
            //ใส่  store;
            $this->call("start_process", NULL);

            $this->call("merge_newborncare", NULL);
            $sql = "truncate sys_count_all";
            $this->exec_sql($sql);

            $month = \backend\models\SysMonth::find()->all();
            foreach ($month as $m) {
                if ($m->month <= date('Ym')) {
                    $this->run_sys_count_all($m->month);
                }
            }

            $bdg = '2014-09-30';
            $model = \backend\models\Sysconfigmain::find()->one();
            if ($model) {
                $bdg = $model->note2;
            }
            $bdg = "'" . $bdg . "'";

            $this->call("merge_newborncare", NULL);
            $this->call("clear_upload_error", NULL);
            $this->call("clear_null_hospcode", NULL);

           

            $this->call("cal_pyramid_level_1", $bdg);
            $this->call("cal_pyramid_level_2");
            $this->call("cal_pyramid_level_3");

            $this->call("cal_sys_person_type");

            $y = date('Y');
            $this->call("cal_count_service", $y - 1);
            $this->call("cal_count_service", $y);
           
            


            $this->call("end_process", NULL);
            
             $this->call('z_all', NULL);
            //
            //จบใส่ store
            
        }
    }

    public function actionTest() {

        $d = '2014-09-30';
        $d = "'" . $d . "'";
        $sql = " call cal_chart_dial_2($d)";
        $this->exec_sql($sql);
    }

    public function actionProcessJson() {
        $sql = " call api_step1_mob_raw_data";
        $this->exec_sql($sql);
    }

}
