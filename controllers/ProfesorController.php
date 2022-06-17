<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\Response;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\data\Pagination;

use Carbon\Carbon;

use app\models\profesor\Profesor;
use app\models\profesor\ProfesorForm;
use app\models\profesor\ProfesorSearch;
use app\models\ciclo\Ciclo;
use app\models\ciclo\CicloSearch;
use app\models\ciclo\CicloProfesorSearch;
use app\models\grupo\Grupo;
use app\models\grupoestudiante\GrupoEstudiante;
use app\models\profesorseguimiento\ProfesorSeguimiento;
use app\models\login\Usuario;
use app\models\login\RolUsuario;
use app\models\User;

use app\repositories\ProfesorRepository;
use app\repositories\CicloRepository;
use app\repositories\UsuarioRepository;
use app\repositories\RolUsuarioRepository;

class ProfesorController extends Controller
{
    private $profesorRepository;
    private $cicloRepository;
    private $usuarioRepository;
    private $rolUsuarioRepository;

    #region public function behaviors()
    public function behaviors()
    {
        return [
                'access' => [
                    'class' => AccessControl::className(),
                    'only' => ['index', 
                               'create',
                               'update',
                               'delete',
                               'horario',
                               'listaalumnos',
                               'horarioconsulta',
                               'listaalumnoscalificacion',
                               'guardarcalificacion',
                               'listaalumnoscalificacionregularizacion',
                               'guardarcalificacionregularizacion',
                               'horarioprofesor',
                               'horarioprofesorconsulta',
                               'consultarprofesor',
                               'seguimientos',
                               'asignarseguimiento',
                               'asignarseguimientos',
                               'seguimientosactivos'],//Especificar que acciones se van proteger
                    'rules' => [
                        [
                            //El administrador tiene permisos sobre las siguientes acciones
                            'actions' => ['index', 
                                          'create',
                                          'update',
                                          'delete',
                                          'horario',
                                          'listaalumnos',
                                          'horarioconsulta',
                                          'listaalumnoscalificacion',
                                          'guardarcalificacion',
                                          'listaalumnoscalificacionregularizacion',
                                          'guardarcalificacionregularizacion',
                                          'horarioprofesor',
                                          'horarioprofesorconsulta',
                                          'consultarprofesor',
                                          'seguimientos',
                                          'asignarseguimiento',
                                          'asignarseguimientos',
                                          'seguimientosactivos'],//Especificar que acciones tiene permitidas este usuario
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
                            //Servicios escolares tiene permisos sobre las siguientes acciones
                            'actions' => ['index',
                                          'horarioconsulta',
                                          'listaalumnos',
                                          'seguimientos',
                                          'asignarseguimiento',
                                          'asignarseguimientos',
                                          'seguimientosactivos'
                            ],//Especificar que acciones tiene permitidas este usuario
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
                            //El profesor tiene permisos sobre las siguientes acciones
                            'actions' => ['index',
                                          'horario',
                                          'listaalumnos',
                                          'listaalumnoscalificacion',
                                          'guardarcalificacion',
                                          'listaalumnoscalificacionregularizacion',
                                          'guardarcalificacionregularizacion',
                                          'seguimientosactivos'
                            ],//Especificar que acciones tiene permitidas este usuario
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
                            //División de estudios tiene permisos sobre las siguientes acciones
                            'actions' => ['index',
                                          'horarioconsulta',
                                          'listaalumnos',
                                          'seguimientos',
                                          'asignarseguimiento',
                                          'asignarseguimientos',
                                          'listaalumnoscalificacion',
                                          'guardarcalificacion', 
                                          'listaalumnoscalificacionregularizacion',
                                          'guardarcalificacionregularizacion',
                                          'seguimientosactivos'
                            ],//Especificar que acciones tiene permitidas este usuario
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
                        ]
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
    #endregion

    #region public function __construct()
    public function __construct($id, $module,
                                ProfesorRepository $profesorRepository,
                                CicloRepository $cicloRepository,
                                UsuarioRepository $usuarioRepository,
                                RolUsuarioRepository $rolUsuarioRepository
                                )
    {
        parent::__construct($id, $module);
        $this->profesorRepository = $profesorRepository;
        $this->cicloRepository = $cicloRepository;
        $this->usuarioRepository = $usuarioRepository;
        $this->rolUsuarioRepository = $rolUsuarioRepository;
    }
    #endregion

    #region public function actionIndex()
    public function actionIndex()
    {
        /*
        $idusuario = Yii::$app->user->identity->idusuario;
        $roles = RolUsuario::find()->where(["idusuario" => $idusuario])->all();

        foreach($roles as $row)
        {
            echo $row['idrol']."<br />";
        }
        */
        if(User::isUserAutenticado(Yii::$app->user->identity->idusuario, 2) || User::isUserAutenticado(Yii::$app->user->identity->idusuario, 4))
        {
            return $this->redirect(['horarioconsulta']);
        }
        else if(User::isUserAutenticado(Yii::$app->user->identity->idusuario, 3))
        {
            return $this->redirect(['horario']);
        }

        $form = new ProfesorSearch;
        $msg = (Html::encode(isset($_GET['msg']))) ? Html::encode($_GET['msg']) : null;
        $error = (Html::encode(isset($_GET['error']))) ? Html::encode($_GET['error']) : null;
        $ciclos = $this->cicloRepository->listaRegistros(['idciclo' => SORT_DESC]);
        $ultimo_ciclo = $this->cicloRepository->maxId();

        $model = $this->profesorRepository->all();//Se ejecuta consulta de todos los registgros

        if($form->load(Yii::$app->request->get()))
        {
            if($form->validate())
            {
                $this->profesorRepository->search = Html::encode($form->buscar);//Pasamos parámetro para la búsqueda

                $model = $this->profesorRepository->all(true);//Se ejecuta consulta con parámetro de búsqueda
            }
            else
            {
                $form->getErrors();
            }
        }

        $pages = $this->profesorRepository->getPages();

        if(count($model) == 0)
        {
            $error = 2;
            $msg = 'No se encontró información relacionada con el criterio de búsqueda';
        }

        return $this->render('index', compact('model', 'form', 'msg', 'error', 'pages', 'ciclos', 'ultimo_ciclo'));
    }
    #endregion

    #region public function actionCreate($msg = "", $error = "")
    public function actionCreate($msg = "", $error = "")
    {
        $model = new ProfesorForm;
        $clave_estatus = ["VIG" => "VIGENTE"];

        if(Yii::$app->request->get() && $error != 1)
        {
            $model->attributes = $_GET['modelo'];
        }

        return $this->render("form", ["model" => $model, "status" => 0, "msg" => $msg, "error" => $error, "clave_estatus" => $clave_estatus]);

        return $this->render('form', compact('model', 'msg', 'error', 'clave_estatus'));
    }
    #endregion

    #region public function actionStore()
    public function actionStore()
    {
        $model = new ProfesorForm;

        if($model->load(Yii::$app->request->post()) && Yii::$app->request->isAjax)
        {
            Yii::$app->response->format = Response::FORMAT_JSON;

            return ActiveForm::validate($model);
        }

        if ($model->load(Yii::$app->request->post()))
        {
            $idprofesor = $model->idprofesor;
            $existe_profesor = $this->profesorRepository->totalProfesor((int)$idprofesor);

            if ($model->validate())
            {
                if ($existe_profesor == 0)
                {
                    if ($this->profesorRepository->store($model))
                    {
                        $idusuario = $this->usuarioRepository->maxId() + 1;
                        $model1 = [
                            'idusuario' => $idusuario,
                            'nombre_usuario' => $model->curp,
                            'email' => $model->email,
                            'password' => crypt($model->password, Yii::$app->params['salt']),
                            'cve_estatus' => 'VIG',
                            'authKey' => '',
                            'accessToken' => '',
                            'activate' => 1,
                            'curp' => $model->curp,
                            'fecha_registro' => Carbon::parse(strtotime($model->fecha_registro))->format('Y-m-d'),
                            'fecha_actualizacion' => Carbon::parse(strtotime($model->fecha_actualizacion))->format('Y-m-d'),
                            'verification_code' => ''                           
                        ];

                        if($this->usuarioRepository->store($model1))
                        {
                            $model2 = [
                                'idusuario' => $idusuario,
                                'idrol' => 3
                            ];

                            if($this->rolUsuarioRepository->store($model2))
                            {
                                $msg = "Profesor agregado";
                                $error = 1;
                            }
                            else
                            {
                                $msg = "Ocurrió un error al intentar agregar el profesor, intenta nuevamente";
                                $error = 3;
                            }
                        }
                        else
                        {
                            $msg = "Ocurrió un error al intentar agregar el profesor, intenta nuevamente";
                            $error = 3;
                        }
                    }
                    else
                    {
                        $msg = "Ocurrió un error al intentar agregar el profesor, intenta nuevamente";
                        $error = 3;
                    }
                }
                else
                {
                    $msg = "Usuario ya existe";
                    $error = 3;
                }

                $modelo = [
                    "idprofesor" => $model->idprofesor,
                    "curp" => $model->curp,
                    "nombre_profesor" => $model->nombre_profesor,
                    "apaterno" => $model->apaterno,
                    "amaterno" => $model->amaterno,
                    "fecha_registro" => $model->fecha_registro,
                    "fecha_actualizacion" => $model->fecha_actualizacion,
                    "cve_estatus" => $model->cve_estatus
                ];

                return $this->redirect(["profesor/create", "msg" => $msg, "error" => $error, "modelo" => $modelo]);
            }
            else
            {
                $model->getErrors();
            } 
        }
        else
        {
            return $this->redirect(["profesor/index"]);
        }
    }
    #endregion

    #region public function actionEdit($idprofesor, $msg = "", $error = "")
    public function actionEdit($idprofesor, $msg = "", $error = "")
    {
        if(Yii::$app->request->get())
        {
            $idprofesor = Html::encode($idprofesor);
            $msg = Html::encode($msg);
            $error = Html::encode($error);
            $model = new ProfesorForm;
            $status = 1;

            if($idprofesor)
            {
                $clave_estatus = ["VIG" => "VIGENTE", "BT" => "BAJA TEMPORAL", "BD" => "BAJA DEFINITIVA"];
                $table = $this->profesorRepository->get($idprofesor);

                if($table)
                {
                    $model->attributes = $table->attributes;

                    $usuario = $this->usuarioRepository->consultarUsuarioPorCurp($table->curp);// Usuario::find()->where(["curp" => $table->curp])->one();
                }
                else
                {
                    return $this->redirect(['profesor/index']);
                }
            }
            else
            {
                return $this->redirect(['profesor/index']);
            }
        }
        else
        {
            return $this->redirect(['profesor/index']);
        }

        return $this->render('form', compact('model', 'status', 'msg', 'error', 'clave_estatus', 'usuario'));
    }
    #endregion

    #region public function actionUpdate()
    public function actionUpdate()
    {
        $model = new ProfesorForm;
        

        if($model->load(Yii::$app->request->post()) && Yii::$app->request->isAjax)
        {
            Yii::$app->response->format = Response::FORMAT_JSON;

            return ActiveForm::validate($model);
        }

        if($model->load(Yii::$app->request->post()))
        {
            if($model->validate())
            {
                $idprofesor = $model->idprofesor;
                $msg = false;

                $table = $this->profesorRepository->get($idprofesor);

                if($table)
                {
                    $error = 1;

                    //$idusuario = Usuario::find()->select("idusuario")->where(["curp" => $model->curp])->one();
                    $usuario = $this->usuarioRepository->consultarUsuarioPorCurp($model->curp);

                    $table1 = Usuario::findOne($usuario->idusuario);
                    $table1->email = $model->email;
                    $table1->password = crypt($model->password, Yii::$app->params['salt']);
                    $table1->update()

                    if($this->profesorRepository->update($model, $idprofesor))
                    {
                        if($table->update() || $table1->update())
                        {
                            $msg = "Registro actualizado";
                        }
                        else
                        {
                            $msg = "No detectaron cambios en el registro";
                        }
                    }
                    else
                    {
                        $msg = "No detectaron cambios en el registro";
                    }

                    /* s$table->curp = $model->curp;
                    $table->nombre_profesor = $model->nombre_profesor;
                    $table->apaterno = $model->apaterno;
                    $table->amaterno = $model->amaterno;
                    $table->fecha_actualizacion = $model->fecha_actualizacion; //Carbon::parse(strtotime($model->fecha_actualizacion))->format('Y-m-d');
                    $table->cve_estatus = $model->cve_estatus; */
                }
                else
                {
                    $msg = "Profesor no encontrado";
                    $error = 2;
                }
            }
            else
            {
                return $this->getErrors();
            }
            return $this->redirect(["profesor/edit", "idprofesor" => $idprofesor, "msg" => $msg, "error" => $error]);
        }
        else
        {
            return $this->redirect(["profesor/index"]);
        }
    }
    #endregion

    #region public function actionDelete()
    public function actionDelete()
    {
        if(Yii::$app->request->post())
        {
            $idprofesor = Html::encode($_POST["idprofesor"]);

            $total_relacion = Grupo::find()
                                    ->where(["idprofesor" => $idprofesor])
                                    ->count();

            if($total_relacion == 0)
            {
                if(Profesor::deleteAll("idprofesor=:idprofesor", [":idprofesor" => $idprofesor]))
                {
                    $error = 1;
                    $msg = "Registro eliminado";
                }
                else
                {
                    $error = 3;
                    $msg = "Error al eliminar el registro";
                }
            }
            else
            {
                $error = 3;
                $msg = "El registro no puede ser eliminado, debido a que contiene información relacionada";
            }
            header("Location: ".Url::toRoute("/profesor/index?msg=$msg&error=$error"));
            exit;
        }
        else
        {
            return $this->redirect(["profesor/index"]);
        }
    }
    #endregion

    #region public function actionHorario()
    public function actionHorario()
    {
        $form = new CicloSearch;
        $idciclo = Ciclo::find()->max("idciclo");
        $ultimo_ciclo = $idciclo;
        $ciclo = Ciclo::find()->where(["idciclo" => $idciclo])->one();

        $curp = Html::encode(Yii::$app->user->identity->curp);
        $sql_profesor = Profesor::find()->where(["curp" => $curp])->One();
        $idprofesor = $sql_profesor->idprofesor;

        $ciclos = ArrayHelper::map(Ciclo::find()->orderBy(["idciclo" => SORT_DESC])->all(), "idciclo", "desc_ciclo");
 
        if($form->load(Yii::$app->request->get()))
        {
            if($form->validate())
            {
                $idciclo = Html::encode($form->idciclo);
            }
            else
            {
                $form->getErrors();
            }
        }

        $sql = "SELECT
                    *
                FROM
                    horario_profesor_v
                WHERE
                    idprofesor = :idprofesor
                AND
	                idciclo = :idciclo
                ORDER BY
                    lunes, viernes, sabado";
        $model = Yii::$app->db->createCommand($sql)
                              ->bindValue(":idprofesor", $idprofesor)
                              ->bindValue(":idciclo", $idciclo)
                              ->queryAll();

        $ciclo_actual = ($idciclo) ? ((count($model) > 0) ? $model[0]["desc_ciclo"] : $ciclo["desc_ciclo"]) : $ciclo->desc_ciclo;
        $regularizacion_status = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => 5, "bandera" => 1])->count();
        $seguimiento1 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => 1, "bandera" => 1])->count();
        $seguimiento2 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => 2, "bandera" => 1])->count();
        $seguimiento3 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => 3, "bandera" => 1])->count();
        $seguimiento4 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => 4, "bandera" => 1])->count();

        return $this->render("horario", ["model" => $model,
                             "form" => $form,
                             "ciclos" => $ciclos,
                             "idciclo" => $idciclo,
                             "idprofesor" => $idprofesor,
                             "ciclo_actual" => $ciclo_actual,
                             "ultimo_ciclo" => $ultimo_ciclo,
                             "regularizacion_status" => $regularizacion_status,
                             "seguimiento1" => $seguimiento1,
                             "seguimiento2" => $seguimiento2,
                             "seguimiento3" => $seguimiento3,
                             "seguimiento4" => $seguimiento4
                             ]);
    }
    #endregion

    #region public function actionListaalumnos()
    public function actionListaalumnos()
    {
        $this->layout = 'main1';//Cambio de layout

        if(Yii::$app->request->get("idgrupo"))
        {

            $idgrupo = Html::encode($_GET["idgrupo"]);
            $idciclo = (Html::encode($_GET["idciclo"]) == "") ? Ciclo::find()->max("idciclo") : Html::encode($_GET["idciclo"]);

            $model = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
	                            "estudiantes.sexo",
	                            "cat_opcion_curso.desc_opcion_curso"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

            $model1 = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                    "cat_materias.desc_materia",
    	                            "cat_carreras.desc_carrera"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["cat_materias"], "cat_materias.idmateria = grupos.idmateria")
                            ->where(["grupos.idgrupo" => $idgrupo])
                            ->andFilterWhere(["grupos.idciclo" => $idciclo])
                            ->all();

            return $this->render("listaAlumnos", ["model" => $model, "model1" => $model1, "idciclo" => $idciclo, "idgrupo" => $idgrupo]);
        }
    }
    #endregion

    #region public function actionHorarioconsulta()
    public function actionHorarioconsulta()
    {
        $form = new CicloProfesorSearch;
        $ciclo = null;
        $idciclo = null;
        $idprofesor = null;
        $profesores = ArrayHelper::map(Profesor::find()->orderBy(["apaterno" => SORT_ASC, "amaterno" => SORT_ASC, "nombre_profesor" => SORT_ASC])->asArray()->all(),'idprofesor', function($model){
            return $model['apaterno']." ".$model['amaterno']." ".$model['nombre_profesor'];
        });
        $ciclos = ArrayHelper::map(Ciclo::find()->orderBy(["idciclo" => SORT_DESC])->all(), 'idciclo', 'desc_ciclo');
        $msg = (Html::encode(isset($_GET["msg"]))) ? Html::encode($_GET["msg"]) : null;
        $error = (Html::encode(isset($_GET["error"]))) ? Html::encode($_GET["error"]) : null;

        if($form->load(Yii::$app->request->get()))
        {
            if($form->validate())
            {
                $idciclo = Html::encode($form->idciclo);
                $idprofesor = Html::encode($form->idprofesor);

                $sql = Ciclo::find()->where(["idciclo" => $idciclo])->one();
                $ciclo = $sql['desc_ciclo'];

                $sql = "SELECT
                            *
                        FROM
                            horario_profesor_v
                        WHERE
                            idprofesor = :idprofesor
                        AND
                            idciclo = :idciclo
                        ORDER BY
                            lunes, viernes, sabado";
                $model = Yii::$app->db->createCommand($sql)
                                      ->bindValue(':idprofesor', $idprofesor)
                                      ->bindValue(':idciclo', $idciclo)
                                      ->queryAll();
            }
            else
            {
                $form->getErrors();
            }
        }
        else if(Yii::$app->request->get())
        {
            $idciclo = Html::encode($_GET["idciclo"]);
            $idprofesor = Html::encode($_GET["idprofesor"]);

            $sql = Ciclo::find()->where(["idciclo" => $idciclo])->one();
            $ciclo = $sql['desc_ciclo'];

                $sql = "SELECT
                            *
                        FROM
                            horario_profesor_v
                        WHERE
                            idprofesor = :idprofesor
                        AND
                            idciclo = :idciclo
                        ORDER BY
                            lunes, viernes, sabado";
                $model = Yii::$app->db->createCommand($sql)
                                      ->bindValue(':idprofesor', $idprofesor)
                                      ->bindValue(':idciclo', $idciclo)
                                      ->queryAll();
        }
        else
        {
            $sql = "SELECT
                        *
                    FROM
                        horario_profesor_v
                    WHERE
                        idprofesor = null
                    ORDER BY
                        lunes, viernes, sabado";
            $model = Yii::$app->db->createCommand($sql)
                                  ->queryAll();
        }

        $ultimo_ciclo = Ciclo::find()->max("idciclo");
        $regularizacion_status = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 5, "bandera" => 1])->count();

        $seguimiento1 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 1, "bandera" => 1])->count();
        $seguimiento2 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 2, "bandera" => 1])->count();
        $seguimiento3 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 3, "bandera" => 1])->count();
        $seguimiento4 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 4, "bandera" => 1])->count();

        return $this->render("horarioconsulta", ["model" => $model,
                                                "form" => $form,
                                                "ciclos" => $ciclos,
                                                "idciclo" => $idciclo,
                                                "ciclo_actual" => $ciclo,
                                                "idprofesor" => $idprofesor,
                                                "profesores" => $profesores,
                                                "ultimo_ciclo" => $ultimo_ciclo,
                                                "regularizacion_status" => $regularizacion_status,
                                                "seguimiento1" => $seguimiento1,
                                                "seguimiento2" => $seguimiento2,
                                                "seguimiento3" => $seguimiento3,
                                                "seguimiento4" => $seguimiento4,
                                                "msg" => $msg,
                                                "error" => $error
                                            ]);
    }
    #endregion

    #region public function actionListaalumnoscalificacion($idgrupo, $idciclo, $idprofesor, $ultimo_ciclo)
    public function actionListaalumnoscalificacion($idgrupo, $idciclo, $idprofesor, $ultimo_ciclo)
    {
        if(isset($idgrupo))
        {
            $idgrupo = Html::encode($idgrupo);
            $idprofesor = Html::encode($idprofesor);
            $idciclo = (Html::encode($idciclo) == "") ? Ciclo::find()->max("idciclo") : Html::encode($idciclo);
            $ultimo_ciclo = Html::encode($ultimo_ciclo);

            $model = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
	                            "estudiantes.sexo",
	                            "cat_opcion_curso.desc_opcion_curso",
                                "grupos_estudiantes.p1",
	                            "grupos_estudiantes.p2",
	                            "grupos_estudiantes.p3",
	                            "grupos_estudiantes.p4",
	                            "grupos_estudiantes.p5",
	                            "grupos_estudiantes.p6",
	                            "grupos_estudiantes.p7",
	                            "grupos_estudiantes.p8",
	                            "grupos_estudiantes.p9",
	                            "grupos_estudiantes.s1",
	                            "grupos_estudiantes.s2",
	                            "grupos_estudiantes.s3",
	                            "grupos_estudiantes.s4",
	                            "grupos_estudiantes.s5",
	                            "grupos_estudiantes.s6",
	                            "grupos_estudiantes.s7",
	                            "grupos_estudiantes.s8",
	                            "grupos_estudiantes.s9",
                                "grupos_estudiantes.sp1",
	                            "grupos_estudiantes.sp2",
	                            "grupos_estudiantes.sp3",
	                            "grupos_estudiantes.sp4",
	                            "grupos_estudiantes.sp5",
	                            "grupos_estudiantes.sp6",
	                            "grupos_estudiantes.sp7",
	                            "grupos_estudiantes.sp8",
	                            "grupos_estudiantes.sp9"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

            $model1 = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                    "cat_materias.desc_materia",
    	                            "cat_carreras.desc_carrera",
                                    "grupos.num_semestre",
                                    "grupos.desc_grupo",
                                    "CONCAT( profesores.apaterno,' ',profesores.amaterno,' ',profesores.nombre_profesor) AS profesor"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["cat_materias"], "cat_materias.idmateria = grupos.idmateria")
                            ->innerJoin(["profesores"], "profesores.idprofesor = grupos.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo])
                            ->andFilterWhere(["grupos.idciclo" => $idciclo])
                            ->all();

            $regular = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 5, "bandera" => 1])->count();

            $ultimo_seguimiento = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => "<5"])->max("seguimiento");

            return $this->render("listaAlumnosCalificacion", ["model" => $model,
                                                              "model1" => $model1,
                                                              "idciclo" => $idciclo,
                                                              "idgrupo" => $idgrupo,
                                                              "idprofesor" => $idprofesor,
                                                              "ultimo_ciclo" => $ultimo_ciclo,
                                                              "ultimo_seguimiento" => $ultimo_seguimiento]);
        }
    }
    #endregion

    #region public function actionListaalumnoscalificacionseguimientos($idgrupo, $idciclo, $idprofesor, $ultimo_ciclo)
    public function actionListaalumnoscalificacionseguimientos($idgrupo, $idciclo, $idprofesor, $ultimo_ciclo)
    {
        if(isset($idgrupo))
        {
            $idgrupo = Html::encode($idgrupo);
            $idprofesor = Html::encode($idprofesor);
            $idciclo = (Html::encode($idciclo) == "") ? Ciclo::find()->max("idciclo") : Html::encode($idciclo);
            $ultimo_ciclo = Html::encode($ultimo_ciclo);

            $model = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
	                            "estudiantes.sexo",
	                            "cat_opcion_curso.desc_opcion_curso",
                                "grupos_estudiantes.p1",
	                            "grupos_estudiantes.p2",
	                            "grupos_estudiantes.p3",
	                            "grupos_estudiantes.p4",
	                            "grupos_estudiantes.p5",
	                            "grupos_estudiantes.p6",
	                            "grupos_estudiantes.p7",
	                            "grupos_estudiantes.p8",
	                            "grupos_estudiantes.p9",
	                            "grupos_estudiantes.s1",
	                            "grupos_estudiantes.s2",
	                            "grupos_estudiantes.s3",
	                            "grupos_estudiantes.s4",
	                            "grupos_estudiantes.s5",
	                            "grupos_estudiantes.s6",
	                            "grupos_estudiantes.s7",
	                            "grupos_estudiantes.s8",
	                            "grupos_estudiantes.s9",
                                "grupos_estudiantes.sp1",
	                            "grupos_estudiantes.sp2",
	                            "grupos_estudiantes.sp3",
	                            "grupos_estudiantes.sp4",
	                            "grupos_estudiantes.sp5",
	                            "grupos_estudiantes.sp6",
	                            "grupos_estudiantes.sp7",
	                            "grupos_estudiantes.sp8",
	                            "grupos_estudiantes.sp9"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

            $model1 = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                    "cat_materias.desc_materia",
    	                            "cat_carreras.desc_carrera",
                                    "grupos.num_semestre",
                                    "grupos.desc_grupo",
                                    "CONCAT( profesores.apaterno,' ',profesores.amaterno,' ',profesores.nombre_profesor) AS profesor"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["cat_materias"], "cat_materias.idmateria = grupos.idmateria")
                            ->innerJoin(["profesores"], "profesores.idprofesor = grupos.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo])
                            ->andFilterWhere(["grupos.idciclo" => $idciclo])
                            ->all();

            //$regular = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 5, "bandera" => 1])->count();

            $seguimiento1 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 1, "bandera" => 1])->count();
            $seguimiento2 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 2, "bandera" => 1])->count();
            $seguimiento3 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 3, "bandera" => 1])->count();
            $seguimiento4 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 4, "bandera" => 1])->count(); 

            return $this->render("listaAlumnosCalificacionSeguimientos", ["model" => $model,
                                                                          "model1" => $model1,
                                                                          "idciclo" => $idciclo,
                                                                          "idgrupo" => $idgrupo,
                                                                          "idprofesor" => $idprofesor,
                                                                          "seguimiento1" => $seguimiento1,
                                                                          "seguimiento2" => $seguimiento2,
                                                                          "seguimiento3" => $seguimiento3,
                                                                          "seguimiento4" => $seguimiento4,
                                                                          "ultimo_ciclo" => $ultimo_ciclo]);
        }
    }
    #endregion

    #region public function actionGuardarcalificacion()
    public function actionGuardarcalificacion()
    {
        if(Yii::$app->request->post())
        {
            $idgrupo = Html::encode($_POST["idgrupo"]);
            $idciclo = Html::encode($_POST["idciclo"]);
            $idprofesor = Html::encode($_POST["idprofesor"]);
            $ultimo_ciclo = Ciclo::find()->max("idciclo");
            $r = Html::encode($_POST["r"]);

            $seguimiento1 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 1, "bandera" => 1])->count();
            $seguimiento2 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 2, "bandera" => 1])->count();
            $seguimiento3 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 3, "bandera" => 1])->count();
            $seguimiento4 = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 4, "bandera" => 1])->count();

            $total = count($_POST["p1"]);

            for($i = 0; $i < $total; $i++)
            {
                $idestudiante = Html::encode($_POST["idestudiante"][$i]);

                $p1 = Html::encode($_POST["p1"][$i]);
                $p2 = Html::encode($_POST["p2"][$i]);
                $p3 = Html::encode($_POST["p3"][$i]);
                $p4 = Html::encode($_POST["p4"][$i]);
                $p5 = Html::encode($_POST["p5"][$i]);
                $p6 = Html::encode($_POST["p6"][$i]);
                $p7 = Html::encode($_POST["p7"][$i]);
                $p8 = Html::encode($_POST["p8"][$i]);
                $p9 = Html::encode($_POST["p9"][$i]);

                $table = GrupoEstudiante::findOne(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante]);

                if($table)
                {
                    $seguimiento = ($seguimiento1 == 1) ? 1 : (($seguimiento2 == 1) ? 2 : (($seguimiento3 == 1) ? 3 : (($seguimiento4 == 1) ? 4 : "")));
                    $ultimo_seguimiento = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor])->max("seguimiento");

                    $sp2_sql = GrupoEstudiante::find()->select("sp2")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp2", [1, 2, 3, 4]])->one();
                    $sp3_sql = GrupoEstudiante::find()->select("sp3")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp3", [1, 2, 3, 4]])->one();
                    $sp4_sql = GrupoEstudiante::find()->select("sp4")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp4", [1, 2, 3, 4]])->one();
                    $sp5_sql = GrupoEstudiante::find()->select("sp5")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp5", [1, 2, 3, 4]])->one();
                    $sp6_sql = GrupoEstudiante::find()->select("sp6")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp6", [1, 2, 3, 4]])->one();
                    $sp7_sql = GrupoEstudiante::find()->select("sp7")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp7", [1, 2, 3, 4]])->one();
                    $sp8_sql = GrupoEstudiante::find()->select("sp8")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp8", [1, 2, 3, 4]])->one();
                    $sp9_sql = GrupoEstudiante::find()->select("sp9")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp9", [1, 2, 3, 4]])->one();

                    $sp2_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp2", [1, 2, 3, 4]])->count();
                    $sp3_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp3", [1, 2, 3, 4]])->count();
                    $sp4_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp4", [1, 2, 3, 4]])->count();
                    $sp5_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp5", [1, 2, 3, 4]])->count();
                    $sp6_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp6", [1, 2, 3, 4]])->count();
                    $sp7_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp7", [1, 2, 3, 4]])->count();
                    $sp8_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp8", [1, 2, 3, 4]])->count();
                    $sp9_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp9", [1, 2, 3, 4]])->count();

                    $sp1 = 1;
                    $sp2 = ($p2 != "") ? (($sp2_sql_total > 0) ? $sp2_sql->sp2 : $seguimiento) : "";
                    $sp3 = ($p3 != "") ? (($sp3_sql_total > 0) ? $sp3_sql->sp3 : $seguimiento) : "";
                    $sp4 = ($p4 != "") ? (($sp4_sql_total > 0) ? $sp4_sql->sp4 : $seguimiento) : "";
                    $sp5 = ($p5 != "") ? (($sp5_sql_total > 0) ? $sp5_sql->sp5 : (($ultimo_seguimiento == 4) ? $ultimo_seguimiento : $seguimiento)) : "";
                    $sp6 = ($p6 != "") ? (($sp6_sql_total > 0) ? $sp6_sql->sp6 : (($ultimo_seguimiento == 4) ? $ultimo_seguimiento : $seguimiento)) : "";
                    $sp7 = ($p7 != "") ? (($sp7_sql_total > 0) ? $sp7_sql->sp7 : (($ultimo_seguimiento == 4) ? $ultimo_seguimiento : $seguimiento)) : "";
                    $sp8 = ($p8 != "") ? (($sp8_sql_total > 0) ? $sp8_sql->sp8 : (($ultimo_seguimiento == 4) ? $ultimo_seguimiento : $seguimiento)) : "";
                    $sp9 = ($p9 != "") ? (($sp9_sql_total > 0) ? $sp9_sql->sp9 : (($ultimo_seguimiento == 4) ? $ultimo_seguimiento : $seguimiento)) : "";

                    $table->p1 = $p1;
                    $table->p2 = $p2;
                    $table->p3 = $p3;
                    $table->p4 = $p4;
                    $table->p5 = $p5;
                    $table->p6 = $p6;
                    $table->p7 = $p7;
                    $table->p8 = $p8;
                    $table->p9 = $p9;

                    $table->sp1 = $sp1;
                    $table->sp2 = $sp2;
                    $table->sp3 = $sp3;
                    $table->sp4 = $sp4;
                    $table->sp5 = $sp5;
                    $table->sp6 = $sp6;
                    $table->sp7 = $sp7;
                    $table->sp8 = $sp8;
                    $table->sp9 = $sp9;

                    /** Asigna calificaciones para calificaciones de repetición */
                    $table->s1 = ($p1 == "NA") ? $p1 : "";
                    $table->s2 = ($p2 == "NA") ? $p2 : "";
                    $table->s3 = ($p3 == "NA") ? $p3 : "";
                    $table->s4 = ($p4 == "NA") ? $p4 : "";
                    $table->s5 = ($p5 == "NA") ? $p5 : "";
                    $table->s6 = ($p6 == "NA") ? $p6 : "";
                    $table->s7 = ($p7 == "NA") ? $p7 : "";
                    $table->s8 = ($p8 == "NA") ? $p8 : "";
                    $table->s9 = ($p9 == "NA") ? $p9 : "";

                    $table->update();
                }    
            }

            header("Location: ".Url::toRoute("/profesor/listaalumnoscalificacion?idgrupo=$idgrupo&idciclo=$idciclo&idprofesor=$idprofesor&ultimo_ciclo=$ultimo_ciclo&r=$r"));
            exit;
        }
    }
    #endregion

    #region public function actionGuardarcalificacionseguimientos()
    public function actionGuardarcalificacionseguimientos()
    {
        if(Yii::$app->request->post())
        {
            $idgrupo = Html::encode($_POST["idgrupo"]);
            $idciclo = Html::encode($_POST["idciclo"]);
            $idprofesor = Html::encode($_POST["idprofesor"]);
            $ultimo_ciclo = Ciclo::find()->max("idciclo");
            $r = Html::encode($_POST["r"]);
            $seguimiento = Html::encode($_POST["seguimiento"]);

            $total = count($_POST["p1"]);

            for($i = 0; $i < $total; $i++)
            {
                $idestudiante = Html::encode($_POST["idestudiante"][$i]);

                $p1 = Html::encode($_POST["p1"][$i]);
                $p2 = Html::encode($_POST["p2"][$i]);
                $p3 = Html::encode($_POST["p3"][$i]);
                $p4 = Html::encode($_POST["p4"][$i]);
                $p5 = Html::encode($_POST["p5"][$i]);
                $p6 = Html::encode($_POST["p6"][$i]);
                $p7 = Html::encode($_POST["p7"][$i]);
                $p8 = Html::encode($_POST["p8"][$i]);
                $p9 = Html::encode($_POST["p9"][$i]);

                $table = GrupoEstudiante::findOne(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante]);

                if($table)
                {
                    $table->p1 = $p1;
                    $table->p2 = $p2;
                    $table->p3 = $p3;
                    $table->p4 = $p4;
                    $table->p5 = $p5;
                    $table->p6 = $p6;
                    $table->p7 = $p7;
                    $table->p8 = $p8;
                    $table->p9 = $p9;

                    $sp1_sql = GrupoEstudiante::find()->select("sp1")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp1", [1, 2, 3, 4]])->one();
                    $sp2_sql = GrupoEstudiante::find()->select("sp2")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp2", [1, 2, 3, 4]])->one();
                    $sp3_sql = GrupoEstudiante::find()->select("sp3")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp3", [1, 2, 3, 4]])->one();
                    $sp4_sql = GrupoEstudiante::find()->select("sp4")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp4", [1, 2, 3, 4]])->one();
                    $sp5_sql = GrupoEstudiante::find()->select("sp5")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp5", [1, 2, 3, 4]])->one();
                    $sp6_sql = GrupoEstudiante::find()->select("sp6")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp6", [1, 2, 3, 4]])->one();
                    $sp7_sql = GrupoEstudiante::find()->select("sp7")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp7", [1, 2, 3, 4]])->one();
                    $sp8_sql = GrupoEstudiante::find()->select("sp8")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp8", [1, 2, 3, 4]])->one();
                    $sp9_sql = GrupoEstudiante::find()->select("sp9")->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp9", [1, 2, 3, 4]])->one();

                    $sp1_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp1", [1, 2, 3, 4]])->count();
                    $sp2_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp2", [1, 2, 3, 4]])->count();
                    $sp3_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp3", [1, 2, 3, 4]])->count();
                    $sp4_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp4", [1, 2, 3, 4]])->count();
                    $sp5_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp5", [1, 2, 3, 4]])->count();
                    $sp6_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp6", [1, 2, 3, 4]])->count();
                    $sp7_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp7", [1, 2, 3, 4]])->count();
                    $sp8_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp8", [1, 2, 3, 4]])->count();
                    $sp9_sql_total = GrupoEstudiante::find()->where(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante])->andWhere(["in", "sp9", [1, 2, 3, 4]])->count();

                    $sp1 = ($p1 != "") ? (($sp1_sql_total > 0) ? $sp1_sql->sp1 : $seguimiento) : "";
                    $sp2 = ($p2 != "") ? (($sp2_sql_total > 0) ? $sp2_sql->sp2 : $seguimiento) : "";
                    $sp3 = ($p3 != "") ? (($sp3_sql_total > 0) ? $sp3_sql->sp3 : $seguimiento) : "";
                    $sp4 = ($p4 != "") ? (($sp4_sql_total > 0) ? $sp4_sql->sp4 : $seguimiento) : "";
                    $sp5 = ($p5 != "") ? (($sp5_sql_total > 0) ? $sp5_sql->sp5 : $seguimiento) : "";
                    $sp6 = ($p6 != "") ? (($sp6_sql_total > 0) ? $sp6_sql->sp6 : $seguimiento) : "";
                    $sp7 = ($p7 != "") ? (($sp7_sql_total > 0) ? $sp7_sql->sp7 : $seguimiento) : "";
                    $sp8 = ($p8 != "") ? (($sp8_sql_total > 0) ? $sp8_sql->sp8 : $seguimiento) : "";
                    $sp9 = ($p9 != "") ? (($sp9_sql_total > 0) ? $sp9_sql->sp9 : $seguimiento) : "";

                    $table->sp1 = $sp1;
                    $table->sp2 = $sp2;
                    $table->sp3 = $sp3;
                    $table->sp4 = $sp4;
                    $table->sp5 = $sp5;
                    $table->sp6 = $sp6;
                    $table->sp7 = $sp7;
                    $table->sp8 = $sp8;
                    $table->sp9 = $sp9;

                    /** Asigna calificaciones para calificaciones de repetición */
                    $table->s1 = ($p1 == "NA") ? "" : "";
                    $table->s2 = ($p2 == "NA") ? "" : "";
                    $table->s3 = ($p3 == "NA") ? "" : "";
                    $table->s4 = ($p4 == "NA") ? "" : "";
                    $table->s5 = ($p5 == "NA") ? "" : "";
                    $table->s6 = ($p6 == "NA") ? "" : "";
                    $table->s7 = ($p7 == "NA") ? "" : "";
                    $table->s8 = ($p8 == "NA") ? "" : "";
                    $table->s9 = ($p9 == "NA") ? "" : "";

                    $table->update();
                }    
            }

            header("Location: ".Url::toRoute("/profesor/listaalumnoscalificacionseguimientos?idgrupo=$idgrupo&idciclo=$idciclo&idprofesor=$idprofesor&ultimo_ciclo=$ultimo_ciclo&r=$r&seguimiento=$seguimiento"));
            exit;
        }
    }
    #endregion

    #region public function actionListaalumnoscalificacionregularizacion($idgrupo, $idciclo, $idprofesor, $ultimo_ciclo)
    public function actionListaalumnoscalificacionregularizacion($idgrupo, $idciclo, $idprofesor, $ultimo_ciclo)
    {
        if(isset($idgrupo))
        {
            $idgrupo = Html::encode($idgrupo);
            $idprofesor = Html::encode($idprofesor);
            $idciclo = (Html::encode($idciclo) == "") ? Ciclo::find()->max("idciclo") : Html::encode($idciclo);
            $ultimo_ciclo = Html::encode($ultimo_ciclo);
            $regularizacion_status = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => 5, "bandera" => 1])->count();

            $model = (new \yii\db\Query())
                            ->from(["estudiantes"])
                            ->select([
                                "estudiantes.idestudiante",
    	                        "estudiantes.nombre_estudiante",
	                            "estudiantes.sexo",
	                            "cat_opcion_curso.desc_opcion_curso",
                                "grupos_estudiantes.p1",
	                            "grupos_estudiantes.p2",
	                            "grupos_estudiantes.p3",
	                            "grupos_estudiantes.p4",
	                            "grupos_estudiantes.p5",
	                            "grupos_estudiantes.p6",
	                            "grupos_estudiantes.p7",
	                            "grupos_estudiantes.p8",
	                            "grupos_estudiantes.p9",
	                            "grupos_estudiantes.s1",
	                            "grupos_estudiantes.s2",
	                            "grupos_estudiantes.s3",
	                            "grupos_estudiantes.s4",
	                            "grupos_estudiantes.s5",
	                            "grupos_estudiantes.s6",
	                            "grupos_estudiantes.s7",
	                            "grupos_estudiantes.s8",
	                            "grupos_estudiantes.s9"
                            ])
                            ->orderBy(["estudiantes.nombre_estudiante" => SORT_ASC])
                            ->innerJoin(["grupos_estudiantes"], "estudiantes.idestudiante = grupos_estudiantes.idestudiante")
                            ->innerJoin(["cat_opcion_curso"], "grupos_estudiantes.idopcion_curso = cat_opcion_curso.idopcion_curso")
                            ->innerJoin(["grupos"], "grupos_estudiantes.idgrupo = grupos.idgrupo")
                            ->innerJoin(["cat_materias"], "grupos.idmateria = cat_materias.idmateria")
                            ->where(["grupos_estudiantes.idgrupo" => $idgrupo, "grupos.idciclo" => $idciclo])
                            ->all();

            $model1 = (new \yii\db\Query())
                            ->from(["cat_carreras"])
                            ->select([
                                    "cat_materias.desc_materia",
    	                            "cat_carreras.desc_carrera",
                                    "grupos.num_semestre",
                                    "grupos.desc_grupo",
                                    "CONCAT( profesores.apaterno,' ',profesores.amaterno,' ',profesores.nombre_profesor) AS profesor"
                            ])
                            ->innerJoin(["grupos"], "cat_carreras.idcarrera = grupos.idcarrera")
                            ->innerJoin(["cat_materias"], "cat_materias.idmateria = grupos.idmateria")
                            ->innerJoin(["profesores"], "profesores.idprofesor = grupos.idprofesor")
                            ->where(["grupos.idgrupo" => $idgrupo])
                            ->andFilterWhere(["grupos.idciclo" => $idciclo])
                            ->all();

            return $this->render("listaAlumnosCalificacionRepeticion", ["model" => $model,
                                                              "model1" => $model1,
                                                              "idciclo" => $idciclo,
                                                              "idgrupo" => $idgrupo,
                                                              "idprofesor" => $idprofesor,
                                                              "ultimo_ciclo" => $ultimo_ciclo,
                                                              "regularizacion_status" => $regularizacion_status
                                                            ]);
        }
    }
    #endregion

    #region public function actionGuardarcalificacionregularizacion()
    public function actionGuardarcalificacionregularizacion()
    {
        if(Yii::$app->request->post())
        {
            $idgrupo = Html::encode($_POST["idgrupo"]);
            $idciclo = Html::encode($_POST["idciclo"]);
            $idprofesor = Html::encode($_POST["idprofesor"]);
            $ultimo_ciclo = Ciclo::find()->max("idciclo");
            $r = Html::encode($_POST["r"]);

            $regularizacion_status = ProfesorSeguimiento::find()->where(["idciclo" => $ultimo_ciclo, "idprofesor" => $idprofesor, "seguimiento" => 5, "bandera" => 1])->count();

            if($regularizacion_status == 1)
            {
                $total = count($_POST["s1"]);

                for($i = 0; $i < $total; $i++)
                {
                    $idestudiante = Html::encode($_POST["idestudiante"][$i]);

                    $s1 = Html::encode($_POST["s1"][$i]);
                    $s2 = Html::encode($_POST["s2"][$i]);
                    $s3 = Html::encode($_POST["s3"][$i]);
                    $s4 = Html::encode($_POST["s4"][$i]);
                    $s5 = Html::encode($_POST["s5"][$i]);
                    $s6 = Html::encode($_POST["s6"][$i]);
                    $s7 = Html::encode($_POST["s7"][$i]);
                    $s8 = Html::encode($_POST["s8"][$i]);
                    $s9 = Html::encode($_POST["s9"][$i]);

                    $table = GrupoEstudiante::findOne(["idgrupo" => $idgrupo, "idestudiante" => $idestudiante]);

                    if($table)
                    {

                        $table->s1 = $s1;
                        $table->s2 = $s2;
                        $table->s3 = $s3;
                        $table->s4 = $s4;
                        $table->s5 = $s5;
                        $table->s6 = $s6;
                        $table->s7 = $s7;
                        $table->s8 = $s8;
                        $table->s9 = $s9;
                        $table->update();
                    }    
                }
            }
            header("Location: ".Url::toRoute("/profesor/listaalumnoscalificacionregularizacion?idgrupo=$idgrupo&idciclo=$idciclo&idprofesor=$idprofesor&ultimo_ciclo=$ultimo_ciclo&r=$r"));
            exit;
        }
    }
    #endregion

    #region public function actionHorarioprofesor()
    public function actionHorarioprofesor()
    {
        $this->layout = 'main2';

        $idciclo = Ciclo::find()->max("idciclo");
        $idprofesor = Html::encode($_GET["idprofesor"]);
        $ciclos = Ciclo::find()->orderBy(["idciclo" => SORT_DESC])->all();

        $sql = "SELECT
                    *
                FROM
                    horario_profesor_v
                WHERE
                    idprofesor = :idprofesor
                AND
	                idciclo = :idciclo
                ORDER BY
                    lunes, viernes, sabado";

        $model = Yii::$app->db->createCommand($sql)
                              ->bindValue(":idprofesor", $idprofesor)
                              ->bindValue(":idciclo", $idciclo)
                              ->queryAll();

        return $this->render("horario_profesor", ["model" => $model, "ciclos" => $ciclos, "idciclo" => $idciclo, "idprofesor" => $idprofesor]);
    }
    #endregion

    #region public function actionHorarioprofesorconsulta()
    public function actionHorarioprofesorconsulta()
    {
        $this->layout = 'main2';

        $idciclo = Html::encode($_GET["idciclo"]);
        $idprofesor = Html::encode($_GET["idprofesor"]);

        $sql = "SELECT
                    *
                FROM
                    horario_profesor_v
                WHERE
                    idprofesor = :idprofesor
                AND
	                idciclo = :idciclo
                ORDER BY
                    lunes, viernes, sabado";

        $model = Yii::$app->db->createCommand($sql)
                              ->bindValue(":idprofesor", $idprofesor)
                              ->bindValue(":idciclo", $idciclo)
                              ->queryAll();

        return $this->render("horario_profesor", ["model" => $model, "idciclo" => $idciclo]);
    }
    #endregion

    #region public function actionConsultarprofesor()
    public function actionConsultarprofesor()
    {
        $idprofesor = Html::encode($_GET["idprofesor"]);
        $profesor = Profesor::find()->where(["idprofesor" => $idprofesor])->one();

        return $profesor->apaterno." ".$profesor->amaterno." ".$profesor->nombre_profesor;
    }
    #endregion

    #region public function actionSeguimientos()
    public function actionSeguimientos()
    {
        $form = new ProfesorSearch;
        $msg = (Html::encode(isset($_GET["msg"]))) ? Html::encode($_GET["msg"]) : null;
        $error = (Html::encode(isset($_GET["error"]))) ? Html::encode($_GET["error"]) : null;
        $idciclo = Ciclo::find()->max("idciclo");

        $total_profesores = Profesor::find()->count();
        $total_seguimiento1 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "seguimiento" => 1, "bandera" => 1])->count();
        $total_seguimiento2 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "seguimiento" => 2, "bandera" => 1])->count();
        $total_seguimiento3 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "seguimiento" => 3, "bandera" => 1])->count();
        $total_seguimiento4 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "seguimiento" => 4, "bandera" => 1])->count();
        $total_seguimiento5 = ProfesorSeguimiento::find()->where(["idciclo" => $idciclo, "seguimiento" => 5, "bandera" => 1])->count();

        $ts1 = ($total_seguimiento1 == $total_profesores) ? 1 : 0;
        $ts2 = ($total_seguimiento2 == $total_profesores) ? 1 : 0;
        $ts3 = ($total_seguimiento3 == $total_profesores) ? 1 : 0;
        $ts4 = ($total_seguimiento4 == $total_profesores) ? 1 : 0;
        $regular = ($total_seguimiento5 == $total_profesores) ? 1 : 0;

        if($form->load(Yii::$app->request->get()))
        {
            if($form->validate())
            {
                $search = Html::encode($form->buscar);
                $table = (new \yii\db\Query())
                            ->from(["profesores"])
                            ->select(["profesores.idprofesor",
                                       "profesores.nombre_profesor",
                                       "profesores.apaterno",
                                       "profesores.amaterno",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 1) AS seguimiento1",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 2) AS seguimiento2",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 3) AS seguimiento3",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 4) AS seguimiento4",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 5) AS seguimiento5"])
                            ->where(["like", "curp", $search])
                            ->orWhere(["like", "nombre_profesor", $search])
                            ->orWhere(["like", "apaterno", $search])
                            ->orWhere(["like", "amaterno", $search])
                            ->orWhere(["like", "cve_estatus", $search])
                            ->orderBy(["profesores.apaterno" => SORT_ASC, "profesores.amaterno" => SORT_ASC, "profesores.nombre_profesor" => SORT_ASC]);
            }
            else
            {
                $form->getErrors();
            }
        }
        else
        {
            $table = (new \yii\db\Query())
                            ->from(["profesores"])
                            ->select(["profesores.idprofesor",
                                       "profesores.nombre_profesor",
                                       "profesores.apaterno",
                                       "profesores.amaterno",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 1) AS seguimiento1",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 2) AS seguimiento2",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 3) AS seguimiento3",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 4) AS seguimiento4",
                                       "(SELECT bandera FROM profesores_seguimientos WHERE idprofesor = profesores.idprofesor AND seguimiento = 5) AS seguimiento5"])
                            ->orderBy(["profesores.apaterno" => SORT_ASC, "profesores.amaterno" => SORT_ASC, "profesores.nombre_profesor" => SORT_ASC]);
        }

        $count = clone $table;
        $pages = new Pagination([
                    "pageSize" => 10,
                    "totalCount" => $count->count(),
                ]);
        $model = $table->offset($pages->offset)
                       ->limit($pages->limit)
                       ->all();

        if(count($model) == 0){
            $error = 2;
            $msg = "No se encontró información relacionada con el criterio de búsqueda";
        }

        return $this->render("seguimientos", ["model" => $model,
                                              "form" => $form,
                                              "msg" => $msg,
                                              "error" => $error,
                                              "pages" => $pages,
                                              "ts1" => $ts1,
                                              "ts2" => $ts2,
                                              "ts3" => $ts3,
                                              "ts4" => $ts4,
                                              "regular" => $regular
                                            ]);
    }
    #endregion

    #region public function actionAsignarseguimiento()
    public function actionAsignarseguimiento()
    {
        $idprofesor = (Html::encode(isset($_GET["idprofesor"]))) ? Html::encode($_GET["idprofesor"]) : null;
        $bandera = (Html::encode(isset($_GET["bandera"]))) ? Html::encode($_GET["bandera"]) : null;
        $seguimiento = (Html::encode(isset($_GET["seguimiento"]))) ? Html::encode($_GET["seguimiento"]) : null;
        $idciclo = Ciclo::find()->max("idciclo");

        if($bandera != "" && $idprofesor != "" && $seguimiento != "")
        {
            $total_registro = ProfesorSeguimiento::find()
                                                 ->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => $seguimiento])
                                                 ->count();

            if($total_registro == 0)
            {
                $table = new ProfesorSeguimiento();
                $table->idciclo = $idciclo;
                $table->idprofesor = $idprofesor;
                $table->seguimiento = $seguimiento;
                $table->bandera = $bandera;
                $table->insert();
            }
            else
            {
                $total_registro = ProfesorSeguimiento::find()
                                                     ->select('idseguimiento')
                                                     ->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => $seguimiento])
                                                     ->one();

                $idseguimiento = $total_registro->idseguimiento;

                $table = ProfesorSeguimiento::findOne($idseguimiento);
                $table->bandera = $bandera;
                $table->update();
            }
        }
    }
    #endregion

    #region public function actionAsignarseguimientos()
    public function actionAsignarseguimientos()
    {
        $idciclo = Ciclo::find()->max("idciclo");
        $bandera = (Html::encode(isset($_GET["bandera"]))) ? Html::encode($_GET["bandera"]) : null;
        $seguimiento = (Html::encode(isset($_GET["seguimiento"]))) ? Html::encode($_GET["seguimiento"]) : null;

        if($bandera != "" && $seguimiento != "")
        {
            $table = (new \yii\db\Query())
                            ->from(["profesores"])
                            ->select(["profesores.idprofesor"])
                            ->all();

            foreach($table as $row)
            {
                $idprofesor = $row['idprofesor'];
                $total_registro = ProfesorSeguimiento::find()
                                                    ->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => $seguimiento])
                                                    ->count();

                if($total_registro == 0)
                {
                    $table = new ProfesorSeguimiento();
                    $table->idciclo = $idciclo;
                    $table->idprofesor = $idprofesor;
                    $table->seguimiento = $seguimiento;
                    $table->bandera = $bandera;
                    $table->insert();
                }
                else
                {
                    $total_registro = ProfesorSeguimiento::find()
                                                        ->select('idseguimiento')
                                                        ->where(["idciclo" => $idciclo, "idprofesor" => $idprofesor, "seguimiento" => $seguimiento])
                                                        ->one();

                    $idseguimiento = $total_registro->idseguimiento;

                    $table = ProfesorSeguimiento::findOne($idseguimiento);
                    $table->bandera = $bandera;
                    $table->update();
                }
            }
            
        }
    }
    #endregion

    #region public function actionSeguimientosactivos()
    public function actionSeguimientosactivos()
    {
        $curp = Yii::$app->user->identity->curp;
        $idciclo = Ciclo::find()->max("idciclo");

        $model = (new \yii\db\Query())
            ->from(["profesores"])
            ->innerJoin(["profesores_seguimientos"], "profesores.idprofesor = profesores_seguimientos.idprofesor")
            ->where(["profesores.curp" => $curp, "profesores_seguimientos.idciclo" => $idciclo, "profesores_seguimientos.bandera" => "1"])
            ->count();

        return $model;
    }
    #endregion
}