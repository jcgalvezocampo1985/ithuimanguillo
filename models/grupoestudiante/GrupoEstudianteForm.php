<?php

namespace app\models\grupoestudiante;

use Yii;
use yii\base\Model;

class GrupoEstudianteForm extends Model
{
    public $idgrupo;
    public $idestudiante;
    public $idopcion_curso;
    public $idciclo;
    public $idgrupoidestudiante;
    public $idmateria;
    public $p1;
    public $p2;
    public $p3;
    public $p4;
    public $p5;
    public $p6;
    public $p7;
    public $p8;
    public $p9;
    public $s1;
    public $s2;
    public $s3;
    public $s4;
    public $s5;
    public $s6;
    public $s7;
    public $s8;
    public $s9;
    public $sp1;
    public $sp2;
    public $sp3;
    public $sp4;
    public $sp5;
    public $sp6;
    public $sp7;
    public $sp8;
    public $sp9;
    public $cve_estatus;

    public function rules()
    {
        return [
            [["idgrupo", "idestudiante", "idopcion_curso", "idciclo"], "required", "message" => "Requerido"],
            [["p1","p2","p3","p4","p5","p6","p7","p8","p9",
              "s1","s2","s3","s4","s5","s6","s7","s8","s9",
              "sp1","sp2","sp3","sp4","sp5","sp6","sp7","sp8","sp9"], "pattern" => "/^.[0-9]+$/i", "message" => "Sólo valores alfanuméricos"]
        ];
    }

    public function attributeLabels()
    {
        return [
            "idgrupo" => "Materia",
            "idestudiante" => "Estudiante",
            "idopcion_curso" => "",
            "idciclo" => "Ciclo"
        ];
    }
}