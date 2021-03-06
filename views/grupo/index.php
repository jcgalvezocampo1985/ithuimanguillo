<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\Url;
use yii\widgets\LinkPager;

$this->title = "Grupo";
$this->params["breadcrumbs"][] = $this->title;
?>
<?= Yii::$app->view->renderFile("@app/views/errors/error.php", ["msg" => $msg, "error" => $error]) ?>
<div class="panel panel-primary">
    <div class="panel-heading">Grupos</div>
    <div class="panel-body">
        <div class="col-md-4">
            <?php
                $f = ActiveForm::begin([
                    "method" => "get",
                    "action" => Url::toRoute("grupo/index"),
                    "enableClientValidation" => true
                ]);
            ?>
                <?= $f->field($form, "buscar")->input("search", ["class" => "form-control", "placeholder" => "Buscar..."]) ?>
                <?= Html::submitButton("Buscar", ["class" => "btn btn-primary"]) ?>
                <?= Html::a("Refrescar", ["grupo/index"], ["class" => "btn btn-info"]) ?>
                <?= Html::a("Nuevo Grupo", ["grupo/create"], ["class" => "btn btn-info"]) ?>
            <?php $f->end() ?>
        </div>
        <div class="col-md-12">
            <hr width="100%">
            <div class="table-responsive">
                <table class="table table-striped" id="tabla">
                    <thead>
                        <tr>
                            <th>Ciclo</th>
                            <th>Carrera</th>
                            <th>Materia</th>
                            <th>Créditos</th>
                            <th>Profesor</th>
                            <th>No. Semestre</th>
                            <th>Grupo</th>
                            <th>Aula</th>
                            <th>Fecha Envío Acta</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach($model as $row):
                        ?>
                        <tr>
                            <td><?= $row["ciclo"] ?></td>
                            <td><?= $row["carrera"] ?></td>
                            <td><?= $row["materia"] ?></td>
                            <td><?= $row["creditos"] ?></td>
                            <td><?= $row["profesor"] ?></td>
                            <td><?= $row["num_semestre"] ?></td>
                            <td><?= $row["desc_grupo_corto"] ?></td>
                            <td><?= $row["aula"] ?></td>
                            <td><?= $row["fecha_envio_acta"] ?></td>
                            <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-info btn-xs dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                    </button>
                                    <ul class="dropdown-menu pull-right">
                                        <li><?= Html::a("Estudiantes", ["/grupo/grupoalumnos=".$row["idgrupo"]."=".$row["idcarrera"]], ["class" => "idgrupo", "data-toggle" => "modal", "data-target" => "#grupos"]) ?></li>
                                        <li><?= Html::a("Generar Acta", ["/grupo/generaracta=".$row["idgrupo"]], ["class" => "idgrupo"]) ?></li>
                                        <li><?= Html::a("Modificar", ["/grupo/edit?id=".$row["idgrupo"]]) ?></li>
                                        <li><?= Html::a("Eliminar", ["#"], ["data-toggle" => "modal", "data-target" => "#idgrupo_".$row["idgrupo"].""]) ?></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <div class="modal fade" id="idgrupo_<?= $row["idgrupo"] ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Eliminar registro</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="alert alert-danger" role="danger">
                                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                            <span class="sr-only">Mensaje:</span>
                                            ¿Desea eliminar el grupo <?= $row["desc_grupo"] ?>?
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <?= Html::beginForm(Url::toRoute("grupo/delete"), "POST") ?>
                                            <input type="hidden" name="idgrupo" value="<?= $row["idgrupo"] ?>">
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                                            <button type="submit" class="btn btn-danger">Eliminar</button>
                                        <?= Html::endForm() ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="grupos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg modal_ancho">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="classModalLabel">Estudiantes</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div id="lista_alumnos"></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<?= LinkPager::widget(["pagination" => $pages]); ?>
<?php
$this->registerCss("
    .table-responsive{
        overflow-y: visible !important;
    }
    @media (max-width: 767px){
        .table-responsive .dropdown-menu{
            position: static !important;
        }
    }
    @media (min-width: 768px){
        .table-responsive{
            overflow: inherit;
        }
    }
");
?>
<?= Yii::$app->view->renderFile("@app/views/grupo/scriptsIndex.php") ?>