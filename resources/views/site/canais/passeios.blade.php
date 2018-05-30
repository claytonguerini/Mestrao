@extends('layouts_site.internas')

@section('titulo','Hotel Caranda Eco Ville - Passeios')


@section('conteudo')

    @foreach($linhasPC as $linha ) 
        <div class="row" style="clear: both">
            <h3 class="title">{{$linha->nome}}</h3>
        </div>
        
        
        @foreach($linhasP as $l )     
            @if($linha->id == $l->id_categoria)
                <div class="col-sm-3 col-xs-24">
                    <div class="boat-box" style="clear: both">
                        <div class="box-cover">
                            <a href="{{route('site.passeiosDetalhes',$l->id)}}">
                                <img src="{{asset($l->imagem)}}" alt="destination image" style="max-width: 300px; max-height: 250px; height: 250px" />
                            </a>
                        </div>
                        <div class="box-details">
                            <div class="box-meta">
                                <h4 class="boat-name">{!!$l->nome!!}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            @endif
        @endforeach
        
    @endforeach

@endsection