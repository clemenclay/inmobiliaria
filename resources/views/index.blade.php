@extends('layout')
@section('content')
<!-- start content -->
<div id="fh5co-main">
	<div class="container">
		<div class="row">
	        <div id="fh5co-board" data-columns>
	        	@foreach($propiedad as $q)
	        	<div class="item">
	        		<div class="animate-box">
		        		<a href="{{asset('/')}}{{$q->imagen}}" class="image-popup fh5co-board-img" title="sad">
		        			<img src="{{asset('/')}}{{$q->imagen}}" alt="">
		        		</a>
	        		</div>
	        		<div class="fh5co-desc">
						<h4>{!! $q->titulo !!}</h4>
						{!! $q->descripcion !!}
					</div>
					<div class="fh5co-desc">{{$q->tipopropiedad}}</div>
					<div class="col-md-offset-4">
						{{ $q->precio_compra }}{{ $q->precio_alquiler }} <b>{{ $q->moneda }}</b>
					</div>
	        	</div>  
	        	@endforeach	
	        </div>
        </div>
    </div>
</div>
<!-- end content -->
@endsection