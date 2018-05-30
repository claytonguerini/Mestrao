@extends('layouts.site') @section('titulo','Roteiros Recebidos')
@section('conteudo')
<h4 class="page-title">
	<b>ROTEIROS - EXIBIR</b>
</h4>
<div class="row">
	<div class="col-sm-12">
		<div class="card-box table-responsive">

			<div class="row">
				<h4 class="m-t-0 card-title">DADOS PESSOAIS</h4>
				<div class="col-sm-8">
					<b>NOME: </b> {{$linhas['nome']}}
				</div>
				<div class="col-sm-4">
					<b>SOLICITADO:</b> {{$linhas['dthr_solicitacao']}}
				</div>
				<div class="col-sm-4">
					<b>E-MAIL:</b> {{$linhas['email']}}
				</div>
				<div class="col-sm-4">
					<b>TELEFONE:</b> {{$linhas['telefone']}}
				</div>
				<div class="col-sm-4">
					<b>CIDADE:</b> {{$linhas['cidade']}}
				</div>
				<div class="col-sm-4">
					<b>Nº ADULTOS:</b> {{$linhas['numero_adultos']}}
				</div>
				<div class="col-sm-4">
					<b>Nº CHD:</b> {{$linhas['numero_chd']}}
				</div>
				<div class="col-sm-4">
					<b>TOTAL DE PESSOAS: </b>{{$linhas['numero_pessoas']}}
				</div>
			</div>
			<hr>
			<div class="row">
				<h4 class="m-t-0 card-title">TRANSPORTE</h4>
				<div class="col-sm-4">
					<b>TRANSPORTE ESCOLHIDO:</b> {{$linhas['descricao']}}
				</div>
				<div class="col-sm-4">
					<b>VALOR P/ PAX:</b> R$ {{$linhas['valor']}}
				</div>
				<div class="col-sm-4">
					<b>VALOR DO TRANSPORTE: </b> R$ {{$linhas['total_transporte']}}
				</div>
			</div>
			<hr>
			<div class="row">
				<h4 class="m-t-0 card-title">HOSPEDAGEM</h4>
				<div class="col-md-4">
					<b>CHEGADA:</b> {{$linhas['dt_inicio']}}
				</div>
				<div class="col-md-4">
					<b>PARTIDA:</b> {{$linhas['dt_fim']}}
				</div>
				<div class="col-md-4">
					<b>DIAS DE HOSPEDAGEM:</b> {{$linhas['diasHospedagem']}}
				</div>
				<div class="col-sm-4">
					<b>ESCOLHA: </b> {{$linhas['apartamento']}}
				</div>
				<div class="col-sm-4">
					<b>DIÁRIA: </b> R$ {{$linhas['diaria']}}
				</div>
				<div class="col-sm-4">
					<b>TOTAL HOSPEDAGEM: </b> R$ {{$linhas['total_hospedagem']}}
				</div>
				<div class="col-sm-4">
					<b>ALTA TEMPORADA?: </b>{{$linhas['nome_feriado']}}
				</div>
			</div>
			<hr>
			<div class="row">
				<h4 class="m-t-0 card-title">PASSEIOS</h4>
				
				<table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>Passeio</th>
                                    <th>Adultos</th>
                                    <th>CHD's</th>
                                    <th>Feriado?</th>
                                    <th>Valor por Adulto?</th>
                                    <th>Valor por CHD</th>
                                    <th>Total por Adultos?</th>
                                    <th>Total por CHD's</th>
                                    <th>Valor Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($passeios as $linha)
                                <tr>
                                    <th scope="row">{{$linha['passeio']}}</th>
                                    <td>{{$linha['numero_adultos']}}</td>
                                    <td>{{$linha['numero_chd']}}</td>
                                    <td>{{$linha['nome_feriado']}}</td>
                                    <td>R$ {{$linha['valor_por_adulto']}}</td>
                                    <td>R$ {{$linha['valor_por_chd']}}</td>
                                    <td>R$ {{$linha['total_adultos']}}</td>
                                    <td>R$ {{$linha['total_chds']}}</td>
                                    <td>R$ {{$linha['total_passeio']}}</td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>

			</div>
			<HR>
			<div class="row">
				<h5 class="m-t-0 card-title">TOTAL DESTE ROTEIRO:</h5>
				R$ {{$valor_roteiro}}			
			</div>

		</div>
		<button type="button"
			class="btn btn-info waves-effect waves-light btn-sm"
			onclick="history.go(-1)">
			<span class="btn-label"><i class="zmdi zmdi-arrow-left"></i></span>Voltar
		</button>
	</div>

</div>




@endsection

