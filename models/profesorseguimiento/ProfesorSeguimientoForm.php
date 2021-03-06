<?php

namespace app\models\profesorseguimiento;

use Yii;
use yii\base\Model;

class ProfesorSeguimientoForm extends Model
{
    public $idseguimiento;
    public $idciclo;
    public $idprofesor;
    public $seguimiento;
    public $bandera;

    public function rules()
    {
        return [
            [["idseguimiento", "idciclo", "idprofesor", "seguimiento", "bandera"], "required"],
            [["idseguimiento", "idciclo", "idprofesor", "seguimiento", "bandera"], "integer"]
        ];
    }

    public function attributeLabels()
    {
        return [

        ];
    }
}