<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = ($status == 1) ? "Modificar Estudiante" : "Nuevo Estudiante";
$this->params["breadcrumbs"][] = ["label" => "Estudiantes", "url" => ["index"]];
$this->params["breadcrumbs"][] = $this->title;

$estado = ($status == 1) ? true : false;
$action = ($status == 1) ? "update" : "store";

$form = ActiveForm::begin([
    "method" => "post",
    "id" => "formulario",
    "enableClientValidation" => false,
    "enableAjaxValidation" => true,
    "action" => $action
]);
?>
<?= Yii::$app->view->renderFile("@app/views/errors/error.php", ["msg" => $msg, "error" => $error]) ?>
<div class="panel panel-primary">
    <div class="panel-heading">Nuevo Estudiante</div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <?php $bloqueado_estudiante = ($model->idestudiante != "") ? true : false; ?>
                    <?= $form->field($model, "idestudiante")->input("text", ["maxlength" => 15, "readonly" => $estado, "value" => $model->idestudiante, "autocomplete" => "off", "readonly" => $bloqueado_estudiante]) ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "nombre_estudiante")->input("text", ["maxlength" => 200, "autocomplete" => "off"]) ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "email")->input("email", ["maxlength" => 45, "autocomplete" => "off"]) ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "sexo")->dropDownList($sexo, ["prompt" => ""]) ?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "num_semestre")->dropDownList($num_semestre, ["prompt" => ""])?>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "idcarrera")->dropDownList($carrera, ["prompt" => ""]) ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "cve_estatus")->dropDownList($clave_estatus)?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <?= Html::submitInput("Guardar", ["class" => "btn btn-success"]) ?>
                    <?= Html::a("Regresar", ["estudiante/index"], ["class" => "btn btn-warning"]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $form->field($model, "estado")->hiddenInput(["value"=> $status])->label(false); ?>
<?= $form->field($model, "fecha_registro")->hiddenInput(["value" => ($model->fecha_registro == '') ? date('Y-m-d h:i:s') : $model->fecha_registro, "readonly" => true])->label(false) ?>
<?= $form->field($model, "fecha_actualizacion")->hiddenInput(["value" => ($model->idestudiante != '') ? date('Y-m-d h:i:s') : $model->fecha_actualizacion, "readonly" => true])->label(false) ?>
<?php $form->end() ?>