 <?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

$this->title = ($status == 1) ? "Modificar Usuario" : "Nuevo Usuario";
$this->params["breadcrumbs"][] = ["label" => "Usuario", "url" => ["index"]];
$this->params["breadcrumbs"][] = $this->title;

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
    <div class="panel-heading"><?= $this->title ?></div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <?= $form->field($model, "email")->input("email", ["maxlength" => 100, "autocomplete" => "off"]) ?>
                </div>
            </div>
            <div class="form-group col-md-4">
                <?= $form->field($model, "curp")->input("text", ["maxlength" => 20, "autocomplete" => "off"]) ?>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                <?= $form->field($model, "cve_estatus")->dropDownList($clave_estatus)?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                <?= $form->field($model, "idrol")->dropDownList($roles)?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <?= Html::submitInput("Guardar", ["class" => "btn btn-success"]) ?>
                    <?= Html::a("Regresar", ["usuario/index"], ["class" => "btn btn-warning"]) ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $form->field($model, "estado")->hiddenInput(["value"=> $status, "readonly" => true])->label(false) ?>
<?= $form->field($model, "fecha_registro")->hiddenInput(["value" => ($model->fecha_registro != '') ? $model->fecha_registro : '', "readonly" => true])->label(false) ?>
<?= $form->field($model, "fecha_actualizacion")->hiddenInput(["value" => ($model->idusuario != '') ? '' : $model->fecha_actualizacion, "readonly" => true])->label(false) ?>
<?php $form->end() ?>