<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoteirosClientes extends Model
{
    const CREATED_AT = 'dthr_solicitacao';
    const UPDATED_AT = 'dthr_lido';
    
    protected $tabble = "roteiro_clientes";
    protected $fillable = [
        'id', 'nome', 'telefone', 'cidade', 'email', 'numero_adultos', 'numero_chd', 'dt_inicio', 'dt_fim', 'dthr_solicitacao', 'id_transporte', 'valor_transporte', 'id_apartamento', 'valor_apartamento_adultos', 'valor_apartamento_chd', 'id_pagamento', 'dthr_lido'
    ];
}
