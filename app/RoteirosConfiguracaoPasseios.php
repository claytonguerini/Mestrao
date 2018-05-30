<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoteirosConfiguracaoPasseios extends Model
{
    protected $table = "roteiros_configuracao_passeios";
    protected $fillable = ['id_cliente', 'id_passeio'];
    public $timestamps = false;
}
