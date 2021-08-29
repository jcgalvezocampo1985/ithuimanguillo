<?php

namespace app\models;

use Yii;
use yii\base\model;
use app\models\Estudiante;

class EstudianteForm extends model
{
    public $idestudiante;
    public $nombre_estudiante;
    public $email;
    public $sexo;
    public $idcarrera;
    public $num_semestre;
    public $fecha_registro;
    public $fecha_actualizacion;
    public $cve_estatus;
    public $estado;

    public function rules()
    {
        return [
            [['idestudiante', 'nombre_estudiante', 'email', 'sexo', 'num_semestre', 'fecha_registro', 'cve_estatus', 'idcarrera'], 'required', 'message' => 'Requerido'],
            ['idestudiante', 'match', 'pattern' => "/^.[0-9A-Za-z]+$/i", 'message' => 'Sólo valores alfanuméricos'],
            ['idestudiante', 'string', 'min' => 3, 'max' => 15, 'tooShort' => 'Mínimo 3 caracteres', 'tooLong' => 'Máximo 15 caracteres'],
            ['idestudiante', 'idestudiante_existe'],
            ['nombre_estudiante', 'match', 'pattern' => "/^.[a-zA-ZáéíóúÁÉÍÓÚ\s]+$/i", 'message' => 'Sólo letras'],
            ['nombre_estudiante', 'string', 'min' => 3, 'max' => 200, 'tooShort' => 'Mínimo 3 caracteres', 'tooLong' => 'Máximo 200 caracteres'],
            ['email', 'email', 'message' =>'Formato no válido'],
            ['email', 'string', 'min' => 10, 'max' => 45, 'tooShort' => 'Mínimo 10 caracteres', 'tooLong' => 'Máximo 45 caracteres'],
            ['email', 'email_existe'],
            ['sexo', 'match', 'pattern' => "/^[a-zA-z]+$/i", 'message' => 'Sólo letras'],
            ['num_semestre', 'string', 'min' => 1, 'max' => 1, 'tooShort' => 'Mínimo 1 caracter', 'tooLong' => 'Máximo 1 caracter'],
            ['num_semestre', 'integer', 'message' => 'Sólo números'],
            ['num_semestre', 'string', 'min' => 1, 'max' => 2, 'tooShort' => 'Mínimo 1 caracter', 'tooLong' => 'Máximo 2 caracteres'],
            ['fecha_registro', 'string', 'min' => 10, 'max' => 19, 'tooShort' => 'Mínimo 10 caracteres', 'tooLong' => 'Máximo 19 caracteres'],
            //['fecha_registro', 'date', 'format' => 'yyyy', 'message' => 'Requerido'],
            //['fecha_actualizacion', 'required', 'message' => 'Requerido'],
            ['idcarrera', 'integer', 'message' => 'Sólo números']
        ];
    }

    public function attributeLabels()
    {
        return [
            'idestudiante' => 'No. Control',
            'nombre_estudiante' => 'Nombre',
            'email' => 'Email',
            'sexo' => 'Sexo',
            'num_semestre' => 'Semestre',
            'fecha_registro' => 'Fecha Registro',
            'fecha_actualizacion' => 'Fecha Actuaización',
            'cve_estatus' => 'Clave Status',
            'idcarrera' => 'Carrera',
        ];
    }

    public function email_existe($attribute, $params)
    {
        //Buscar el email en la tabla
        $table = Estudiante::find()->where("email=:email", [":email" => $this->email]);
        //Si el email existe mostrar el error
        if ($this->estado === false)
        {
            if ($table->count() === 1)
            {
                $this->addError($attribute, "El email ingresado ya existe");
            }
        }
    }

    
    public function idestudiante_existe($attribute, $params)
    {
        $table = Estudiante::find()->where("idestudiante=:idestudiante", [":idestudiante" => $this->idestudiante]);

        if($this->estado === 1)
        {

        }
        else
        {
            if ($table->count() >= 1)
            {
                $this->addError($attribute, "El No. Control ingresado ya existe");
            }
        }
    }
}