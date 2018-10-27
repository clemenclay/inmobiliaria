@extends('layout')
@section('content')


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	<!-- Indicators 
	<ol class="carousel-indicators">
	@foreach($gallery as $q)
		<li data-target="#carousel-example-generic" data-slide-to="{{$q->id}}" class=""></li>
	@endforeach
	</ol>
-->
	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
	@foreach($gallery as $q)
		<div class="item id-{{$q->id}}">
			<img src="{{asset('/')}}{{$q->image}}">
			<div class="carousel-caption">
					<h3>{!! $q->description !!}</h3>
					
			</div>
		</div>
		
		
	@endforeach
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>















<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<h5>Listado Alquiler</h5>
	</div>
	<!-- start content -->
	<div class="row">	
					@foreach($listadoalquiler as $q)
		
					
					<div class="col s12 m6 l3">
					<div class="card hoverable">
						<div class="card-image waves-effect waves-block waves-light">
								<div class="card-mapa-imagen">
									<ul class="tabs tabs-cards">
										<li id="mapaid" class="tab btn-floating waves-effect waves-light btn blue scale-transition">
											<a class="" href="#test1"><i class=" material-icons">place</i></a>
										</li>
										<li id="fotoid" class="tab btn-floating waves-effect waves-light btn blue scale-transition hide">
											<a class="active" href="#test2"><i class="material-icons">photo_camera</i></a>
										</li>
									</ul>
									<div id="test1" class="tabs-content carousel carousel-slider">
											<div class="carousel-item">
												<iframe width="100%" height="250" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=-34.564415,-58.462908&amp;zoom=15&amp;key=AIzaSyAOCzRBIJRykPBCzw_F1eggTD4uCxCwVRg" allowfullscreen=""></iframe>
											</div>	
									</div>
									<div id="test2" class="tabs-content carousel carousel-slider">
											<div class="carousel-item">	
												<div class="carousel carousel-slider">
														<a class="carousel-item" href="#one!"><img src="{{asset('/')}}{{$q->imagen}}"></a>
												</div>
											</div>	
									</div>
								</div>
						  
						</div>
						<div class="card-content">
						  <span class="card-title activator indigo-text">
								<i class="material-icons right">more_vert</i>
								{!! $q->titulo !!}</span>
							<b>Localidad: {{ $q->barrio }}</b>
							<br>
							<b>Operacion: {{ $q->operacion }}</b>
							@if($q->precio_compra != 0 )
								<b>{{ number_format($q->precio_compra, 0, ".", ".") }}</b>
							@else
								<b>{{ number_format($q->precio_alquiler, 0, ".", ".") }}</b>
							@endif
								<b>{{ $q->moneda }}</b>
						</div>
						<div class="card-reveal">
						  <span class="card-title indigo-text">
								<i class="material-icons right">close</i>
								{!! $q->titulo !!}</span>
						  <p>{!! $q->descripcion !!}</p>
						</div>
					  </div>
					</div>
	
	
	
					@endforeach	
					
	</div>

















<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h5>Listado Completo</h5>
</div>
<!-- start content -->
<div class="row">	
				@foreach($listadocompleto as $q)
	
				
				<div class="col s12 m6 l3">
				<div class="card hoverable">
					<div class="card-image waves-effect waves-block waves-light">
							<div class="card-mapa-imagen">
								<ul class="tabs tabs-cards">
									<li id="ver-mapa-{{ $q->id }}" class="tab btn-floating waves-effect waves-light btn white scale-transition">
										<a class="" href="#mapa-{{ $q->id }}"><i class="material-icons blue-text text-darken-2">place</i></a>
									</li>
									<li id="ver-fotos-{{ $q->id }}" class="tab btn-floating waves-effect waves-light btn white scale-transition scale-out">
										<a class="active" href="#fotos-{{ $q->id }}"><i class="material-icons blue-text text-darken-2">photo_camera</i></a>
									</li>
								</ul>
								<div id="mapa-{{ $q->id }}" class="tabs-content carousel carousel-slider">
										<div class="carousel-item">
											<iframe width="100%" height="250" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q={{ $q->map_latitude }},{{ $q->map_longitude }}&zoom=15&key=AIzaSyAOCzRBIJRykPBCzw_F1eggTD4uCxCwVRg" allowfullscreen="false"></iframe>
										</div>	
								</div>
								<div id="fotos-{{ $q->id }}" class="tabs-content carousel carousel-slider">
										<div class="carousel-item">	
											<div class="carousel carousel-slider">
													<a class="carousel-item" href=""><img src="{{asset('/')}}{{$q->imagen}}"></a>
											</div>
										</div>	
								</div>
							</div>
					  
					</div>
					<div class="card-content">
					  <span class="card-title activator indigo-text">
							<i class="material-icons right">more_vert</i>
							{!! $q->titulo !!}</span>
						<b>Localidad: {{ $q->barrio }}</b>
						<br>
						<b>Operacion: {{ $q->operacion }}</b>
						@if($q->precio_compra != 0 )
							<b>{{ number_format($q->precio_compra, 0, ".", ".") }}</b>
						@else
							<b>{{ number_format($q->precio_alquiler, 0, ".", ".") }}</b>
						@endif
							<b>{{ $q->moneda }}</b>
					</div>
					<div class="card-reveal">
					  <span class="card-title indigo-text">
							<i class="material-icons right">close</i>
							{!! $q->titulo !!}</span>
					  <p>{!! $q->descripcion !!}</p>
					</div>
				  </div>
				</div>

				<script>



	
					$(document).ready(function() {
					
						$("#ver-mapa-{{ $q->id }}").click(function(){
						$("#ver-mapa-{{ $q->id }}").addClass("scale-out");
						$("#ver-fotos-{{ $q->id }}").removeClass("scale-out");
						// $('mapa-{{ $q->id }}').addClass('animated bounceOutLeft');
						// $('mapa-{{ $q->id }}').addClass('animated bounceInRight');					
					});
					
						$("#ver-fotos-{{ $q->id }}").click(function(){	
						$("#ver-fotos-{{ $q->id }}").addClass("scale-out");
						$("#ver-mapa-{{ $q->id }}").removeClass("scale-out");
						// $('fotos-{{ $q->id }}').addClass('animated bounceOutLeft');
						// $('fotos-{{ $q->id }}').addClass('animated bounceInRight');		
					});
					
					
					});
					
					</script>

				@endforeach	
				
</div>
<!-- end content -->






{{-- <script>
	$(document).ready(function(){
		$('.carousel').carousel();


    // function for next slide
		$('.next').click(function(){
			$('.carousel').carousel('next');
		});
    
    // function for prev slide
		$('.prev').click(function(){
			$('.carousel').carousel('prev');
		});
	});
	
</script> --}}
@endsection
