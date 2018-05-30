@extends('layouts_site.internas')

@section('titulo','Hotel Caranda Eco Ville - MONTE SEU ROTEIRO')


@section('conteudo')
<form class="" action="{{route('site.roteiros.calcula') }}" method="post" enctype="multipart/form-data">
    {{ csrf_field() }}
    <div id="smartwizard">
        <ul>
            <li><a href="#step-1"><h3>Dados Pessoais</h3></a></li>
            <li><a href="#step-2"><h3>Transporte</h3></a></li>
            <li><a href="#step-3"><h3>Hospedagem</h3></a></li>
            <li><a href="#step-4"><h3>Passeios</h3></a></li>
        </ul>

        <div>
            <div id="step-1" class="">
                <!-- ############################################################################################################################ -->


                <div class="col-md-12">
                    <fieldset class="form-group">
                        <label for="nome">Nome</label>
                        <input type="text" class="required form-control" id="nome" name="nome" placeholder="Digite seu nome" >
                        </small>
                    </fieldset>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <fieldset class="form-group">
                            <label for="cidade">Cidade</label>
                            <input type="text" class="form-control" id="cidade" name="cidade" placeholder="De onde você virá?" >
                            </small>
                        </fieldset>
                    </div>
                    <div class="col-md-4">
                        <fieldset class="form-group">
                            <label for="email">E-mail</label>
                            <input type="email" class="required form-control" id="email" name="email" >
                            </small>
                        </fieldset>
                    </div>
                    <div class="col-md-4">
                        <fieldset class="form-group">
                            <label for="telefone">Telefone</label>
                            <input type="tel" class="form-control" id="telefone" name="telefone" >
                            </small>
                        </fieldset>
                    </div>
                </div>
                <div class="col-md-3">
                    <fieldset class="form-group">
                        <label for="adultos">Nº Adultos</label>
                        <input type="number" class="form-control required" id="adultos" name="numero_adultos" value="1">
                        </small>
                    </fieldset>
                </div>
                <div class="col-md-3">
                    <fieldset class="form-group">
                        <label for="criancas">Nº Crianças</label>
                        <input type="number" class="form-control required" id="criancas" name="numero_chd" value="0" >
                        </small>
                    </fieldset>
                </div>
                <div class="form-group col-md-6">
                    <label>Período</label>
                    <div>
                        <div class="input-daterange input-group" id="date-range">
                            <input type="text" class="required form-control" name="dt_inicio" id="dt_inicio" value="{{isset($registro->dt_inicio) ? $registro->dt_inicio : ''}}" />
                            <span class="input-group-addon bg-custom b-0">até</span>
                            <input type="text" class="required form-control" name="dt_fim" id="dt_fim" value="{{isset($registro->dt_fim) ? $registro->dt_fim : ''}}" />
                        </div>
                    </div>
                </div>

              </div>
            <div id="step-2" class="">
                <!-- ############################################################################################################################ -->
                Como será seu transporte?<br><br>
                @foreach($transportes as $l )     
                <input type="radio" id="transporte" name="id_transporte" value='{!!$l->id!!}' /><b> {!!$l->descricao!!}</b><hr>
                @endforeach
            </div>
            <div id="step-3" class="">
                <!-- ############################################################################################################################ -->
                Escolha suas acomodações.<br><br>
                @foreach($hospedagens as $l )     
                <input type="radio" id="hospedagem" name="id_apartamento" value='{!!$l->id!!}' /> <b>{!!$l->nome!!}</b> - AT R$ {!!$l->valor_alta!!} / BT R$ {!!$l->valor_baixa!!}
                <hr>
                @endforeach
            </div>
            <div id="step-4" class="">
                <!-- ############################################################################################################################ -->
                Selecione os passeios que gostaria de realizar.<br><br>
                <div class="form-group clearfix">
                    <div class="col-lg-12">


                        @foreach($linhasPC as $linha ) 
                        <div class="row" style="clear: both">
                            <h4 class="title">{{$linha->nome}}</h4>
                        </div>
                        @foreach($linhasP as $l )     
                        @if($linha->id == $l->id_categoria)
                        <div class="col-sm-3 col-xs-24" >
                            <div class="boat-box" style="clear: both; padding: 20px">
                                <div class="box-cover">
                                    <img src="{{asset($l->imagem)}}" alt="destination image" style="max-width: 300px; max-height: 250px; height: 250px; padding: 10px" />
                                </div><input type="checkbox" id="passeio[]" name="passeio[]" alt="Selecione seus passeios" value="{!!$l->id!!}"/> <b>{!!$l->nome!!}</b>
                            </div>
                        </div>
                        @endif
                        @endforeach

                        @endforeach


                    </div>
                </div>
            </div>
 
        </div>
    </div>
</form>



    @endsection