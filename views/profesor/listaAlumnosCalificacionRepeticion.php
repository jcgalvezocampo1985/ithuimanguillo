<?php

use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\helpers\Url;

$r = $_GET["r"];
$url = ($r == "true") ? "horario" : "horarioconsulta";

if($idciclo != $ultimo_ciclo || $regularizacion_status == 0){
    header("Location: ".Url::toRoute("/profesor/".$url."?idgrupo=$idgrupo&idciclo=$idciclo&idprofesor=$idprofesor"));
    exit;
}

function promedioTotal(array $parciales)
{
    $total_parciales = 0;
    $suma_calificaciones = 0;

    for($i = 0; $i < count($parciales); $i++)
    {
        $parcial = $parciales[$i];
        if (is_numeric($parcial) || $parcial == "NA")
        {
            $suma_calificaciones = $suma_calificaciones + $parcial;
            $total_parciales = $total_parciales + 1;
        }
    }

    $promedio_p = ($total_parciales > 0) ? round($suma_calificaciones / $total_parciales, 0) : "";

    return $promedio_p;
}

$form = ActiveForm::begin([
    "method" => "post",
    "id" => "formulario",
    "action" => "guardarcalificacionregularizacion"
]);
?>
<div class="panel panel-primary">
    <div class="panel-heading">Captura de calificaciones de regularización</div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-4">
                <h4>Carrera: <small><?= $model1[0]['desc_carrera'] ?></small></h4>
            </div>
            <div class="col-md-2">
                <h4>Grupo: <small><?= $model1[0]['desc_grupo'] ?></small></h4>
            </div>
            <div class="col-md-3">
                <h4>Profesor: <small><?= $model1[0]['profesor'] ?></small></h4>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <h4>Matería: <small><?= $model1[0]['desc_materia'] ?></small></h4>
            </div>
            <div class="col-md-2">
                <h4>Semestre: <small><?= $model1[0]['num_semestre'] ?></small></h4>
            </div>
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <input type="submit" class="btn btn-success" name="guardar" id="guardar" value="Guardar" />
                <?= Html::a("Regresar", ["profesor/".$url."?idciclo=".$idciclo."&idprofesor=".$idprofesor], ["class" => "btn btn-primary", "id" => "regresar"]) ?>
                <?= Html::a("Refrescar", ["profesor/listaalumnoscalificacionregularizacion?idgrupo=$idgrupo&idciclo=$idciclo&idprofesor=$idprofesor&ultimo_ciclo=$ultimo_ciclo&r=".$r], ["class" => "btn btn-info", "id" => "refrescar"]) ?>
                <?= Html::a("Reporte Calificaciones", ["reporte/listaalumnoscalificacion?idgrupo=".$idgrupo."&idciclo=".$idciclo], ["target" => "_parent", "class" => "btn btn-warning"]) ?>
            </div>
        </div>
        <hr width="100%">
        <div id="mensaje_error">
            <div class="alert" role="warning" id="alerta">
                <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                <span class="sr-only">Error:</span>
                <span id="mensaje_texto"></span>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-striped" id="tabla">
                    <thead>
                        <tr>
                            <th>No. Control</th>
                            <th>Nombre</th>
                            <th>Opc.</th>
                            <th class="text-center">R1</th>
                            <th class="text-center">R2</th>
                            <th class="text-center">R3</th>
                            <th class="text-center">R4</th>
                            <th class="text-center">R5</th>
                            <th class="text-center">R6</th>
                            <th class="text-center">R7</th>
                            <th class="text-center">R8</th>
                            <th class="text-center">R9</th>
                        </tr>
                    </thead>
                    <tbody class="text-nowrap">
                        <?php
                        $i = 1;
                        
                        foreach($model as $row):
                            $p1 = $row['p1'];
                            $p2 = $row['p2'];
                            $p3 = $row['p3'];
                            $p4 = $row['p4'];
                            $p5 = $row['p5'];
                            $p6 = $row['p6'];
                            $p7 = $row['p7'];
                            $p8 = $row['p8'];
                            $p9 = $row['p9'];

                            $s1 = $row['s1'];
                            $s2 = $row['s2'];
                            $s3 = $row['s3'];
                            $s4 = $row['s4'];
                            $s5 = $row['s5'];
                            $s6 = $row['s6'];
                            $s7 = $row['s7'];
                            $s8 = $row['s8'];
                            $s9 = $row['s9'];

                            $bloqueo1 = ($p1 != "NA") ? "readonly" : "";
                            $bloqueo2 = ($p2 != "NA") ? "readonly" : "";
                            $bloqueo3 = ($p3 != "NA") ? "readonly" : "";
                            $bloqueo4 = ($p4 != "NA") ? "readonly" : "";
                            $bloqueo5 = ($p5 != "NA") ? "readonly" : "";
                            $bloqueo6 = ($p6 != "NA") ? "readonly" : "";
                            $bloqueo7 = ($p7 != "NA") ? "readonly" : "";
                            $bloqueo8 = ($p8 != "NA") ? "readonly" : "";
                            $bloqueo9 = ($p9 != "NA") ? "readonly" : "";

                            //$promedio_p = promedioTotal([$row['s1'], $row['s2'], $row['s3'], $row['s4'], $row['s5'], $row['s6'], $row['s7'], $row['s8'], $row['s9']]);
                        ?>
                        <tr>
                            <td rowspan="3"><?= $row['idestudiante'] ?></td>
                            <td rowspan="3"><?= $row['nombre_estudiante'] ?></td>
                        </tr>
                        <tr>
                            <td class="text-center">T</td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p1 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p2 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p3 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p4 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p5 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p6 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p7 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p8 ?>" disabled="yes" /></td>
                            <td class="text-center"><input type="text" class="calificacion" value="<?= $p9 ?>" disabled="yes" /></td>
                        </tr>
                        <tr>
                            <td class="text-center">R</td>
                            <td class="text-center"><input type="text" name="s1[]" class="calificacion" id="s1-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s1 ?>" <?= $bloqueo1 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s2[]" class="calificacion" id="s2-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s2 ?>" <?= $bloqueo2 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s3[]" class="calificacion" id="s3-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s3 ?>" <?= $bloqueo3 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s4[]" class="calificacion" id="s4-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s4 ?>" <?= $bloqueo4 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s5[]" class="calificacion" id="s5-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s5 ?>" <?= $bloqueo5 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s6[]" class="calificacion" id="s6-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s6 ?>" <?= $bloqueo6 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s7[]" class="calificacion" id="s7-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s7 ?>" <?= $bloqueo7 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s8[]" class="calificacion" id="s8-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s8 ?>" <?= $bloqueo8 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                            <td class="text-center"><input type="text" name="s9[]" class="calificacion" id="s9-<?= $row['idestudiante'] ?>" maxlength="3" value="<?= $s9 ?>" <?= $bloqueo9 ?> autocomplete="off"  pattern="([N]{1}[A]{1})|([7-9]{1}[0-9]{1})|([1]{1}[0]{2})" /></td>
                        </tr>
                        <input type="hidden" name="idestudiante[]" value="<?= $row["idestudiante"] ?>" readonly="true" id="idestudiante<?= $i ?>" />
                        <?php
                        $i++;
                        endforeach
                        ?>
                        <input type="hidden" name="idgrupo" value="<?= $idgrupo ?>" readonly="true" />
                        <input type="hidden" name="idciclo" value="<?= $idciclo ?>" readonly="true" />
                        <input type="hidden" name="idprofesor" value="<?= $idprofesor ?>" readonly="true" />
                        <input type="hidden" name="r" value="<?= $_GET["r"] ?>" readonly="true" />
                    </tbody>
                </table>
            </div>
        </div>
        </div>
    </div>
</div>
<?php ActiveForm::end(); ?>
<div class="alert alert-info" role="warning">
    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
    <span><b>Premisas:</b></span>
    <br />
    <ul>
        <li>Sólo se permite ingresar valores númericos <b>mayor o igual a 70, menor o igual a 100 y NA</b> (cuando el estudiante no apruebe la materia).</li>
        <li>No se permite dejar cuadros de texto antecesores en blanco <b>(no podrá capturar en C2, si C1 está en blanco y así sucesivamente)</b>.</li>
        <li>No se permite dejar cuadros de texto en blanco de un parcial al capturar la calificación <b>(no se guardarán los cambios, si en un parcial faltan estudiantes por capturar su calificación).</b></li>
    </ul>
</div>
<?php
$this->registerCss('
.calificacion{
    width: 32px;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
}
.error_input{
    border: 2px solid #ff3333;
    border-radius: 1px;
}
#mensaje_error{
    display: none;
');

$this->registerJs('
$(document).ready(function(){
    $("#refrescar").on("click", function(e) {
        e.preventDefault();
        let url = $(this).attr("href");

        if (confirm("¿Desea refrescar la ventana?")) {
            $(location).attr("href", url)
        }
    });
    
    $("#guardar").on("click", function(e) {
        e.preventDefault();

		if ($("#formulario")[0].checkValidity()) {
			$("#guardar").attr("disabled", "disabled");
			$("#alerta").addClass("alert-success");
			$("#mensaje_texto").html("Las calificaciones han sido cargadas correctamente");
			$("#mensaje_error").slideDown(1000).delay(1000).slideUp(1000, function() {
			$("#guardar").removeAttr("disabled");
			$("#formulario").submit();
			});
		} else {
            $("#formulario")[0].reportValidity();
        }
    });
})');