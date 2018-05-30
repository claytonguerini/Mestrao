@extends('layouts_site.internas')

@section('titulo','Hotel Caranda Eco Ville')


@section('conteudo')


<h2 class="title">{{$linhas->nome}}</h2>

@if(isset($linhas->imagem))
    <img src="{{asset($linhas->imagem)}}" alt="destination image" style="max-width: 450px; max-height: 350px; padding: 10px " align='left'' />
@endif

{!!$linhas->texto !!}

@endsection