@extends('layout')
@section('content')



<style>


/* Controls
---------------------------------------------------------------------- */

.controls {
    padding: 1rem;
    background: #333;
    font-size: 0.1px;
}

.control {
    position: relative;
    display: inline-block;
    width: 2.7rem;
    height: 2.7rem;
    background: #444;
    cursor: pointer;
    font-size: 0.1px;
    color: white;
    transition: background 150ms;
}

.control:hover {
    background: #3f3f3f;
}

.control[data-filter]:after,
.control[data-toggle]:after {
    content: '';
    position: absolute;
    width: 10px;
    height: 10px;
    top: calc(50% - 6px);
    left: calc(50% - 6px);
    border: 2px solid currentColor;
    border-radius: 2px;
    background: currentColor;
    transition: background-color 150ms, border-color 150ms;
}

.mixitup-control-active {
    background: #393939;
}

.mixitup-control-active[data-toggle]:after {
    background: transparent;
}

.control:first-of-type {
    border-radius: 3px 0 0 3px;
}

.control:last-of-type {
    border-radius: 0 3px 3px 0;
}

.control[data-filter=".green"],
.control[data-toggle=".green"] {
    color: #91e6c7;
}

.control[data-filter=".blue"],
.control[data-toggle=".blue"] {
    color: #5ecdde;
}

.control[data-filter=".pink"],
.control[data-toggle=".pink"] {
    color: #d595aa;
}

/* Container
---------------------------------------------------------------------- */

/* .container {
    padding: 1rem;
    text-align: justify;
    font-size: 0.1px;
}

.container:after {
    content: '';
    display: inline-block;
    width: 100%;
} */

/* Target Elements
---------------------------------------------------------------------- */

.mix,
.gap {
    display: inline-block;
    vertical-align: top;
}

.mix {
       position: relative;
}




</style>


<div class="l12">
	<h5>Listado Completo</h5>
</div>

<div class="controls">
	<button type="button" class="control waves-effect waves-light btn" data-filter="all">All</button>
	<button type="button" class="control" data-toggle=".Venta">Venta</button>venta
	<button type="button" class="control" data-toggle=".Alquiler">Alquiler</button>alquiler

</div>

<div class="controls">
	<button type="button" class="control waves-effect waves-light btn" data-filter="all">All</button>
	<button type="button" class="" data-toggle=".Belgrano">Belgrano</button>
	<button type="button" class="control" data-toggle=".Abasto">Abasto</button>

</div>
<div class="controls">
<button type="button" data-sort="order:asc">Ascending</button>
<button type="button" data-sort="order:descending">Descending</button>
<button type="button" data-sort="random">Random</button>
</div>	
	<!-- start content -->
	<div class="row">
			<div class="containers">	
					@foreach($listadocompleto as $q)
		
					
					<div class="col s12 m6 l3 mix {{ $q->operacion }} {{ $q->barrio }}">
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
														<a class="carousel-item modal-trigger" href="#fotos-modal-{{ $q->id }}"><img src="{{asset('/')}}{{$q->imagen}}"></a>
	
	
														
	
														
	
	
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
						
							$("i.material-icons.close").click(function(){
							  	parent.history.back();
							 	return false;					
							 });


						// $('.chips').on('chip.delete', function(e, chip){
						// 	parent.history.back();
						// 	});


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
						<!-- Modal Structure -->
						<div id="fotos-modal-{{ $q->id }}" class="modal modalfullheigth">
							<a href="#!" class="modal-close waves-effect"><i class="material-icons blue-text text-darken-2">close</i></a>
							<img style="width: 100%;" src="{{asset('/')}}{{$q->imagen}}">
						</div>
					@endforeach	
			</div>					
		</div>
	<!-- end content -->




	<script src="../mixitup.min.js"></script>

	<script>
		var containerEl = document.querySelector('.containers');

		var mixer = mixitup(containerEl, {
			controls: {
				toggleLogic: 'and'
			}
		});
	</script>


	
	@endsection

	
	