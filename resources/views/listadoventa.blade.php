@extends('layout')
@section('content')


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h2>Listado Venta</h2>
</div>
<!-- start content -->

				@foreach($propiedad as $q)
				
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="card">
								<img class="card-img-top" src="{{asset('/')}}{{$q->imagen}}" alt="">		
							
							
								<div class="body">
										<h4>{!! $q->titulo !!}</h4>
										<div class="row">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
													<b>Localidad: {{ $q->barrio }}</b>
												<br>
													<b>Operacion: {{ $q->operacion }}</b>
												<br>
											</div>

											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
											@if($q->precio_compra != 0 )
												<b>{{ number_format($q->precio_compra, 0, ".", ".") }}</b>
											@else
												<b>{{ number_format($q->precio_alquiler, 0, ".", ".") }}</b>
											@endif
												<b>{{ $q->moneda }}</b>
											</div>
										</div>

										<button type="button" class="btn btn-default btn-circle waves-effect waves-circle waves-float"
										role="button" data-toggle="collapse" href="#{{ $q->id }}" aria-expanded="false" aria-controls="{{ $q->id }}">
												<i class="material-icons">expand_more</i>
										</button>
									
									
									<div class="collapse" id="{{ $q->id }}" aria-expanded="false" style="height: 0px;">
										<div class="well">
												{!! $q->descripcion !!}
										</div>
									</div>
								</div>
							
							
							
							
							
							
							
							
				
						</div>
				</div>

	        	@endforeach	

<!-- end content -->
@endsection