<?php

namespace app\models\login;
use Yii;
use yii\db\ActiveRecord;

class UsuarioRol extends ActiveRecord{
    
    public static function getDb()
    {
        return Yii::$app->db;
    }
    
    public static function tableName()
    {
        return 'roles_usuarios';
    }
    
}