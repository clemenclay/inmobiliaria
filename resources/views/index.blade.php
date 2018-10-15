@extends('layout')
@section('content')











<!-- start content -->



				@foreach($propiedad as $q)
				
				<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<div class="card">
								<img class="card-img-top" src="{{asset('/')}}{{$q->imagen}}" alt="">		
							<div class="body">
									<div class="fh5co-desc">
											<h4>{!! $q->titulo !!}</h4>
											{!! $q->descripcion !!}
										</div>
										<div class="fh5co-desc">{{$q->tipopropiedad}}</div>
										<div class="col-md-offset-4">
											{{ $q->precio_compra }}{{ $q->precio_alquiler }} <b>{{ $q->moneda }}</b>
										</div>
							</div>
						</div>
				</div>

	        	@endforeach	




<!-- end content -->
@endsection