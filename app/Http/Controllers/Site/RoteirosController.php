<?php

namespace App\Http\Controllers\site;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Passeios;
use App\PasseiosCategorias;
use App\RoteirosTransportes;
use App\RoteirosApartamentos;
use App\RoteirosClientes;
use App\RoteirosConfiguracaoPasseios;
use App\ViewCalculoMeuRoteiro;
use App\ViewCalculoMeuRoteiroPasseios;
use Illuminate\Support\Facades\Mail;

class RoteirosController extends Controller {

    public function index() {

        $linhasP = Passeios::where(['ativo' => 's'])->get();
        $linhasPC = PasseiosCategorias::all();
        $transportes = RoteirosTransportes::all();
        $hospedagens = RoteirosApartamentos::all();

        return view('site.canais.roteiros', compact('linhasP', 'linhasPC', 'transportes', 'hospedagens'));
    }

    public function calcula(Request $req) {
        $dados = $req->all();

        //$dados['dt_inicio'] = Carbon::parse($dados['dt_inicio'])->format('Y-m-d');
        $dtini = explode('/', $dados['dt_inicio']);
        $dados['dt_inicio'] ="$dtini[2]-$dtini[1]-$dtini[0]";
        
        $dtfim = explode('/', $dados['dt_fim']);
        $dados['dt_fim'] ="$dtfim[2]-$dtfim[1]-$dtfim[0]";
        //$dados['dt_fim'] = Carbon::parse($dados['dt_fim'])->format('Y-m-d');

        $roteiro = RoteirosClientes::create($dados);
        $lastInsertedId = $roteiro->id; // recupera id da ultima inserção

        // popula tabela de passeios por roteiro
        if (array_key_exists ('passeio',$dados)) {
            foreach ($dados['passeio'] as $passeio) {
                RoteirosConfiguracaoPasseios::create(['id_cliente' => $lastInsertedId, 'id_passeio' => $passeio]);
            }
        }

        $roteiroMontado = ViewCalculoMeuRoteiro::where(['id' => $lastInsertedId])->get()->toArray();
        $roteiroMontado['passeios'] = ViewCalculoMeuRoteiroPasseios::where(['id_cliente' => $lastInsertedId])->get()->toArray();


        //******************************
        // monta o calculo para exibição
        
        $id = $lastInsertedId;
        
        $linhas = ViewCalculoMeuRoteiro::find($id)->toArray();
        $passeios = ViewCalculoMeuRoteiroPasseios::find([$lastInsertedId,$id])->toArray();
        
        $totalPasseios=0;
        foreach ($passeios as $p){
            $totalPasseios += $p['total_passeio'];
        }
        
        $valor_roteiro= $linhas['total_transporte'] + $linhas['total_hospedagem'] + $totalPasseios;
        //*************************
        // envia os emails
        
        $retornoMail['linhas'] = $linhas;
        $retornoMail['passeios'] = $passeios;
        $retornoMail['valor_roteiro'] = $valor_roteiro;

        Mail::send('site.canais.roteirosMail', $retornoMail, function($message) {
            $message->to('gerencia@pousadacaranda.com.br');
            $message->subject('Roteiro Personalizado Hotel Caranda Eco Ville');
            $message->from('sender@pousadacaranda.com.br', 'Carandá Eco Ville');
        });
        
        //**************************
        // mostra retorno para a view
        return view('site.canais.roteiros_resposta', compact('linhas','passeios','valor_roteiro'));
        
    
    }

}
