@include('layouts_site._includes.header_start')



@include('layouts_site._includes.header_end')
<!-- Header -->
<header class="main-header">
    <div class="container">
        <div class="header-content">
            <a href="http://www.hotelcarandaecoville.com.br">
                <img src="{{asset('site/img/logo.png')}}" alt="site identity" />
            </a>


        </div>
    </div>
</header>



<div class="container">
    <div class="row">
        <!-- conteúdo  -->
        @yield('conteudo')
    </div>
</div>

</section>
