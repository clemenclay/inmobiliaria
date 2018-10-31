@extends('layout')
@section('content')
	<div id="fh5co-main">
		<div class="container">
			<div class="row">
				<div class="col l6">
					<h2>Contacto</h2>
					<div class="fh5co-spacer fh5co-spacer-sm"></div>
					<form class="float-label" spellcheck="false" action="{{ action('FrontendController@postContact') }}" method="post">       
	                <input type="hidden" name="_token" value="{{ csrf_token() }}" />      
					
							{{-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="First Name" name="first_name" required="">	
								</div>
							</div> --}}

								<div class="row">
										<div class="input-field col s6">
										<input id="first_name" type="text" class="validate">
										<label for="first_name">Nombre</label>
										<span class="helper-text" data-error="Comprete Correctamente" data-success="ok"></span>
										</div>
										<div class="input-field col s6">
										<input id="last_name" type="text" class="validate">
										<label for="last_name">Apellido</label>
										<span class="helper-text" data-error="Comprete Correctamente" data-success="ok"></span>
										</div>
								</div>
							{{-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Last Name" name="last_name">
								</div>
							</div> --}}
							
							
								{{-- <div class="form-group">
									<input type="email" class="form-control" placeholder="Email Address" name="email" required="">
								</div> --}}
								<div class="row">
									
									  <div class="row">
										<div class="input-field col s12">
										  <input id="email" type="email" class="validate">
										  <label for="email">Email</label>
										  <span class="helper-text" data-error="Ingrese un e-mail Válido" data-success="ok"></span>
										</div>
									  </div>
									
								</div>

								<div class="row">
									
									  <div class="row">
										<div class="input-field col s12">
										  <textarea name="message" id="message" class="materialize-textarea validate" type="text"></textarea>
										  <label for="message">Escriba su mensaje aquí</label>
										  <span class="helper-text" data-error="Comprete Correctamente" data-success="ok"></span>
										</div>
									  </div>
									
								</div>
								{{-- <div class="form-group">
									<textarea name="message" id="message" cols="30" class="form-control" rows="10" required=""></textarea>
								</div> --}}
								<div class="form-group">
									<button type="submit" class="btn blue darken-3 waves-effect">Send Message</button>
								</div>
							
				
					</form>
					
				</div>
				<div class="col l6">
						<iframe width="100%" height="250" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=-34.626039,-58.38654&amp;zoom=15&amp;key=AIzaSyAOCzRBIJRykPBCzw_F1eggTD4uCxCwVRg" allowfullscreen="false"></iframe>
				</div>
        		
        	</div>
       </div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

@if(Session::has('message'))
	<script type="text/javascript">
		$(document).ready(function(){
			swal({
			   title: '{{Session::get("message")}}',
			   text: '',
			   type: 'success',
			});
		});


		
	</script>
@endif
@endsection

{{-- <script>

$(document).ready(function() {
		$('input#input_text, textarea#textarea2').characterCounter();
	  });
	  
</script> --}}