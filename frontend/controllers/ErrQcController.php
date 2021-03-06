<?php

namespace frontend\controllers;

use Yii;
use yii\filters\VerbFilter;

class ErrQcController extends \yii\web\Controller {

    public $enableCsrfValidation = false;

    public function behaviors() {

        $role = 0;
        if (!Yii::$app->user->isGuest) {
            $role = Yii::$app->user->identity->role;
        }
        $arr = [''];
        if ($role == 1) {
            $arr = ['index', 'check'];
        }
        if ($role == 2) {
            $arr = ['index', 'check'];
        }
        if ($role == 3) {
            $arr = ['index', 'check'];
        }

        return [
            'access' => [
                'class' => \yii\filters\AccessControl::className(),
                'denyCallback' => function ($rule, $action) {
                    throw new \yii\web\ForbiddenHttpException("ไม่ได้รับอนุญาต");
                },
                'only' => ['index', 'check'],
                'rules' => [
                    [
                        'allow' => true,
                        'actions' => $arr,
                        'roles' => ['?'],
                    ],
                    [
                        'allow' => true,
                        'actions' => $arr,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    public function actionIndex($filename = NULL, $hospcode = NULL,$from=NULL) {
        ini_set('max_execution_time', 0);   
        ini_set('memory_limit', '2048M');
        
        if (empty($filename)) {
            return $this->redirect(['site/index']);
        }
        $file = strtolower($filename);
        $sql = "select * from err_$file order by ERR_DATE DESC,BYEAR DESC";

        $pagination = ['pageSize' => 15];

        if (!empty($hospcode)) {
            $sql = "select * from err_$file where hospcode='$hospcode' order by ERR_DATE DESC,BYEAR DESC";
        }


        try {
            $rawData = \Yii::$app->db->createCommand($sql)->queryAll();
        } catch (\yii\db\Exception $e) {
            throw new \yii\web\ConflictHttpException('sql error');
        }

        if (!empty($rawData[0])) {
            $cols = array_keys($rawData[0]);
        }

        $dataProvider = new \yii\data\ArrayDataProvider([
            //'key' => 'hoscode',//
            'allModels' => $rawData,
            'sort' => !empty($cols) ? [ 'attributes' => $cols] : FALSE,
            'pagination' => $pagination,
        ]);
        return $this->render('index', [
                    'filename' => $filename,
                    'dataProvider' => $dataProvider,
                    'hospcode' => $hospcode,
                    'from'=>$from
        ]);
    }

}
