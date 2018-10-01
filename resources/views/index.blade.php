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
					<div class="fh5co-desc">{!! $q->titulo !!}</div>
	        		<div class="fh5co-desc">{!! $q->descripcion !!}</div>
					<div class="fh5co-desc">{{$q->tipopropiedad}}</div>
					<div class="fh5co-desc">{{ $q->precio_compra }}</div>
					
					
	        	</div>  
	        	@endforeach	
	        </div>
        </div>
    </div>
</div>
<!-- end content -->
@endsection