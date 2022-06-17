<?php

namespace app\repositories;

use app\models\login\Usuario;

use app\repositories\BaseRepository;

class UsuarioRepository extends BaseRepository
{
    protected $table = ['ciclos'];
    protected $primaryKey = 'idusuario';
    protected $campos = ['idusuario', 'nombre_usuario', 'email', 'password', 'cve_estatus', 'authKey', 'accessToken', 'activate', 'curp', 'fecha_registro', 'fecha_actualizacion', 'verification_code'];
    protected $select = [];
    protected $joins = [];
    protected $where = [
        'nombre_usuario',
        'email',
        'cve_estatus',
        'activate',
        'curp',
        'fecha_registro',
        'fecha_actualizacion'
    ];
    protected $orderBy = ['idusuario' => SORT_DESC];//SORT_DESC o SORT_ASC
    protected $paginate = 15;
    public $search;

    #region public function __construct(Usuario $model)
    public function __construct(Usuario $model)
    {
        parent::__construct($model);
    }
    #endregion

    public function consultarUsuarioPorCurp($curp)
    {
        return $this->model->find()
                    ->where(['curp' => $curp])
                    ->one();
    }
}