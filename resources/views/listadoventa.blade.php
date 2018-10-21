@extends('layout')
@section('content')


<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<h2>Listado Venta</h2>
</div>
<!-- start content -->
<div class="row">	
				@foreach($propiedad as $q)
			
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
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
										
										<button id="sin-sombra" type="button" class="btn btn-block btn-lg btn-default waves-effect waves-float"
										role="button" data-toggle="collapse" href="#{{ $q->id }}" aria-expanded="false" aria-controls="{{ $q->id }}">
										Ver más Detalles <i class="material-icons">expand_more</i>
										</button>
									
										
									<div class="collapse" id="{{ $q->id }}" aria-expanded="false" style="height: 0px;">
										



										<div class="body">
												<!-- Nav tabs -->
												<ul class="nav nav-tabs tab-nav-right" role="tablist">
													<li role="presentation" class="active">
														<a href="#2{{ $q->id }}" data-toggle="tab" aria-expanded="true">
																	<i class="material-icons">description</i>Detalles
														</a>
													</li>
													<li role="presentation" class="">
														<a href="#1{{ $q->id }}" data-toggle="tab" aria-expanded="false">
															<i class="material-icons">place</i>Ubicación
														</a>
													</li>
													
												</ul>
					
												<!-- Tab panes -->
												<div class="tab-content">
													<div role="tabpanel" class="tab-pane fade" id="1{{ $q->id }}">
															<iframe width="100%" height="350" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q={{ $q->map_latitude }},{{ $q->map_longitude }}&zoom=15&key=AIzaSyAOCzRBIJRykPBCzw_F1eggTD4uCxCwVRg" allowfullscreen></iframe>
													</div>
													
													<div role="tabpanel" class="tab-pane fade active in" id="2{{ $q->id }}">
															<div class="">
																	{!! $q->descripcion !!}
															</div>
													</div>
												</div>
											</div>
									</div>








								</div>
							
							
							
							
							
							
							
							
				
						</div>
				</div>

	        	@endforeach	
			</div>
<!-- end content -->
@endsection