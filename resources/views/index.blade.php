@extends('layout')
@section('content')
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Indicators 

                                <ol class="carousel-indicators">
								@foreach($gallery as $q)
                                    <li data-target="#carousel-example-generic" data-slide-to="{{$q->id}}" class=""></li>
								@endforeach
                                </ol>
-->
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
								@foreach($gallery as $q)
									<div class="item id-{{$q->id}}">
										<img src="{{asset('/')}}{{$q->image}}">
										<div class="carousel-caption">
												<h3>{!! $q->description !!}</h3>
												
										</div>
                                    </div>
									
									
								@endforeach
                                </div>

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        

@endsection

<?php // include '{{url('/')}}listadoalquiler.blade.php'; ?> 