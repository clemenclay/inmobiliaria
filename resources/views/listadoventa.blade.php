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
					  <img class="activator" src="{{asset('/')}}{{$q->imagen}}">
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




<div class="row">				
		<div class="col s12 m6 l3">
		<div class="card hoverable">
				<ul class="tabs tabs-fixed-width tab-demo z-depth-1">
						<li class="tab"><a href="#test1">mapa</a></li>
						<li class="tab"><a class="active" href="#test2">fotos</a></li>
					</ul>
					<div id="test1" class=""><iframe width="100%" height="350" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=-34.564415,-58.462908&amp;zoom=15&amp;key=AIzaSyAOCzRBIJRykPBCzw_F1eggTD4uCxCwVRg" allowfullscreen=""></iframe></div>
					<div id="test2" class="">
						
							<div class="carousel carousel-slider">
									<a class="carousel-item" href="#one!"><img src="{{asset('/')}}/uploads/1/2018-10/descarga_1.jpg"></a>
									<a class="carousel-item" href="#two!"><img src="{{asset('/')}}/uploads/1/2018-10/descarga_15.jpg"></a>
									<a class="carousel-item" href="#three!"><img src="{{asset('/')}}/uploads/1/2018-10/descarga_13.jpg"></a>
							</div>

					</div>


				
				



			<div class="card-content">
				<span class="card-title activator indigo-text">
					<i class="material-icons right">more_vert</i>
					Cochera en Venta | Capital Federal | Belgrano | Cnel J Moldes al 2200</span>
				<b>Localidad: Belgrano</b>
				<br>
				<b>Operacion: Venta</b>
											<b>27.500</b>
											<b>Dolares</b>
			</div>
			<div class="card-reveal">
				<span class="card-title indigo-text">
					<i class="material-icons right">close</i>
					Cochera en Venta | Capital Federal | Belgrano | Cnel J Moldes al 2200</span>
				<p>Cochera fija cubierta, en 1º Subsuelo, acceso por portón automatizado, cómoda rampa, el espacio es amplio y no queda pegado a otro vehiculo, ya que de un lateral posee pared y del otro lateral se encuentra una columna que la separa de la cochera contigua. inmejorable ubicación.</p>
			</div>
			</div>
		</div>
</div>
@endsection


	


	