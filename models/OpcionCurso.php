<?php

namespace app\models;
use Yii;
use yii\db\ActiveRecord;

class OpcionCurso extends ActiveRecord
{
    public static function getDb()
    {
        return Yii::$app->db;
    }

    public static function tableName()
    {
        return "cat_opcion_curso";
    }
}