@extends('layout')
@section('content')


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h2>Propiedades</h2>
</div>
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
										
										@if($q->precio_compra != 0 )
											<b>{{ number_format($q->precio_compra, 0, ".", ".") }}</b>
										@else
											<b>{{ number_format($q->precio_alquiler, 0, ".", ".") }}</b>
										@endif
										
										<b>{{ $q->moneda }}</b>
										</div>
							</div>
						</div>
				</div>

	        	@endforeach	




<!-- end content -->
@endsection