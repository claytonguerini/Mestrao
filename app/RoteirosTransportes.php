<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoteirosTransportes extends Model {

    protected $table = "roteiros_transportes";
    protected $fillable = ['id', 'descricao', 'valor'];
    public $timestamps = false;

}
