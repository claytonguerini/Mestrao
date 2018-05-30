@extends('layouts.site')

@section('titulo','Canais')
@section('conteudo')
<h4 class="page-title"><b>CONTATOS RECEBIDOS - LISTAGEM</b></h4>
<div class="row">
    <div class="col-sm-12">
        <div class="card-box table-responsive">
    
            <table id="datatable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>E-mail</th>
                        <th>Telefone</th>
                        <th>Enviado</th>
                        <th>Lido</th>
                        <th width='19%'>Ações</th>
                    </tr>
                </thead>


                <tbody>
                    @foreach($linhas as $linha)
                    <tr>
                        <td>{{$linha->nome}}</td>
                        <td>{{$linha->email}}</td>
                        <td>{{$linha->telefone}}</td>
                        <td>{{\Carbon\Carbon::parse($linha->dthr_envio)->format('d/m/Y H:i') }}</td>
                        <td>
                            @if ( $linha->lido == 's')
                            Sim
                            @else
                            Não
                            @endif

                        </td>
                        <td>
                <center>
                    <a href="{{ route('admin.contatos.exibir',$linha->id)}}">
                        <button type="button" class="btn btn-success waves-effect waves-light btn-sm">
                            <span class="btn-label"><i class="zmdi zmdi-eye"></i></span>Visualizar
                        </button>
                    </a>
                </center>

                </td>
                </tr>
                @endforeach

                </tbody>
            </table>

        </div></div></div>




@endsection

