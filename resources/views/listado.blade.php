@extends('layout')
@section('content')



<style>#sorting-row {
		padding-top:0px;
		@media only screen and (max-width: 992px) {
			padding-top:46px;
		}
	}
	.lazyload {
	  opacity: 0;
	}
	.lazyloading {
	  opacity: 1;
	  transition: 600ms opacity;
	  background: #f7f7f7 url(https://afarkas.github.io/lazysizes/assets/imgs/loader.gif) no-repeat center;
	  min-height: 60px;
	}
	#Container .mix{
		display: none;
	}
	.project-cards-container {
		-webkit-backface-visibility: hidden;
		.mix {
		display: inline-block;
	  }
	}
	
	
	
	

	
	
	
	
	
	
	// ======== DEMO STYLES - NOT REQUIRED ==========
	
	// CUSTOM CARD BADGES
	.card-image {.card-badge {position:absolute;top:-5px;right:-24px;width:0;height:0;transform:rotate(45deg);border-left:36px solid transparent;border-right:  36px solid transparent;&.new {border-bottom: 36px solid rgba(255, 165, 0, 1);}&.certified {border-bottom: 36px solid #00c853;}&.fav {border-bottom: 36px solid rgba(244, 67, 55, 1);}.material-icons {color: #fff;position: absolute;right:-12px;top: 9px;transform: rotate(-45deg);}}}
	// CARD IMAGE OPACITY ON HOVER
	.card-image {background-color: #555;img {opacity:0.8;transition: opacity 0.5s ease;}&:hover{img {opacity:1;transition: opacity 0.5s ease;}}}
	// CARD SHADOW ON HOVER
	.card {&:hover {box-shadow: 0 16px 24px 2px rgba(0,0,0,0.14), 0 6px 30px 5px rgba(0,0,0,0.12), 0 8px 10px -7px rgba(0,0,0,0.2);}}
	// FIX MATERIALIZE'S NAV BAR ROWS
	nav{.row{margin-bottom:0;}}
	// FIX MATERIALIZE'S FLOATING BUTTON ICON COLORS
	.controls {.btn-floating {font-weight:600;i {color:#757575;}&:hover{background-color:#e0e0e0;}}}</style>


<div class="l12">
	<h5>Listado Completo</h5>
	</div>


	
	<!-- 	SORTING BUTTON'S ROW	 -->
<div id="sorting-row" class="row">
		<div class="controls">
			
			<div class="col s12">
				<div class="input-field col s2 m6 hide-on-large-only">
					<a class="modal-trigger btn btn-floating waves-effect btn-flat grey-text text-darken-1" href="#modal1">
						<i class="material-icons">info</i>
					</a>
				</div>
			
			
				<!-- MATERIALIZE'S DROPDOWN SELECT FOR DESKTOP USERS -->
				<div class="input-field col s12 m6 hide-on-med-and-down">
					<div class="select-wrapper">
						<i class="material-icons prefix">filter_list</i>
						<select id="FilterSelect">
							<option class="filter" selected disabled>Filter Category</option>
							<option class="filter" value="all" data-filter="all" selected>All</option>
							<option class="filter" value=".venta">venta</option>
							<option class="filter" value=".category-code">Code</option>
							<option class="filter" value=".category-versions">Version control</option>
							<option class="filter" value=".category-publishing">Publishing</option>
							<option class="filter" value=".category-prototyping">Prototyping</option>
							<option class="filter" value=".category-servers">Servers</option>
						</select>
					</div>
				</div>
			
				<div class="input-field col s10 m6">
					<span class="right">
						<label>Sort:</label>
						<button class="sort btn btn-floating waves-effect btn-flat grey-text text-darken-1" data-sort="name:asc">A-Z</button>
						<button class="sort btn btn-floating waves-effect btn-flat grey-text text-darken-1" data-sort="name:desc">Z-A</button>
						<button class="sort btn btn-floating waves-effect btn-flat grey-text text-darken-1" data-sort="myorder:asc"><i class="material-icons">arrow_upward</i></button>
						<button class="sort btn btn-floating waves-effect btn-flat grey-text text-darken-1" data-sort="myorder:desc"><i class="material-icons">arrow_downward</i></button>	
					</span>
				</div>
			
			
		</div>
	</div>



	
	<!-- start content -->
	<div class="row">	
					@foreach($listadocompleto as $q)
		
					
					<div class="col s12 m6 l3 {{ $q->operacion }}">
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
	<!-- end content -->
	@endsection


	<script></script>