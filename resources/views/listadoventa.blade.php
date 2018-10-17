@extends('layout')
@section('content')


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h2>Listado Venta</h2>
</div>
<!-- start content -->

<?
$precio_compraVar = '$q->precio_compra';
$precio_alquierVar = '$q->precio_alquiler';
number_format($precio_compraVar, 2, ",", ".");
number_format($precio_alquierVar, 2, ",", ".");
?>

				@foreach($propiedad as $q)
				
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="card">
								<img class="card-img-top" src="{{asset('/')}}{{$q->imagen}}" alt="">		
							<div class="body">
									<div class="fh5co-desc">
											<h4>{!! $q->titulo !!}</h4>
											{!! $q->descripcion !!}
											<b>operacion: {{ $q->tipooperacion }}</b>
										</div>
										<div class="fh5co-desc">{{$q->tipopropiedad}}</div>
										<div class="col-md-offset-4">

										@if($q->precio_compra != 0 )
											<b>{{ $q->precio_compra }}</b>
										@else
											<b>{{ $q->precio_alquiler }}</b>
										@endif


											<b>{{ $q->moneda }}</b>
										
										</div>
							</div>
						</div>
				</div>

	        	@endforeach	

<!-- end content -->
@endsection