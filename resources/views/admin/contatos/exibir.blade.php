@extends('layouts.site')

@section('titulo','Canais')
@section('conteudo')
<h4 class="page-title"><b>CONTATOS - EXIBIR</b></h4>
<div class="row">
    <div class="col-sm-12">
        <div class="card-box table-responsive">

            <div class="col-sm-9"><b>NOME:</b>{{$linhas['nome']}}</div>
            <div class="col-sm-3"><b>SOLICITADO:</b>{{$linhas['dthr_envio']}}</div>
            <hr>
            <div class="col-sm-4"><b>E-MAIL:</b>{{$linhas['email']}}</div>
            <div class="col-sm-4"><b>TELEFONE:</b>{{$linhas['telefone']}}</div>
            <div class="col-sm-4"><b>CIDADE:</b>{{$linhas['cidade']}}</div>
            <hr><hr>
            <div class="col-sm-12"><b>MENSAGEM:</b>{{$linhas['mensagem']}}</div>


        </div>
        <button type="button" class="btn btn-info waves-effect waves-light btn-sm" onclick="history.go(-1)"">
            <span class="btn-label"><i class="zmdi zmdi-arrow-left"></i></span>Voltar
        </button>
    </div>

</div>




@endsection

