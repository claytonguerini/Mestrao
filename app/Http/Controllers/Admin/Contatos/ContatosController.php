<?php

namespace App\Http\Controllers\Admin\Contatos;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Contatos;

class ContatosController extends Controller
{
    public function index() {

        $linhas = Contatos::all();
        return view('admin.contatos.contatos', compact('linhas'));
    }
    
    public function exibir($id) {

        $linhas = Contatos::find($id)->toArray();
        return view('admin.contatos.exibir', compact('linhas'));
    }
    
}
