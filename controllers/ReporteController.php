<?php

namespace app\controllers;

use Yii;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\helpers\Html;
use Fpdf\Fpdf;

use app\models\User;
use app\models\Ciclo;
use app\models\Materia;

class PDF extends FPDF
{
    public $reporte;

    public function setReporte($reporte)
    {
        $this->reporte = $reporte;
    }

    public function getReporte()
    {
        return $this->reporte;
    }

    public function Header()
    {
        if($this->getReporte() == 'Boleta')
        {
            $url_header = Yii::$app->basePath.'/web/img/header.png';
            $this->Image($url_header, 10, 5, 150);
            $this->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
            $this->SetFont('Montserrat-Bold', '', 9);
            $this->SetTextColor(125, 125, 125);
            $this->Text(130, 35, utf8_decode('Instituto Tecnológico de Huimanguillo'));
            $this->SetFontSize(8);
            $this->Text(80, 42, utf8_decode('"2021: Año de la Independencia"'));

            $this->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
            $this->SetFont('Montserrat-SemiBold', '', 8);
            $this->SettextColor(76, 76, 76);
            $this->Text(12, 50, utf8_decode('SEP'));
            $this->Text(50, 50, utf8_decode('INSTITUTO TECNOLÓGICO DE HUIMANGUILLO'));
            $this->Text(140, 50, utf8_decode('SES'));
            $this->Text(155, 50, utf8_decode('TNM'));
        }
        else if($this->getReporte() == 'Horario')
        {
            $url_header = Yii::$app->basePath.'/web/img/header_horario.png';
            $this->Image($url_header, 10, 5, 197);

            $this->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
            $this->SetFont('Montserrat-SemiBold', '', 8);
            $this->SettextColor(76, 76, 76);
            $this->Text(12, 50, utf8_decode('SEP'));
            $this->Text(50, 50, utf8_decode('INSTITUTO TECNOLÓGICO DE HUIMANGUILLO'));
            $this->Text(140, 50, utf8_decode('SES'));
            $this->Text(155, 50, utf8_decode('TNM'));
        }
        else if($this->getReporte() == 'Lista Calificacion')
        {
            $url_header = Yii::$app->basePath.'/web/img/header.png';
            $this->Image($url_header, 60, 5, 150);
            $this->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
            $this->SetFont('Montserrat-Bold', '', 9);
            $this->SetTextColor(125, 125, 125);
            $this->Text(180, 30, utf8_decode('Instituto Tecnológico de Huimanguillo'));
            $this->SetFontSize(8);
            $this->Text(120, 37, utf8_decode('"2021: Año de la Independencia"'));

            $this->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
            $this->SetFont('Montserrat-SemiBold', '', 8);
            $this->SettextColor(76, 76, 76);
            $this->Text(50, 45, utf8_decode('SEP'));
            $this->Text(80, 45, utf8_decode('INSTITUTO TECNOLÓGICO DE HUIMANGUILLO'));
            $this->Text(180, 45, utf8_decode('SES'));
            $this->Text(220, 45, utf8_decode('TNM'));
        }
        if($this->getReporte() == 'Acta Calificaciones')
        {
            $url_header = Yii::$app->basePath.'/web/img/header.png';
            $this->Image($url_header, 10, 5, 150);
            $this->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
            $this->SetFont('Montserrat-Bold', '', 9);
            $this->SetTextColor(125, 125, 125);
            $this->Text(90, 38, utf8_decode('ACTA DE CALIFICACIONES'));
            $this->Text(130, 30, utf8_decode('Instituto Tecnológico de Huimanguillo'));
            $this->Text(160, 35, utf8_decode('CLAVE: 27DIT0004E'));
        }
    }

    public function Footer()
    {
        //$this->SetXY( 100, 100 );
        //$this->SetFont( 'Arial', 'I', 8 );
        //$this->Cell( 0, 10, 'Page '.$this->PageNo().'/{nb}', 0, 0, 'C' );
        if($this->getReporte() == 'Boleta' || $this->getReporte() == 'Acta Calificaciones')
        {
            $url_footer = Yii::$app->basePath.'/web/img/footer.png';
            $this->Image($url_footer, 12, 245, 185);
        }
        else if($this->getReporte() == 'Horario')
        {

            $url_firma = Yii::$app->basePath.'/web/img/firma_horario.png';
            $this->Image($url_firma, 30, 185, 45);
            $url_sello = Yii::$app->basePath.'/web/img/sello_horario.png';
            $this->Image($url_sello, 80, 185, 60);

            $this->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
            $this->SetFont('Montserrat-SemiBold', '', 8);
            $this->Line(30, 235, 80, 235);
            $this->Text(37, 240, utf8_decode( 'DIVISIÓN DE ESTUDIOS'));
            $this->Text(41, 245, 'PROFESIONALES');
            $this->Line(130, 235, 180, 235);
            $this->Text(147, 240, 'ESTUDIANTE');
            $this->SetTextColor(125, 125, 125);
            $this->Text(12, 265, '181240065');
            $this->Text(190, 265, 'Rev. O');
        }
        else if($this->getReporte() == 'Lista Calificacion')
        {
            $url_footer = Yii::$app->basePath.'/web/img/footer.png';
            $this->Image($url_footer, 50, 180, 185);
        }

    }
}

class ReporteController extends Controller
{
    public function behaviors()
    {
        return [
                'access' => [
                    'class' => AccessControl::className(),
                    'only' => ['listaalumnos', 'horarioprofesor', 'listaalumnoscalificacion', 'listaalumnoscalificacionprofesor'],//Especificar que acciones se van proteger
                    'rules' => [
                        [
                            //El administrador tiene permisos sobre las siguientes acciones
                            'actions' => ['listaalumnos', 'horarioprofesor', 'listaalumnoscalificacion', 'listaalumnoscalificacionprofesor'],//Especificar que acciones tiene permitidas este usuario
                            //Esta propiedad establece que tiene permisos
                            'allow' => true,
                            //Usuarios autenticados, el signo ? es para invitados
                            'roles' => ['@'],
                            //Este método nos permite crear un filtro sobre la identidad del usuario
                            //y así establecer si tiene permisos o no
                            'matchCallback' => function ($rule, $action) {
                                //Llamada al método que comprueba si es un administrador
                                //return User::isUserAdministrador(Yii::$app->user->identity->idusuario);
                                return User::isUserAutenticado(Yii::$app->user->identity->idusuario, 1);
                            },  
                        ],
                        [
                            //El administrador tiene permisos sobre las siguientes acciones
                            'actions' => ['listaalumnos', 'horarioprofesor', 'listaalumnoscalificacion', 'listaalumnoscalificacionprofesor'],//Especificar que acciones tiene permitidas este usuario
                            //Esta propiedad establece que tiene permisos
                            'allow' => true,
                            //Usuarios autenticados, el signo ? es para invitados
                            'roles' => ['@'],
                            //Este método nos permite crear un filtro sobre la identidad del usuario
                            //y así establecer si tiene permisos o no
                            'matchCallback' => function ($rule, $action) {
                                //Llamada al método que comprueba si es un administrador
                                //return User::isUserAdministrador(Yii::$app->user->identity->idusuario);
                                return User::isUserAutenticado(Yii::$app->user->identity->idusuario, 2);
                            },  
                        ],
                        [
                            //El administrador tiene permisos sobre las siguientes acciones
                            'actions' => ['listaalumnos', 'horarioprofesor', 'listaalumnoscalificacion', 'listaalumnoscalificacionprofesor'],//Especificar que acciones tiene permitidas este usuario
                            //Esta propiedad establece que tiene permisos
                            'allow' => true,
                            //Usuarios autenticados, el signo ? es para invitados
                            'roles' => ['@'],
                            //Este método nos permite crear un filtro sobre la identidad del usuario
                            //y así establecer si tiene permisos o no
                            'matchCallback' => function ($rule, $action) {
                                //Llamada al método que comprueba si es un administrador
                                //return User::isUserAdministrador(Yii::$app->user->identity->idusuario);
                                return User::isUserAutenticado(Yii::$app->user->identity->idusuario, 3);
                            },  
                        ],
                        [
                            //El administrador tiene permisos sobre las siguientes acciones
                            'actions' => ['listaalumnos', 'horarioprofesor', 'listaalumnoscalificacion', 'listaalumnoscalificacionprofesor'],//Especificar que acciones tiene permitidas este usuario
                            //Esta propiedad establece que tiene permisos
                            'allow' => true,
                            //Usuarios autenticados, el signo ? es para invitados
                            'roles' => ['@'],
                            //Este método nos permite crear un filtro sobre la identidad del usuario
                            //y así establecer si tiene permisos o no
                            'matchCallback' => function ($rule, $action) {
                                //Llamada al método que comprueba si es un administrador
                                //return User::isUserAdministrador(Yii::$app->user->identity->idusuario);
                                return User::isUserAutenticado(Yii::$app->user->identity->idusuario, 4);
                            },  
                        ],
                    ],
                ],
                //Controla el modo en que se accede a las acciones, en este ejemplo a la acción logout
                //sólo se puede acceder a través del método post
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'logout' => ['post'],
                    ],
                ],
        ];
    }

    public function actionBoleta()
    {
        $idestudiante = Html::encode($_REQUEST['id']);
        $idciclo = Html::encode($_REQUEST['idciclo']);

        $sql_encabezado = "SELECT
                               *
                           FROM
                                boleta_estudiante_encabezado
                           WHERE
                                idestudiante = :idestudiante
                           AND
                                idciclo = :idciclo";
        $encabezado = Yii::$app->db->createCommand($sql_encabezado)
                                   ->bindValue(':idestudiante', $idestudiante)
                                   ->bindValue(':idciclo', $idciclo)
                                   ->queryOne();

        $sql_materias = "SELECT
                            *
                         FROM
                            boleta_detalle_v
                         WHERE
                            idestudiante = :idestudiante
                         AND
                            idciclo = :idciclo";
        $cuerpo = Yii::$app->db->createCommand($sql_materias)
                               ->bindValue(':idestudiante', $idestudiante)
                               ->bindValue(':idciclo', $idciclo)
                               ->queryAll();

        $periodo = utf8_decode($encabezado['desc_ciclo']);
        $fecha = date('Y-m-d');
        $no_control = $encabezado['idestudiante'];
        $estudiante = $encabezado['nombre_estudiante'];
        $semestre = $encabezado['num_semestre'];
        $carrera = $encabezado['desc_carrera'];
        $especialidad = '';
        $plan = $encabezado['plan_estudios'];

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Boleta');
        $pdf->AliasNbPages();
        $pdf->AddPage('P', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $pdf->SetFont('Montserrat-SemiBold', '', 8);
        $pdf->SettextColor(0, 0, 0);
        $pdf->Text(12, 60, utf8_decode( 'BOLETA DE CALIFICACIONES AL PERIODO:'));
        $pdf->Text(78, 60, $periodo);
        $pdf->Text(125, 60, 'FECHA:');
        $pdf->Text(138, 60, $fecha);
        $pdf->Text(12, 70, utf8_decode('NÚMERO DE CONTROL:'));
        $pdf->Text(49, 70, utf8_decode($no_control));
        $pdf->Text(12, 75, utf8_decode('ESTUDIANTE:'));
        $pdf->Text(49, 75, utf8_decode($estudiante));
        $pdf->Text(12, 80, utf8_decode('CARRERA:'));
        $pdf->Text(49, 80, utf8_decode($carrera));
        $pdf->Text(12, 85, utf8_decode('PLAN:'));
        $pdf->Text(49, 85, utf8_decode($plan));

        $pdf->SetFont('Montserrat-Bold', '', 8);
        $pdf->SetXY(12, 90);
        $pdf->Cell(95, 5, 'MATERIA', 1, 0, 'C');
        $pdf->Cell(20, 5, 'CLAVE', 1, 0, 'C');
        $pdf->Cell(15, 5, 'GRUPO', 1, 0, 'C');
        $pdf->Cell(15, 5, utf8_decode('OPCIÓN'), 1, 0, 'C');
        $pdf->Cell(10, 5, utf8_decode('CR'), 1, 0, 'C');
        $pdf->Cell(40, 5, utf8_decode('CALIFICACIÓN'), 1, 0, 'C');
        $pdf->Ln();
        $pdf->SetFont('Montserrat-Regular', '', 6.5);

        $total_materias = count($cuerpo);
        $calificacion_acumulada = 0;
        $creditos_acumulados = 0;

        if($total_materias > 0)
        {
            foreach($cuerpo as $row)
            {
                $calificacion = ($row['calificacion'] == 'N/A' || $row['calificacion'] === 'NA') ? 0 : $row['calificacion'];
                //Convierte a 0 cuando el valor de la calificación es NA
                $calificacion_acumulada = $calificacion_acumulada + $calificacion;
                $creditos_acumulados = $creditos_acumulados + $row['creditos'];

                $pdf->SetX(12);
                $pdf->Cell(95, 5, utf8_decode( $row['desc_materia'] ), 1, 0, 'L');
                $pdf->Cell(20, 5, utf8_decode( $row['cve_materia'] ), 1, 0, 'C');
                $pdf->Cell(15, 5, utf8_decode( $row['desc_grupo'] ), 1, 0, 'C');
                $pdf->Cell(15, 5, utf8_decode( $row['opc_curso'] ), 1, 0, 'C');
                $pdf->Cell(10, 5, utf8_decode( $row['creditos'] ), 1, 0, 'C');
                $pdf->Cell(40, 5, utf8_decode( $row['calificacion'] ), 1, 0, 'C');
                $pdf->Ln();
            }

            $promedio = round($calificacion_acumulada / $total_materias, 0);

            $pdf->SetFont('Montserrat-Regular', '', 8);
            $pdf->SetX(12);
            $pdf->Cell(145, 10, utf8_decode('CRÉDITOS APROBADOS'), 1, 0, 'R');
            $pdf->Cell(10, 10, $creditos_acumulados, 1, 0, 'C');
            $pdf->SetFont('Montserrat-Regular', '', 6.5);
            $pdf->MultiCell(20, 5, 'PROMEDIO PARCIAL', 1, 'C', false);
            $pdf->SetFont('Montserrat-Bold', '', 8);
            $y = $pdf->GetY() - 10;
            $pdf->SetXY(187, $y);
            $pdf->Cell(20, 10, $promedio, 1, 0, 'C');
        }

        $pdf->SetFont('Montserrat-Bold', '', 10);
        $pdf->Text(12, 185, 'A T E N T A M E N T E');
        $pdf->SetFont('Montserrat-MediumItalic', '', 8);
        $pdf->Text(12, 189, utf8_decode('Excelencia en Educación Tecnológica®')) ;
        $pdf->SetFont('Montserrat-LightItalic', '', 8);
        $pdf->Text(12, 193, utf8_decode('"DONDE MORA EL SABER MORA LA PATRIA"®'));
        $pdf->SetFont('Montserrat-Bold', '', 8);
        $pdf->Text(12, 230, utf8_decode('MANUEL ERNESTO VILLALOBOS LÓPEZ'));
        $pdf->Text(12, 234, utf8_decode('JEFE DEL DEPARTAMENTO DE SERVICIOS ESCOLARES'));
        $pdf->SetFont('Montserrat-Regular', '', 7);
        $pdf->Text(12, 238, utf8_decode('C.c.p. SE'));
        $pdf->Text(12, 242, utf8_decode('L.I. MEVL/'));

        $url_firma = Yii::$app->basePath.'/web/img/firma_boleta.png';
        $pdf->Image($url_firma, 40, 190, 45);

        $url_firma = Yii::$app->basePath.'/web/img/sello_boleta.png';
        $pdf->Image($url_firma, 130, 190, 45);

        $pdf->Output('D', $idestudiante.'_'.$periodo.'.pdf');
    }

    public function actionHorario()
    {
        $idestudiante = Html::encode($_REQUEST['id']);
        $idciclo = Html::encode($_REQUEST['idciclo']);

        $sql_encabezado = "SELECT
                                *
                           FROM
                                boleta_estudiante_encabezado
                           WHERE
                                idestudiante = :idestudiante
                           AND
                                idciclo = :idciclo";
        $encabezado = Yii::$app->db->createCommand($sql_encabezado)
                                   ->bindValue(':idestudiante', $idestudiante)
                                   ->bindValue(':idciclo', $idciclo)
                                   ->queryOne();

        $sql_materias = "SELECT
                            *
                         FROM
                            horario_estudiante_v
                         WHERE
                            idestudiante =:idestudiante
                         AND
                            idciclo = :idciclo
                         ORDER BY
                            lunes, viernes, sabado";
        $cuerpo = Yii::$app->db->createCommand($sql_materias)
                               ->bindValue(':idestudiante', $idestudiante)
                               ->bindValue(':idciclo', $idciclo)
                               ->queryAll();

        $periodo = utf8_decode($encabezado['desc_ciclo']);
        $fecha = date('Y-m-d');
        $no_control = $encabezado['idestudiante'];
        $estudiante = $encabezado['nombre_estudiante'];
        $semestre = $encabezado['num_semestre'];
        $carrera = $encabezado['desc_carrera'];
        $especialidad = '';
        $plan = $encabezado['plan_estudios'];

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Horario');
        $pdf->AliasNbPages();
        $pdf->AddPage('P', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $pdf->SetFont('Montserrat-SemiBold', '', 8);
        $pdf->SettextColor(0, 0, 0);
        $pdf->Text(60, 58, utf8_decode('CARGA ACADÉMICA AL PERIODO:'));
        $pdf->Text(115, 58, $periodo);
        $pdf->Text(12, 65, 'FECHA:');
        $pdf->Text(49, 65, $fecha);
        $pdf->Text(12, 70, utf8_decode('NÚMERO DE CONTROL:'));
        $pdf->Text(49, 70, utf8_decode($no_control));
        $pdf->Text(12, 75, utf8_decode('ESTUDIANTE:'));
        $pdf->Text(49, 75, utf8_decode($estudiante));
        $pdf->Text(12, 80, utf8_decode('CARRERA:'));
        $pdf->Text(49, 80, utf8_decode($carrera));
        $pdf->Text(12, 85, utf8_decode('PLAN:'));
        $pdf->Text(49, 85, utf8_decode($plan));
        $pdf->Text(120, 85, utf8_decode('CRÉDITOS:'));

        $pdf->SetFont('Montserrat-Bold', '', 8);
        $pdf->SetXY(8, 90);
        $pdf->Cell(75, 7, 'MATERIA / DOCENTE', 1, 0, 'C');
        $pdf->Cell(13, 7, 'CLAVE', 1, 0, 'C');
        $pdf->Cell(12, 7, 'GRUPO', 1, 0, 'C');
        $pdf->Cell(9, 7, 'REP', 1, 0, 'C');
        $pdf->Cell(7, 7, 'CR', 1, 0, 'C');
        $pdf->SetFont('Montserrat-Bold', '', 6);
        $pdf->Cell(14, 7, 'LUNES', 1, 0, 'C');
        $pdf->Cell(14, 7, 'MARTES', 1, 0, 'C');
        $pdf->Cell(14, 7, utf8_decode('MIÉRCOLES'), 1, 0, 'C');
        $pdf->Cell(14, 7, 'JUEVES', 1, 0, 'C');
        $pdf->Cell(14, 7, 'VIERNES', 1, 0, 'C');
        $pdf->Cell(14, 7, utf8_decode('SÁBADO'), 1, 0, 'C');
        $pdf->Ln();

        $creditos_acumulados = 0;
        foreach($cuerpo as $row)
        {
            $lunes = $row['lunes'] != '' ? $row['lunes'] : '---';
            $martes = $row['martes'] != '' ? $row['martes'] : '---';
            $miercoles = $row['miercoles'] != '' ? $row['miercoles'] : '---';
            $jueves = $row['jueves'] != '' ? $row['jueves'] : '---';
            $viernes = $row['viernes'] != '' ? $row['viernes'] : '---';
            $sabado = $row['sabado'] != '' ? $row['sabado'] : '---';

            $creditos_acumulados = $creditos_acumulados + $row['creditos'];

            $pdf->SetX(8);
            $pdf->SetFont('Montserrat-Regular', '', 6);
            $pdf->MultiCell(75, 5, utf8_decode( $row['desc_materia'])."\n".utf8_decode($row['profesor']), 1, 'L', 0);

            $y = $pdf->GetY() - 10;
            $pdf->SetXY(83, $y);

            $pdf->Cell(13, 10, utf8_decode($row['cve_materia'] ), 1, 0, 'C');
            $pdf->Cell(12, 10, utf8_decode($row['desc_grupo_corto'] ), 1, 0, 'C');
            $pdf->Cell(9, 10, utf8_decode($row['desc_opcion_curso_corto']), 1, 0, 'C');
            $pdf->Cell(7, 10, utf8_decode($row['creditos'] ), 1, 0, 'C');
            $pdf->Cell(14, 10, $lunes, 1, 0, 'C');
            $pdf->Cell(14, 10, $martes, 1, 0, 'C');
            $pdf->Cell(14, 10, $miercoles, 1, 0, 'C');
            $pdf->Cell(14, 10, $jueves, 1, 0, 'C');
            $pdf->Cell(14, 10, $viernes, 1, 0, 'C');
            $pdf->Cell(14, 10, $sabado, 1, 0, 'C');

            $pdf->Ln();
        }
        $pdf->SetFont('Montserrat-SemiBold', '', 8);
        $pdf->Text(138, 85, utf8_decode($creditos_acumulados));

        $pdf->Output('D', $idestudiante.'_'.$periodo.'.pdf');
    }

    public function actionListaalumnos()
    {
        $idgrupo = Html::encode($_REQUEST['idgrupo']);
        $idciclo = (Html::encode($_REQUEST['idciclo']) != "") ? Html::encode($_REQUEST['idciclo']) : Ciclo::find()->max("idciclo");

        $encabezado = (new \yii\db\Query())->from(["cat_carreras"])
                                           ->select(["ciclo.desc_ciclo",
                                                    "cat_carreras.desc_carrera",
                                                    "cat_carreras.plan_estudios",
                                                    "grupos.desc_grupo",
                                                    "grupos.desc_grupo_corto",
                                                    "cat_materias.desc_materia"
                                           ])
                                           ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                                           ->innerJoin(["ciclo"], "ciclo.idciclo = grupos.idciclo")
                                           ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                                           ->where(["grupos.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                                           ->one();

        $cuerpo = (new \yii\db\Query())->from(["estudiantes"])
                                     ->select(["estudiantes.idestudiante",
                                               "estudiantes.nombre_estudiante",
                                               "estudiantes.sexo",
                                               "cat_opcion_curso.desc_opcion_curso",
                                               "cat_materias.desc_materia"
                                     ])
                                     ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                                     ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                                     ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                                     ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                                     ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                                     ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                                     ->all();

        $periodo = utf8_decode($encabezado['desc_ciclo']);
        $fecha = date('Y-m-d');
        $carrera = $encabezado['desc_carrera'];
        $plan = $encabezado['plan_estudios'];
        $materia = $cuerpo[0]['desc_materia'];
        $grupo = $encabezado['desc_grupo'];

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Boleta');
        $pdf->AliasNbPages();
        $pdf->AddPage('P', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $pdf->SetFont('Montserrat-SemiBold', '', 8);
        $pdf->SettextColor(0, 0, 0);
        $pdf->Text(12, 60, utf8_decode('PERIODO:'));
        $pdf->Text(30, 60, $periodo);
        $pdf->Text(125, 60, 'FECHA:');
        $pdf->Text(138, 60, $fecha);
        $pdf->Text(12, 65, utf8_decode('CARRERA:'));
        $pdf->Text(30, 65, utf8_decode($carrera));
        $pdf->Text(12, 70, utf8_decode('PLAN:'));
        $pdf->Text(30, 70, utf8_decode($plan));
        $pdf->Text(12, 75, utf8_decode('MATERIA:'));
        $pdf->Text(30, 75, utf8_decode($materia));
        $pdf->Text(12, 80, utf8_decode('GRUPO:'));
        $pdf->Text(30, 80, utf8_decode($grupo));

        $pdf->SetFont('Montserrat-Bold', '', 8);
        $pdf->SetXY(12, 85);
        $pdf->Cell(10, 5, 'NO.', 1, 0, 'C');
        $pdf->Cell(30, 5, 'NO. CONTROL', 1, 0, 'C');
        $pdf->Cell(110, 5, 'ESTUDIANTE', 1, 0, 'C');
        $pdf->Cell(15, 5, 'SEXO', 1, 0, 'C');
        $pdf->Cell(25, 5, utf8_decode('OPCIÓN'), 1, 0, 'C');
        $pdf->Ln();

        $total_estudiantes = count($cuerpo);

        if($total_estudiantes > 0)
        {
            $numero = 1;
            $pdf->SetFont('Montserrat-regular', '', 8);
            foreach ($cuerpo as $row)
            {
                $pdf->SetX(12);
                $pdf->Cell(10, 5, $numero, 1, 0, 'C');
                $pdf->Cell(30, 5, $row['idestudiante'], 1, 0, 'C');
                $pdf->Cell(110, 5, utf8_decode($row['nombre_estudiante']), 1, 0, 'L');
                $pdf->Cell(15, 5, $row['sexo'], 1, 0, 'C');
                $pdf->Cell(25, 5, utf8_decode($row['desc_opcion_curso']), 1, 0, 'C');
                $pdf->Ln();
                $numero = $numero + 1;
            }
        }

        $pdf->Output('D', utf8_decode($encabezado['desc_grupo'])."_".$periodo.'.pdf');
    }

    public function actionHorarioprofesor()
    {
        $idprofesor = 25;
        $idciclo = 1;

        $sql_materias = "SELECT
                            *
                         FROM
                            horario_profesor_v
                         WHERE
                            idprofesor =:idprofesor
                         AND
                            idciclo = :idciclo";
        $cuerpo = Yii::$app->db->createCommand($sql_materias)
                               ->bindValue(':idprofesor', $idprofesor)
                               ->bindValue(':idciclo', $idciclo)
                               ->queryAll();

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Horario Profesor');
        $pdf->AliasNbPages();
        $pdf->AddPage('L', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $pdf->SetFont('Montserrat-SemiBold', '', 14);
        $pdf->SettextColor(0, 0, 0);
        $url_header = Yii::$app->basePath.'/web/img/SEP1.png';
        $pdf->Image($url_header, 5, 7, 70);
        $pdf->Rect(5, 5, 270, 20);
        $pdf->Line(75, 5, 75, 25);
        $pdf->Line(200, 5, 200, 25);
        $pdf->Line(75, 15, 200, 15);
        $pdf->Text(115, 13, "Horario de Trabajo");
        $pdf->SetFont('Montserrat-SemiBold', '', 10);
        $pdf->Text(105, 22, "Referencia a la Norma ISO 9001:2015");
        $pdf->Line(200, 18, 275, 18);
        $pdf->Line(200, 12, 275, 12);
        $pdf->Line(220, 5, 220, 25);
        $pdf->Text(202, 10, utf8_decode("Código:"));
        $pdf->Text(227, 10, utf8_decode("TecNM-AC-PO-003-01"));
        $pdf->Text(202, 16, utf8_decode("Revisión:"));
        $pdf->Text(245, 16, "0");
        $pdf->Text(202, 23, utf8_decode("Página"));
        $pdf->Text(242, 23, utf8_decode("1 de 2"));

        $pdf->Rect(5, 30, 270, 41);
        $pdf->Line(5, 36, 275, 36);//HORIZONTAL
        $pdf->Text(7, 34, utf8_decode("INSTITUTO TECNOLÓGICO DE:"));
        $pdf->Line(75, 30, 75, 36);//VERTICAL
        $pdf->Line(130, 30, 130, 71);//VERTICAL
        $pdf->Text(131, 34, utf8_decode("C.C.T.:"));
        $pdf->Line(147, 30, 147, 71);//VERTICAL
        $pdf->Line(164, 36, 164, 71);//VERTICAL
        $pdf->Line(180, 30, 180, 36);//VERTICAL
        $pdf->Text(181, 34, utf8_decode("PERIODO ESCOLAR"));
        $pdf->Line(225, 30, 225, 36);//VERTICAL

        $pdf->SetFont('Montserrat-SemiBold', '', 7);
        $pdf->Text(6, 39, utf8_decode("NOMBRE COMPLETO:"));
        $pdf->Text(165, 39, utf8_decode("CLAVE COMPLETA DE LA(S) PLAZA(S):"));
        $pdf->Line(5, 41, 164, 41);//HORIZONTAL

        $pdf->Text(6, 44, utf8_decode("ESCOLARIDAD DEL PERSONAL"));
        $pdf->Text(131, 44, utf8_decode("PASANTE"));
        $pdf->Text(148, 44, utf8_decode("TITULADO"));
        $pdf->Line(5, 46, 164, 46);//HORIZONTAL

        $pdf->Text(6, 49, utf8_decode("LICENCIATURA EN:"));
        $pdf->Line(5, 51, 275, 51);//HORIZONTAL

        $pdf->Text(6, 54, utf8_decode("ESPECIALIZACIÓN EN:"));
        $pdf->Text(165, 54, utf8_decode("TIPO DE NOMBRAMIENTO:"));
        $pdf->Text(222, 54, utf8_decode("FECHA DE INGRESO A LA S.E.P.:"));
        $pdf->Line(221, 51, 221, 71);//VERTICAL
        $pdf->Line(5, 56, 164, 56);//HORIZONTAL

        $pdf->Text(6, 59, utf8_decode("MAESTRÍA EN:"));
        $pdf->Line(5, 61, 275, 61);//HORIZONTAL

        $pdf->Text(6, 64, utf8_decode("DOCTORADO EN:"));
        $pdf->Text(165, 64, utf8_decode("NO. DE TARJETA DE CONTROL:"));
        $pdf->Text(222, 64, utf8_decode("FECHA DE INGRESO A LA INSTITUCIÓN:"));
        $pdf->Line(5, 66, 164, 66);//HORIZONTAL

        $pdf->Text(6, 69, utf8_decode("UNIDAD ORGÁNICA DE ADSCRIPCIÓN:"));

        $pdf->SetFont('Montserrat-SemiBold', '', 10);
        $pdf->Text(6, 77, utf8_decode("I.- CARGA ACADÉMICA"));

        $pdf->SetFont('Montserrat-Bold', '', 7);
        $pdf->SetFillColor(191, 191, 191);
        $pdf->SetXY(6, 80);
        $pdf->Cell(85, 12, "ASIGNATURA", 1, 0, 'C', true);
        $pdf->Cell(14, 12, "GRUPO", 1, 0, 'C', true);
        $pdf->MultiCell(14, 4, "ESTU-\nDIANTES\n ", 1, 'C', true);
        $pdf->SetXY(119, 80);
        $pdf->MultiCell(15, 4, "AULA\nTALLER o\nLAB.", 1, 'C', true);
        $pdf->SetXY(134, 80);
        $pdf->Cell(12, 12, "NIVEL", 1, 0, 'C', true);
        $pdf->SetXY(146, 80);
        $pdf->MultiCell(15, 4, "MODALI-\nDAD\n ", 1, 'C', true);
        $pdf->SetXY(161, 80);
        $pdf->Cell(14, 12, "CARRERA", 1, 0, 'C', true);
        $pdf->Cell(80, 6, "HORARIO", 1, 0, 'C', true);
        $pdf->SetXY(175, 86);
        $pdf->Cell(16, 6, "L", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "M", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "M", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "J", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "V", 1, 0, 'C', true);
        $pdf->SetXY(255, 80);
        $pdf->MultiCell(20, 6, "TOTAL HRS\nSEMANALES", 1, 'C', true);
        $pdf->Ln();

        $pdf->SetY(92);
        $pdf->SetFont('Montserrat-regular', '', 6.5);
        foreach($cuerpo as $row)
        {
            $pdf->SetX(6);
            $pdf->Cell(85, 5, utf8_decode($row['desc_materia']), 1, 0, 'L');
            $pdf->Cell(14, 5, utf8_decode($row['desc_grupo']), 1, 0, 'L');
            $pdf->Cell(14, 5, "", 1, 0, 'L');
            $pdf->Cell(15, 5, utf8_decode($row['aula']), 1, 0, 'L');
            $pdf->Cell(12, 5, "", 1, 0, 'L');
            $pdf->Cell(15, 5, "", 1, 0, 'L');
            $pdf->Cell(14, 5, "", 1, 0, 'L');
            $pdf->Cell(16, 5, $row['lunes'], 1, 0, 'C');
            $pdf->Cell(16, 5, $row['martes'], 1, 0, 'C');
            $pdf->Cell(16, 5, $row['miercoles'], 1, 0, 'C');
            $pdf->Cell(16, 5, $row['jueves'], 1, 0, 'C');
            $pdf->Cell(16, 5, $row['viernes'], 1, 0, 'C');
            $pdf->Cell(20, 5, "", 1, 0, 'L');
            $pdf->Ln();
        }
        $pdf->SetX(6);
        $pdf->Cell(169, 5, utf8_decode("PREPARACIÓN, CONTROL Y EVALUACIÓN DE MATERIAS QUE IMPARTE"), 1, 0, 'L');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(20, 5, "", 1, 0, 'C');
        $pdf->Ln();
        $pdf->SetX(6);
        $pdf->Cell(169, 5, "SUBTOTAL     ", 1, 0, 'R');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(20, 5, "", 1, 0, 'C');

        $y = $pdf->GetY();
        $pdf->SetFont('Montserrat-SemiBold', '', 10);
        $pdf->Text(6, $y+10, utf8_decode("II.- ACTIVIDADES DE APOYO A LA DOCENCIA"));

        $pdf->SetFont('Montserrat-Bold', '', 7);
        $pdf->SetXY(6, $y+13);
        $pdf->Cell(140, 12, "NOMBRE DE LA ACTIVIDAD", 1, 0, 'C', true);
        $pdf->Cell(29, 12, "METAS A ATENDER", 1, 0, 'C', true);
        $pdf->SetXY(175, $y+13);
        $pdf->Cell(80, 6, "HORARIO", 1, 0, 'C', true);
        $pdf->SetXY(175, $y+19);
        $pdf->Cell(16, 6, "L", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "M", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "M", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "J", 1, 0, 'C', true);
        $pdf->Cell(16, 6, "V", 1, 0, 'C', true);
        $pdf->SetXY(255, $y+13);
        $pdf->MultiCell(20, 6, "TOTAL HRS\nSEMANALES", 1, 'C', true);
        $pdf->Ln();

        $actividades = array('ORGANIZAR Y REALIZAR ACTIVIDADES DE CAPACITACIÓN Y SUPERACIÓN DOCENTE',
                             'PRESTAR ASESORÍAS DOCENTES A ESTUDIANTES Y PASANTES',
                             'DEFINIR, ADECUAR, PLANEAR, DIRIGIR, COORDINAR Y EVALUAR PROYECTOS Y PROGRAMAS DOCENTES',
                             'DISEÑAR O PRODUCIR MATERIALES DIDÁCTICOS',
                             'ACTIVIDADES DE APOYO A LA DOCENCIA Y A LA INVESTIGACIÓN',
                             'PRESTAR  ASESORÍAS EN PROYECTOS EXTERNOS Y LABORES DE EXTENSIÓN',
                             'PRESTAR ASESORÍAS EN SERVICIO SOCIAL'
                            );

        $pdf->SetXY(6, $y+25);
        $pdf->SetFont('Montserrat-regular', '', 7);
        for($i = 0; $i < count($actividades); $i++)
        {
            $pdf->SetX(6);
            $pdf->Cell(140, 5, utf8_decode($actividades[$i]), 1, 0, 'L');
            $pdf->Cell(29, 5, "", 1, 0, 'C');
            $pdf->Cell(16, 5, "", 1, 0, 'C');
            $pdf->Cell(16, 5, "", 1, 0, 'C');
            $pdf->Cell(16, 5, "", 1, 0, 'C');
            $pdf->Cell(16, 5, "", 1, 0, 'C');
            $pdf->Cell(16, 5, "", 1, 0, 'C');
            $pdf->Cell(20, 5, "", 1, 0, 'C');
            $pdf->Ln();
        }
        $pdf->SetX(6);
        $pdf->Cell(169, 5, "SUBTOTAL     ", 1, 0, 'R');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(20, 5, "", 1, 0, 'C');
        $pdf->Ln();
        $pdf->SetX(6);
        $pdf->Cell(169, 5, "TOTAL     ", 1, 0, 'R');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(16, 5, "", 1, 0, 'C');
        $pdf->Cell(20, 5, "", 1, 0, 'C');
        

        $pdf->Output('I', 'horario.pdf');
    }

    public function actionListaalumnoscalificacion($idgrupo, $idciclo)
    {
        $idgrupo = Html::encode($idgrupo);
        $idciclo = Html::encode($idciclo);

        $materia = (new \yii\db\Query())
                            ->from(["grupos"])
                            ->select(["cat_materias.desc_materia"])
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->one();

        $encabezado = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                "ciclo.desc_ciclo",
                            	"cat_carreras.desc_carrera",
	                            "cat_carreras.plan_estudios",
	                            "grupos.desc_grupo",
	                            "grupos.desc_grupo_corto",
	                            "cat_materias.desc_materia",
                                "CONCAT(profesores.apaterno, ' ', profesores.amaterno, ' ', profesores.nombre_profesor) AS profesor"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["ciclo"], "ciclo.idciclo = grupos.idciclo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->innerJoin(["profesores"], "grupos.idprofesor = profesores.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo, "ciclo.idciclo" => $idciclo])
                            ->all();

        $cuerpo = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
                                "grupos_estudiantes.p1", "grupos_estudiantes.p2", "grupos_estudiantes.p3",
                                "grupos_estudiantes.p4", "grupos_estudiantes.p5", "grupos_estudiantes.p6",
                                "grupos_estudiantes.p7", "grupos_estudiantes.p8", "grupos_estudiantes.p9",
                                "grupos_estudiantes.s1", "grupos_estudiantes.s2", "grupos_estudiantes.s3",
                                "grupos_estudiantes.s4", "grupos_estudiantes.s5", "grupos_estudiantes.s6",
                                "grupos_estudiantes.s7", "grupos_estudiantes.s8", "grupos_estudiantes.s9",
                                "grupos_estudiantes.sp1", "grupos_estudiantes.sp2", "grupos_estudiantes.sp3",
                                "grupos_estudiantes.sp4", "grupos_estudiantes.sp5", "grupos_estudiantes.sp6",
                                "grupos_estudiantes.sp7", "grupos_estudiantes.sp8", "grupos_estudiantes.sp9"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

        $periodo = utf8_decode($encabezado[0]['desc_ciclo']);
        $fecha = date('Y-m-d');
        $carrera = $encabezado[0]['desc_carrera'];
        $plan = $encabezado[0]['plan_estudios'];
        $materia = $materia['desc_materia'];
        $grupo = $encabezado[0]['desc_grupo'];
        $profesor = utf8_decode($encabezado[0]['profesor']);

        $x_encabezado = 45;
        $y_encabezado = 77;

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Lista Calificacion');
        $pdf->AliasNbPages();
        $pdf->AddPage('L', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                           "carrera" => $carrera,
                                                           "plan" => $plan,
                                                           "profesor" => $profesor,
                                                           "materia" => $materia,
                                                           "grupo" => $grupo,
                                                           "fecha" => $fecha,
                                                           "seguimiento" => "")
                                               );

        $x_encabezado = 45;
        $y_encabezado = 77;

        $x = $this->generarEncabezadoTablaCalificaciones($pdf, $x_encabezado, $y_encabezado, $cuerpo);

        $pdf->Ln();

        $total_estudiantes = count($cuerpo);

        $numero = 1;
        $pdf->SetFont('Montserrat-regular', '', 8);
        foreach ($cuerpo as $row)
        {
            $s1 = $row['s1'];
            $s2 = $row['s2'];
            $s3 = $row['s3'];
            $s4 = $row['s4'];
            $s5 = $row['s5'];
            $s6 = $row['s6'];
            $s7 = $row['s7'];
            $s8 = $row['s8'];
            $s9 = $row['s9'];

            $p1 = ($row['p1'] == "NA") ? (($s1 == "") ? $row['p1'] : $s1) : $row['p1'];
            $p2 = ($row['p2'] == "NA") ? (($s2 == "") ? $row['p2'] : $s2) : $row['p2'];
            $p3 = ($row['p3'] == "NA") ? (($s3 == "") ? $row['p3'] : $s3) : $row['p3'];
            $p4 = ($row['p4'] == "NA") ? (($s4 == "") ? $row['p4'] : $s4) : $row['p4'];
            $p5 = ($row['p5'] == "NA") ? (($s5 == "") ? $row['p5'] : $s5) : $row['p5'];
            $p6 = ($row['p6'] == "NA") ? (($s6 == "") ? $row['p6'] : $s6) : $row['p6'];
            $p7 = ($row['p7'] == "NA") ? (($s7 == "") ? $row['p7'] : $s7) : $row['p7'];
            $p8 = ($row['p8'] == "NA") ? (($s8 == "") ? $row['p8'] : $s8) : $row['p8'];
            $p9 = ($row['p9'] == "NA") ? (($s9 == "") ? $row['p9'] : $s9) : $row['p9'];

            $pdf->SetX($x);
            $pdf->Cell(8, 5, $numero, 1, 0, 'C');
            $pdf->Cell(25, 5, $row['idestudiante'], 1, 0, 'C');
            $pdf->Cell(75, 5, utf8_decode($row['nombre_estudiante']), 1, 0, 'L');
            ($p1 > 0 || $p1 == "NA") ? $pdf->Cell(8, 5, $p1, 1, 0, 'C') : "";
            ($p2 > 0 || $p2 == "NA") ? $pdf->Cell(8, 5, $p2, 1, 0, 'C') : "";
            ($p3 > 0 || $p3 == "NA") ? $pdf->Cell(8, 5, $p3, 1, 0, 'C') : "";
            ($p4 > 0 || $p4 == "NA") ? $pdf->Cell(8, 5, $p4, 1, 0, 'C') : "";
            ($p5 > 0 || $p5 == "NA") ? $pdf->Cell(8, 5, $p5, 1, 0, 'C') : "";
            ($p6 > 0 || $p6 == "NA") ? $pdf->Cell(8, 5, $p6, 1, 0, 'C') : "";
            ($p7 > 0 || $p7 == "NA") ? $pdf->Cell(8, 5, $p7, 1, 0, 'C') : "";
            ($p8 > 0 || $p8 == "NA") ? $pdf->Cell(8, 5, $p8, 1, 0, 'C') : "";
            ($p9 > 0 || $p9 == "NA") ? $pdf->Cell(8, 5, $p9, 1, 0, 'C') : "";
            $pdf->Ln();

            if($numero == 18 || $numero == 36 || $numero == 54)
            {
                $pdf->AddPage('L', 'Letter');
                $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                                   "carrera" => $carrera,
                                                                   "plan" => $plan,
                                                                   "profesor" => $profesor,
                                                                   "materia" => $materia,
                                                                   "grupo" => $grupo,
                                                                   "fecha" => $fecha,
                                                                   "seguimiento" => "")
                                                      );
                $pdf->SetXY($x, $y_encabezado);
                $this->generarEncabezadoTablaCalificaciones($pdf, $x_encabezado, $y_encabezado, $cuerpo);
                $pdf->SetFont('Montserrat-regular', '', 8);
                $pdf->Ln();
            }
            $numero = $numero + 1;
        }

        $pdf->Output('D', utf8_decode($carrera."_".$materia."_".$grupo)."_".$periodo.'.pdf');
    }

    public function actionListaalumnoscalificacionseguimientos($idgrupo, $idciclo, $seguimiento)
    {
        $idgrupo = Html::encode($idgrupo);
        $idciclo = Html::encode($idciclo);

        $materia = (new \yii\db\Query())
                            ->from(["grupos"])
                            ->select(["cat_materias.desc_materia"])
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->one();

        $encabezado = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                "ciclo.desc_ciclo",
                            	"cat_carreras.desc_carrera",
	                            "cat_carreras.plan_estudios",
	                            "grupos.desc_grupo",
	                            "grupos.desc_grupo_corto",
	                            "cat_materias.desc_materia",
                                "CONCAT(profesores.apaterno, ' ', profesores.amaterno, ' ', profesores.nombre_profesor) AS profesor"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["ciclo"], "ciclo.idciclo = grupos.idciclo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->innerJoin(["profesores"], "grupos.idprofesor = profesores.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo, "ciclo.idciclo" => $idciclo])
                            ->all();

        $cuerpo = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
                                "grupos_estudiantes.p1", "grupos_estudiantes.p2", "grupos_estudiantes.p3",
                                "grupos_estudiantes.p4", "grupos_estudiantes.p5", "grupos_estudiantes.p6",
                                "grupos_estudiantes.p7", "grupos_estudiantes.p8", "grupos_estudiantes.p9",
                                "grupos_estudiantes.s1", "grupos_estudiantes.s2", "grupos_estudiantes.s3",
                                "grupos_estudiantes.s4", "grupos_estudiantes.s5", "grupos_estudiantes.s6",
                                "grupos_estudiantes.s7", "grupos_estudiantes.s8", "grupos_estudiantes.s9",
                                "grupos_estudiantes.sp1", "grupos_estudiantes.sp2", "grupos_estudiantes.sp3",
                                "grupos_estudiantes.sp4", "grupos_estudiantes.sp5", "grupos_estudiantes.sp6",
                                "grupos_estudiantes.sp7", "grupos_estudiantes.sp8", "grupos_estudiantes.sp9"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

        $periodo = utf8_decode($encabezado[0]['desc_ciclo']);
        $fecha = date('Y-m-d');
        $carrera = $encabezado[0]['desc_carrera'];
        $plan = $encabezado[0]['plan_estudios'];
        $materia = $materia['desc_materia'];
        $grupo = $encabezado[0]['desc_grupo'];
        $profesor = utf8_decode($encabezado[0]['profesor']);

        $x_encabezado = 45;
        $y_encabezado = 77;

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Lista Calificacion');
        $pdf->AliasNbPages();
        $pdf->AddPage('L', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                           "carrera" => $carrera,
                                                           "plan" => $plan,
                                                           "profesor" => $profesor,
                                                           "materia" => $materia,
                                                           "grupo" => $grupo,
                                                           "fecha" => $fecha,
                                                           "seguimiento" => $seguimiento)
                                               );

        $x_encabezado = 45;
        $y_encabezado = 77;

        $x = $this->generarEncabezadoTablaCalificaciones($pdf, $x_encabezado, $y_encabezado, $cuerpo, $seguimiento);

        $pdf->Ln();

        $numero = 1;
        $pdf->SetFont('Montserrat-regular', '', 8);
        foreach ($cuerpo as $row)
        {
            $s1 = $row['s1'];
            $s2 = $row['s2'];
            $s3 = $row['s3'];
            $s4 = $row['s4'];
            $s5 = $row['s5'];
            $s6 = $row['s6'];
            $s7 = $row['s7'];
            $s8 = $row['s8'];
            $s9 = $row['s9'];

            $sp1 = $row['sp1'];
            $sp2 = $row['sp2'];
            $sp3 = $row['sp3'];
            $sp4 = $row['sp4'];
            $sp5 = $row['sp5'];
            $sp6 = $row['sp6'];
            $sp7 = $row['sp7'];
            $sp8 = $row['sp8'];
            $sp9 = $row['sp9'];

            $p1 = ($row['p1'] == "NA") ? (($s1 == "") ? $row['p1'] : $s1) : $row['p1'];
            $p2 = ($row['p2'] == "NA") ? (($s2 == "") ? $row['p2'] : $s2) : $row['p2'];
            $p3 = ($row['p3'] == "NA") ? (($s3 == "") ? $row['p3'] : $s3) : $row['p3'];
            $p4 = ($row['p4'] == "NA") ? (($s4 == "") ? $row['p4'] : $s4) : $row['p4'];
            $p5 = ($row['p5'] == "NA") ? (($s5 == "") ? $row['p5'] : $s5) : $row['p5'];
            $p6 = ($row['p6'] == "NA") ? (($s6 == "") ? $row['p6'] : $s6) : $row['p6'];
            $p7 = ($row['p7'] == "NA") ? (($s7 == "") ? $row['p7'] : $s7) : $row['p7'];
            $p8 = ($row['p8'] == "NA") ? (($s8 == "") ? $row['p8'] : $s8) : $row['p8'];
            $p9 = ($row['p9'] == "NA") ? (($s9 == "") ? $row['p9'] : $s9) : $row['p9'];

            $pdf->SetX($x);
            $pdf->Cell(8, 5, $numero, 1, 0, 'C');
            $pdf->Cell(25, 5, $row['idestudiante'], 1, 0, 'C');
            $pdf->Cell(75, 5, utf8_decode($row['nombre_estudiante']), 1, 0, 'L');
            ($sp1 == $seguimiento) ? (($p1 > 0 || $p1 == "NA") ? $pdf->Cell(8, 5, $p1, 1, 0, 'C') : "") : "";
            ($sp2 == $seguimiento) ? (($p2 > 0 || $p2 == "NA") ? $pdf->Cell(8, 5, $p2, 1, 0, 'C') : "") : "";
            ($sp3 == $seguimiento) ? (($p3 > 0 || $p3 == "NA") ? $pdf->Cell(8, 5, $p3, 1, 0, 'C') : "") : "";
            ($sp4 == $seguimiento) ? (($p4 > 0 || $p4 == "NA") ? $pdf->Cell(8, 5, $p4, 1, 0, 'C') : "") : "";
            ($sp5 == $seguimiento) ? (($p5 > 0 || $p5 == "NA") ? $pdf->Cell(8, 5, $p5, 1, 0, 'C') : "") : "";
            ($sp6 == $seguimiento) ? (($p6 > 0 || $p6 == "NA") ? $pdf->Cell(8, 5, $p6, 1, 0, 'C') : "") : "";
            ($sp7 == $seguimiento) ? (($p7 > 0 || $p7 == "NA") ? $pdf->Cell(8, 5, $p7, 1, 0, 'C') : "") : "";
            ($sp8 == $seguimiento) ? (($p8 > 0 || $p8 == "NA") ? $pdf->Cell(8, 5, $p8, 1, 0, 'C') : "") : "";
            ($sp9 == $seguimiento) ? (($p9 > 0 || $p9 == "NA") ? $pdf->Cell(8, 5, $p9, 1, 0, 'C') : "") : "";
            $pdf->Ln();

            if($numero == 18 || $numero == 36 || $numero == 54)
            {
                $pdf->AddPage('L', 'Letter');
                $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                                   "carrera" => $carrera,
                                                                   "plan" => $plan,
                                                                   "profesor" => $profesor,
                                                                   "materia" => $materia,
                                                                   "grupo" => $grupo,
                                                                   "fecha" => $fecha,
                                                                   "seguimiento" => $seguimiento)
                                                      );
                $pdf->SetXY($x, $y_encabezado);
                $this->generarEncabezadoTablaCalificaciones($pdf, $x_encabezado, $y_encabezado, $cuerpo, $seguimiento);
                $pdf->SetFont('Montserrat-regular', '', 8);
                $pdf->Ln();
            }
            $numero = $numero + 1;
        }

        $pdf->Output('D', utf8_decode($carrera."_".$materia."_".$grupo)."_".$periodo.'.pdf');
    }

    public function actionListaalumnoscalificacionprofesor($idprofesor, $idciclo)
    {
        $idciclo = Html::encode($idciclo);
        $idprofesor = Html::encode($idprofesor);

        $profesor_grupos = (new \yii\db\Query())
                            ->from(["grupos"])
                            ->select([
                                "grupos.idgrupo",
	                            "grupos.idciclo",
                                "cat_materias.desc_materia"
                            ])
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos.idprofesor" => $idprofesor, "grupos.idciclo" => $idciclo])
                            ->all();

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Lista Calificacion');
        $pdf->AliasNbPages();

        foreach ($profesor_grupos as $registros)
        {
            $idgrupo = $registros["idgrupo"];

            $encabezado = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                "ciclo.desc_ciclo",
                                "cat_carreras.desc_carrera",
                                "cat_carreras.plan_estudios",
                                "grupos.desc_grupo",
                                "grupos.desc_grupo_corto",
                                "cat_materias.desc_materia",
                                "CONCAT(profesores.apaterno, ' ', profesores.amaterno, ' ', profesores.nombre_profesor) AS profesor"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["ciclo"], "ciclo.idciclo = grupos.idciclo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->innerJoin(["profesores"], "grupos.idprofesor = profesores.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo, "ciclo.idciclo" => $idciclo])
                            ->all();

            $cuerpo = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
                                "cat_materias.desc_materia",
                                "grupos_estudiantes.p1", "grupos_estudiantes.p2", "grupos_estudiantes.p3",
                                "grupos_estudiantes.p4", "grupos_estudiantes.p5", "grupos_estudiantes.p6",
                                "grupos_estudiantes.p7", "grupos_estudiantes.p8", "grupos_estudiantes.p9",
                                "grupos_estudiantes.s1", "grupos_estudiantes.s2", "grupos_estudiantes.s3",
                                "grupos_estudiantes.s4", "grupos_estudiantes.s5", "grupos_estudiantes.s6",
                                "grupos_estudiantes.s7", "grupos_estudiantes.s8", "grupos_estudiantes.s9",
                                "grupos_estudiantes.sp1", "grupos_estudiantes.sp2", "grupos_estudiantes.sp3",
                                "grupos_estudiantes.sp4", "grupos_estudiantes.sp5", "grupos_estudiantes.sp6",
                                "grupos_estudiantes.sp7", "grupos_estudiantes.sp8", "grupos_estudiantes.sp9"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

            $periodo = utf8_decode($encabezado[0]['desc_ciclo']);
            $fecha = date('Y-m-d');
            $carrera = $encabezado[0]['desc_carrera'];
            $plan = $encabezado[0]['plan_estudios'];
            $materia = $registros["desc_materia"];
            $grupo = $encabezado[0]['desc_grupo'];
            $profesor = utf8_decode($encabezado[0]['profesor']);

            $pdf->AddPage('L', 'Letter');
            $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
            $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
            $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
            $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
            $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
            $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

            $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                               "carrera" => $carrera,
                                                               "plan" => $plan,
                                                               "profesor" => $profesor,
                                                               "materia" => $materia,
                                                               "grupo" => $grupo,
                                                               "fecha" => $fecha,
                                                               "seguimiento" => "")
                                                    );

            $x_encabezado = 45;
            $y_encabezado = 77;

            $x = $this->generarEncabezadoTablaCalificaciones($pdf, $x_encabezado, $y_encabezado, $cuerpo);

            $pdf->Ln();

            $numero = 1;
            $pdf->SetFont('Montserrat-regular', '', 8);
            foreach ($cuerpo as $row)
            {
                $s1 = $row['s1'];
                $s2 = $row['s2'];
                $s3 = $row['s3'];
                $s4 = $row['s4'];
                $s5 = $row['s5'];
                $s6 = $row['s6'];
                $s7 = $row['s7'];
                $s8 = $row['s8'];
                $s9 = $row['s9'];

                $p1 = ($row['p1'] == "NA") ? (($s1 == "") ? $row['p1'] : $s1) : $row['p1'];
                $p2 = ($row['p2'] == "NA") ? (($s2 == "") ? $row['p2'] : $s2) : $row['p2'];
                $p3 = ($row['p3'] == "NA") ? (($s3 == "") ? $row['p3'] : $s3) : $row['p3'];
                $p4 = ($row['p4'] == "NA") ? (($s4 == "") ? $row['p4'] : $s4) : $row['p4'];
                $p5 = ($row['p5'] == "NA") ? (($s5 == "") ? $row['p5'] : $s5) : $row['p5'];
                $p6 = ($row['p6'] == "NA") ? (($s6 == "") ? $row['p6'] : $s6) : $row['p6'];
                $p7 = ($row['p7'] == "NA") ? (($s7 == "") ? $row['p7'] : $s7) : $row['p7'];
                $p8 = ($row['p8'] == "NA") ? (($s8 == "") ? $row['p8'] : $s8) : $row['p8'];
                $p9 = ($row['p9'] == "NA") ? (($s9 == "") ? $row['p9'] : $s9) : $row['p9'];

                $pdf->SetX($x);
                $pdf->Cell(8, 5, $numero, 1, 0, 'C');
                $pdf->Cell(25, 5, $row['idestudiante'], 1, 0, 'C');
                $pdf->Cell(75, 5, utf8_decode($row['nombre_estudiante']), 1, 0, 'L');
                ($p1 > 0 || $p1 == "NA") ? $pdf->Cell(8, 5, $p1, 1, 0, 'C') : "";
                ($p2 > 0 || $p2 == "NA") ? $pdf->Cell(8, 5, $p2, 1, 0, 'C') : "";
                ($p3 > 0 || $p3 == "NA") ? $pdf->Cell(8, 5, $p3, 1, 0, 'C') : "";
                ($p4 > 0 || $p4 == "NA") ? $pdf->Cell(8, 5, $p4, 1, 0, 'C') : "";
                ($p5 > 0 || $p5 == "NA") ? $pdf->Cell(8, 5, $p5, 1, 0, 'C') : "";
                ($p6 > 0 || $p6 == "NA") ? $pdf->Cell(8, 5, $p6, 1, 0, 'C') : "";
                ($p7 > 0 || $p7 == "NA") ? $pdf->Cell(8, 5, $p7, 1, 0, 'C') : "";
                ($p8 > 0 || $p8 == "NA") ? $pdf->Cell(8, 5, $p8, 1, 0, 'C') : "";
                ($p9 > 0 || $p9 == "NA") ? $pdf->Cell(8, 5, $p9, 1, 0, 'C') : "";
                $pdf->Ln();

                if($numero == 18 || $numero == 36 || $numero == 54)
                {
                    $pdf->AddPage('L', 'Letter');
                    $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                                       "carrera" => $carrera,
                                                                       "plan" => $plan,
                                                                       "profesor" => $profesor,
                                                                       "materia" => $materia,
                                                                       "grupo" => $grupo,
                                                                       "fecha" => $fecha,
                                                                       "seguimiento" => "")
                                                           );
                    $pdf->SetXY($x, $y_encabezado);
                    $this->generarEncabezadoTablaCalificaciones($pdf, $x_encabezado, $y_encabezado, $cuerpo);
                    $pdf->SetFont('Montserrat-regular', '', 8);
                    $pdf->Ln();
                }
                $numero = $numero + 1;
            }
        }
        $pdf->Output('D', "Calificaciones ".utf8_decode($periodo).'.pdf');
    }

    private function generarEncabezadoTablaCalificaciones($pdf, $x, $y, $parciales, $seguimiento = "")
    {
        $x_encabezado = $x;
        $aumentar = 148;
        $disminuir = $x;
        $aumentar_encabezado = $x;

        for($i = 1; $i <= 9; $i++)
        {
            $parcial = $parciales[0]['p'.$i];
            $sp = $parciales[0]['sp'.$i];

            if($seguimiento == "")
            {
                if ($parcial > 0 || $parcial == "NA")
                {
                    $x_encabezado = $x_encabezado + 5;
                    if($i > 1)
                    {
                        $aumentar = $aumentar - 10;
                        $disminuir = $disminuir - 5;
                    }
                }
            }
            else
            {
                if ($sp == $seguimiento)
                {
                    if ($parcial > 0 || $parcial == "NA")
                    {
                        $x_encabezado = $x_encabezado + 5;
                        if ($i > 1)
                        {
                            $aumentar = $aumentar - 10;
                            $disminuir = $disminuir - 5;
                        }
                    }
                }
            }
        }
        
        $adicional = ($seguimiento > 1) ? 5 : 0;

        $pdf->SetXY($x_encabezado + $aumentar + $adicional, $y);

        for($j = 1; $j <= 9; $j++)
        {
            $parcial = $parciales[0]['p'.$j];
            $sp = $parciales[0]['sp'.$j];

            if($seguimiento == "")
            {
                if ($parcial > 0 || $parcial == "NA")
                {
                    $pdf->Cell(8, 5, 'T'.$j, 1, 0, 'C');
                }
            }
            else
            {
                if ($sp == $seguimiento)
                {
                    if ($parcial > 0 || $parcial == "NA")
                    {
                        $pdf->Cell(8, 5, 'T'.$j, 1, 0, 'C');
                    }
                }
            }
        }

        $pdf->SetFont('Montserrat-Bold', '', 8);
        $pdf->SetXY((45 + $disminuir), $y);
        $pdf->Cell(8, 5, 'NO.', 1, 0, 'C');
        $pdf->Cell(25, 5, 'NO. CONTROL', 1, 0, 'C');
        $pdf->Cell(75, 5, 'ESTUDIANTE', 1, 0, 'C');

        return 45 + $disminuir;
    }

    public function actionActacalificaciones($idgrupo)
    {
        $idgrupo = Html::encode($idgrupo);

        $materia = (new \yii\db\Query())
                            ->from(["grupos"])
                            ->select(["cat_materias.desc_materia"])
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos.idgrupo" => $idgrupo])
                            ->one();

        $encabezado = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                "ciclo.desc_ciclo",
                            	"cat_carreras.desc_carrera",
	                            "cat_carreras.plan_estudios",
	                            "grupos.desc_grupo",
	                            "grupos.desc_grupo_corto",
	                            "cat_materias.desc_materia",
                                "cat_materias.creditos",
                                "CONCAT(profesores.apaterno, ' ', profesores.amaterno, ' ', profesores.nombre_profesor) AS profesor",
                                "(SELECT COUNT(idestudiante) FROM grupos_estudiantes WHERE idgrupo = grupos.idgrupo) AS total_estudiantes"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["ciclo"], "ciclo.idciclo = grupos.idciclo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->innerJoin(["profesores"], "grupos.idprofesor = profesores.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo])
                            ->all();

        $cuerpo = (new \yii\db\Query())
                            ->from(["actas_calificaciones"])
                            ->select([
                                "estudiantes.sexo",
                                "actas_calificaciones.idestudiante",
                                "estudiantes.nombre_estudiante",
                                "actas_calificaciones.pri_opt", 
                                "actas_calificaciones.seg_opt",
                                "(CASE
                                    WHEN actas_calificaciones.idopcion_curso = 2 THEN
                                    'REP'
                                    WHEN actas_calificaciones.idopcion_curso = 3 THEN
                                    'ESP'
                                    WHEN actas_calificaciones.idopcion_curso = 4 THEN
                                    'DUAL'
                                    WHEN actas_calificaciones.idopcion_curso = 5 THEN
                                    'AUT' ELSE 'ORD'
                                END) AS opc_curso",
                                "(SELECT lunes FROM grupos WHERE idgrupo = actas_calificaciones.idgrupo) AS lunes",
                                "(SELECT martes FROM grupos WHERE idgrupo = actas_calificaciones.idgrupo) AS martes",
                                "(SELECT miercoles FROM grupos WHERE idgrupo = actas_calificaciones.idgrupo) AS miercoles",
                                "(SELECT jueves FROM grupos WHERE idgrupo = actas_calificaciones.idgrupo) AS jueves",
                                "(SELECT viernes FROM grupos WHERE idgrupo = actas_calificaciones.idgrupo) AS viernes",
                                "(SELECT sabado FROM grupos WHERE idgrupo = actas_calificaciones.idgrupo) AS sabado"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["estudiantes"], "estudiantes.idestudiante = actas_calificaciones.idestudiante")
                            ->where(["actas_calificaciones.idgrupo" => $idgrupo])
                            ->all();

        $periodo = utf8_decode($encabezado[0]['desc_ciclo']);
        $fecha = date('Y-m-d');
        $carrera = $encabezado[0]['desc_carrera'];
        $plan_estudios = $encabezado[0]['plan_estudios'];
        $materia = $materia['desc_materia'];
        $grupo = $encabezado[0]['desc_grupo'];
        $profesor = utf8_decode($encabezado[0]['profesor']);
        $creditos = $encabezado[0]['creditos'];
        $total_estudiantes = $encabezado[0]['total_estudiantes'];

        $lunes = (count($cuerpo) > 0) ? $cuerpo[0]['lunes'] : "";
        $martes = (count($cuerpo) > 0) ? $cuerpo[0]['martes'] : "";
        $miercoles = (count($cuerpo) > 0) ? $cuerpo[0]['miercoles'] : "";
        $jueves = (count($cuerpo) > 0) ? $cuerpo[0]['jueves'] : "";
        $viernes = (count($cuerpo) > 0) ? $cuerpo[0]['viernes'] : "";
        $sabado = (count($cuerpo) > 0) ? $cuerpo[0]['sabado'] : "";

        if($sabado != ""){
            $horario = "SABADO ".$sabado;
        }else{
            if($viernes != ""){
                $horario = "LUNES - VIERNES ".$lunes;
            }else{
                if($jueves != ""){
                    $horario = "LUNES - JUEVES ".$lunes;
                }else{
                    if($miercoles != ""){
                        $horario = "LUNES - MIERCOLES ".$lunes;
                    }else{
                        if($martes != ""){
                            $horario = "LUNES - MARTES ".$lunes;
                        }else{
                            if($lunes != ""){
                                $horario = "LUNES".$lunes;
                            }else{
                                $horario = "";
                            }
                        }
                    }
                }
            }
        }

        header('Content-type: application/pdf');
        $pdf = new PDF();
        $pdf->setReporte('Acta Calificaciones');
        $pdf->AliasNbPages();
        $pdf->AddPage('P', 'Letter');
        $pdf->AddFont('Montserrat-SemiBold', '', 'Montserrat-SemiBold.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-MediumItalic', '', 'Montserrat-MediumItalic.php');
        $pdf->AddFont('Montserrat-LightItalic', '', 'Montserrat-LightItalic.php');
        $pdf->AddFont('Montserrat-Bold', '', 'Montserrat-Bold.php');
        $pdf->AddFont('Montserrat-Regular', '', 'Montserrat-Regular.php');

        $this->generarEncabezadoCalificaciones($pdf, array("periodo" => $periodo,
                                                           "carrera" => $carrera,
                                                           "plan_estudios" => $plan_estudios,
                                                           "profesor" => $profesor,
                                                           "materia" => $materia,
                                                           "grupo" => $grupo,
                                                           "fecha" => $fecha,
                                                           "creditos" => $creditos,
                                                           "total_estudiantes" => $total_estudiantes,
                                                           "horario" => $horario,
                                                           "seguimiento" => ""),
                                                           "Vertical"
                                               );

        $pdf->SetFont('Montserrat-Bold', '', 8);
        $pdf->SetXY(5, 63);
        $pdf->Cell(8, 8, 'NO.', 1, 0, 'C');
        $pdf->Cell(13, 8, utf8_decode('GÉNERO'), 1, 0, 'C');
        $pdf->Cell(22, 8, 'NO. CONTROL', 1, 0, 'C');
        $pdf->Cell(90, 8, 'NOMBRE DEL ESTUDIANTE', 1, 0, 'C');

        $pdf->SetFont('Montserrat-regular', '', 7);
        $pdf->Cell(8, 8, 'Dual', 1, 0, 'C');
        $pdf->Cell(8, 8, 'Aut.', 1, 0, 'C');
        $pdf->Cell(8, 8, 'Ord.', 1, 0, 'C');
        $pdf->Cell(8, 8, 'Rep.', 1, 0, 'C');
        $pdf->Cell(8, 8, 'Esp.', 1, 0, 'C');

        $pdf->SetFont('Montserrat-Bold', '', 7);
        $pdf->Cell(30, 4, utf8_decode('CALIFICACIÓN'), 1, 0, 'C');
        $pdf->Ln();
        $pdf->SetX(178);
        $pdf->Cell(15, 4, utf8_decode('PO'), 1, 0, 'C');
        $pdf->Cell(15, 4, utf8_decode('SO'), 1, 0, 'C');
        $pdf->Ln();

        $numero = 1;
        $pdf->SetFont('Montserrat-regular', '', 8);

        $porcentaje_aprobados = 0;
        $porcentaje_reprobados = 0;
        $total_reprobados = 0;
        $total_aprobados = 0;
        $total_alumnos = count($cuerpo);
        foreach ($cuerpo as $row)
        {
            $genero = $row['sexo'];
            $idestudiante = $row['idestudiante'];
            $estudiante = $row['nombre_estudiante'];
            $opc_curso = $row['opc_curso'];
            $pri_opt = $row['pri_opt'];
            $seg_opt = $row['seg_opt'];

            $dual = ($opc_curso == "DUAL") ? "X" : "";
            $aut = ($opc_curso == "AUT") ? "X" : "";
            $ord = ($opc_curso == "ORD") ? "X" : "";
            $rep = ($opc_curso == "REP") ? "X" : "";
            $esp = ($opc_curso == "ESP") ? "X" : "";

            $calificacion = ($pri_opt != "") ? $pri_opt : $seg_opt;

            $reprobados = ($calificacion == "NA") ? 1 : 0;
            $total_reprobados = $total_reprobados + $reprobados;

            $aprobados = ($calificacion != "NA") ? 1 : 0;
            $total_aprobados = $total_aprobados + $aprobados;

            $pdf->SetX(5);
            $pdf->Cell(8, 4, $numero, 1, 0, 'C');
            $pdf->Cell(13, 4, $genero, 1, 0, 'C');
            $pdf->Cell(22, 4, $idestudiante, 1, 0, 'C');
            $pdf->Cell(90, 4, utf8_decode($estudiante), 1, 0, 'L');
            $pdf->Cell(8, 4, $dual, 1, 0, 'C');
            $pdf->Cell(8, 4, $aut, 1, 0, 'C');
            $pdf->Cell(8, 4, $ord, 1, 0, 'C');
            $pdf->Cell(8, 4, $rep, 1, 0, 'C');
            $pdf->Cell(8, 4, $esp, 1, 0, 'C');
            $pdf->Cell(15, 4, $pri_opt, 1, 0, 'C');
            $pdf->Cell(15, 4, $seg_opt, 1, 0, 'C');
            $pdf->Ln();

            $numero = $numero + 1;
        }
        $porcentaje_aprobados = ($total_aprobados > 0) ? round(($total_aprobados * 100) / $total_alumnos, 0) : 0;
        $porcentaje_reprobados = ($total_reprobados > 0) ? round(($total_reprobados * 100) / $total_alumnos, 0) : 0;

        $pdf->SetX(5);
        $pdf->Cell(173, 4, utf8_decode("% APROBACIÓN"), 0, 0, 'R');
        $pdf->Cell(15, 4, "%", 1, 0, 'C');
        $pdf->Cell(15, 4, $porcentaje_aprobados, 1, 0, 'C');
        $pdf->Ln();
        $pdf->SetX(5);
        $pdf->Cell(173, 4, utf8_decode("% REPROBACIÓN"), 0, 0, 'R');
        $pdf->Cell(15, 4, "%", 1, 0, 'C');
        $pdf->Cell(15, 4, $porcentaje_reprobados, 1, 0, 'C');

        $pdf->SetFont('Montserrat-regular', '', 9);
        $pdf->Ln(5);
        $pdf->SetX(5);
        $pdf->Cell(174, 4, utf8_decode("Este documento no es válido si tiene tachaduras o enmendaduras"), 0, 0, 'L');
        $pdf->Ln(5);
        $pdf->SetX(5);
        $pdf->Cell(174, 4, utf8_decode("PO = 1ra. Oportunidad  SO = 2da oportunidad"), 0, 0, 'L');
        $pdf->Ln(5);
        $pdf->SetX(5);
        $pdf->Cell(174, 4, utf8_decode("Aut.(curso global o autodidacta) Rep. (curso de repeticion) Esp.(curso especial)"), 0, 0, 'L');
        $pdf->Ln(5);
        $pdf->SetX(5);
        $pdf->Cell(174, 4, utf8_decode("Carretera del Golfo Malpaso – El Bellote, Km. 98.1, R/A Libertad, Huimanguillo, Tabasco, México. A 14 de julio de 2021"), 0, 0, 'L');

        $pdf->Ln(15);
        $pdf->SetX(60);
        $pdf->Cell(85, 4, utf8_decode("FIRMA DEL PROFESOR: _______________________________"), 0, 0, 'L');

        $pdf->Output('D', utf8_decode($carrera."_".$materia."_".$grupo)."_".$periodo.'.pdf');
    }

    private function generarEncabezadoCalificaciones($pdf, $datos = array(), $orientacion_hoja = "Horizontal")
    {
        $pdf->SetFont('Montserrat-SemiBold', '', 8);
        $pdf->SettextColor(0, 0, 0);

        if($orientacion_hoja == "Horizontal")
        {
            $pdf->Text(12, 60, utf8_decode('PERIODO:'));
            $pdf->Text(30, 60, utf8_decode($datos['periodo']));
            $pdf->Text(12, 65, utf8_decode('CARRERA:'));
            $pdf->Text(30, 65, utf8_decode($datos['carrera']));
            $pdf->Text(12, 70, utf8_decode('PLAN:'));
            $pdf->Text(30, 70, utf8_decode($datos['plan']));
            $pdf->Text(115, 60, 'PROFESOR:');
            $pdf->Text(135, 60, $datos['profesor']);
            $pdf->Text(115, 65, utf8_decode('MATERIA:'));
            $pdf->Text(135, 65, utf8_decode($datos['materia']));
            $pdf->Text(115, 70, utf8_decode('GRUPO:'));
            $pdf->Text(135, 70, utf8_decode($datos['grupo']));
            $pdf->Text(219, 60, 'FECHA:');
            $pdf->Text(243, 60, $datos['fecha']);

            if($datos['seguimiento'] != "")
            {
                $pdf->Text(219, 65, 'SEGUIMIENTO:');
                $pdf->Text(243, 65, $datos['seguimiento']);
            }
        }
        else if($orientacion_hoja == "Vertical")
        {
            $pdf->Text(12, 45, utf8_decode('CARRERA:'));
            $pdf->Text(37, 45, utf8_decode($datos['carrera']));
            $pdf->Text(12, 49, utf8_decode('MATERIA:'));
            $pdf->Text(37, 49, utf8_decode("PROBABILIDAD Y ESTADÍSTICA APLICADA AL CAMPO PETROLERO"));
            $pdf->Text(12, 53, utf8_decode('HORARIO:'));
            $pdf->Text(37, 53, $datos['horario']);
            $pdf->Text(12, 57, utf8_decode('CATEDRÁTICO:'));
            $pdf->Text(37, 57, strtoupper($datos['profesor']));

            $pdf->Text(150, 45, utf8_decode('PERIODO:'));
            $pdf->Text(175, 45, utf8_decode($datos['periodo']));
            $pdf->Text(150, 49, 'FECHA:');
            $pdf->Text(175, 49, $datos['fecha']);
            $pdf->Text(150, 53, 'ESTUDIANTES:');
            $pdf->Text(175, 53, $datos['total_estudiantes']);
            $pdf->Text(150, 57, 'PAQUETE:');
            $pdf->Text(175, 57, utf8_decode($datos['plan_estudios']));
            $pdf->Text(150, 61, utf8_decode('CRÉDITOS:'));
            $pdf->Text(175, 61, $datos['creditos']);
        }
    }
}