<?php
namespace app\controllers;

use yii\web\Controller;

class MapController extends Controller
{
    public function actionIndex()
    {
        return $this->render('map');
    }
}