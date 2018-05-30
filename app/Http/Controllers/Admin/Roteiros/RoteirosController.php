<?php

namespace App\Http\Controllers\Admin\Roteiros;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\ViewCalculoMeuRoteiro;
use App\ViewCalculoMeuRoteiroPasseios;

class RoteirosController extends Controller {

    public function index() {

        /// **********************************
        /// a ordenação esta toda na view
        /// **********************************
        
        $linhas = ViewCalculoMeuRoteiro::all();
        return view('admin.roteiros.recebidos', compact('linhas'));
    }

    public function exibir($id) {

        $linhas = ViewCalculoMeuRoteiro::find($id)->toArray();
        $passeios = ViewCalculoMeuRoteiroPasseios::where(['id_cliente' => $id])->get()->toArray();
        
        
        $totalPasseios=0;
        foreach ($passeios as $p){
            $totalPasseios += $p['total_passeio'];
        }
        
        $valor_roteiro= $linhas['total_transporte'] + $linhas['total_hospedagem'] + $totalPasseios;
        
        return view('admin.roteiros.exibir', compact('linhas','passeios','valor_roteiro'));
       
    }

}
