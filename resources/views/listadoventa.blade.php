@extends('layout')
@section('content')


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h2>Listado Venta</h2>
</div>
<!-- start content -->
<div class="row">	
				@foreach($propiedad as $q)
	
				
				<div class="col s12 m6 l3">
				<div class="card">
					<div class="card-image waves-effect waves-block waves-light">
					  <img class="activator" src="{{asset('/')}}{{$q->imagen}}">
					</div>
					<div class="card-content">
					  <span class="card-title activator grey-text text-darken-4">{!! $q->titulo !!}<i class="material-icons right">more_vert</i></span>
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
					  <span class="card-title grey-text text-darken-4">{!! $q->titulo !!}<i class="material-icons right">close</i></span>
					  <p>{!! $q->descripcion !!}</p>
					</div>
				  </div>
				</div>



				@endforeach	
				
</div>
<!-- end content -->
@endsection