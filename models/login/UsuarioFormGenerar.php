<?php

namespace app\models\login;

use Yii;
use yii\base\Model;
use app\models\login\Usuario;

class UsuarioFormGenerar extends Model
{
    public $curp;

    public function rules()
    {
        return [
            [["curp"], "required", "message" => "Requerido"],
        ];
    }

    public function attributeLabels()
    {
        return [
            "curp" => "Password"
        ];
    }
}