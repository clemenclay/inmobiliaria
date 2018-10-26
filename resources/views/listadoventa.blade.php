@extends('layout')
@section('content')


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h5>Listado Venta</h5>
</div>
<!-- start content -->
<div class="row">	
				@foreach($propiedad as $q)
	
				
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
<!-- end content -->

<script>



	
$(document).ready(function() {

	$("#mapaid").click(function(){

	$("#mapaid").addClass("scale-out");
	$("#fotoid").removeClass("scale-out").removeClass("hide");
	$("#fotoid").show();

});

$("#fotoid").click(function(){

$("#fotoid").addClass("scale-out");
$("#mapaid").removeClass("scale-out").removeClass("hide");
$("#mapaid").show();
});


});

</script>




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


	


	