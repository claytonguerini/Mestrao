<?php

namespace App\Http\Controllers\site;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Passeios;
use App\PasseiosCategorias;

class PasseiosController extends Controller
{
    public function index (){
        $linhasP = Passeios::where(['ativo'=>'s'])->get();
        $linhasPC = PasseiosCategorias::all();
        return view('site.canais.passeios', compact('linhasP','linhasPC'));
    }
    
    public function detalhes ($id){
        $linhas = Passeios::find($id);
        return view('site.canais.passeiosDetalhes', compact('linhas'));
    }
}
