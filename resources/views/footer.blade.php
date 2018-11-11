<footer class="page-footer page-footer light-blue darken-3">
			<div class="footer-copyright">
				<div class="container">
				© 2018 Copyright
				<a class="grey-text text-lighten-4 right" href="#!">Teléfono 5555-5555</a>
				</div>
			</div>
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">GRACIELA QUINTANILLA BIENES RAICES</h5>
                <p class="grey-text text-lighten-4">Gral Emilio Conesa 2113 (Capital Federal)</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">¿Qué estás buscando?</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Argenprop</a></li>
                  <li><a class="grey-text text-lighten-3" href="{{url('listadoventa')}}">Comprar</a></li>
                  <li><a class="grey-text text-lighten-3" href="{{url('listadoalquiler')}}">Alquilar</a></li>
                </ul>
              </div>
            </div>
          </div>
					
</footer>




		{{-- <script src="{{asset('frontend/materialize/js/main.js')}}"></script> --}}
		{{-- <script src="{{asset('frontend/materialize/js/rotate.js')}}"></script> --}}
		{{-- <script src="{{asset('frontend/materialize/js/twitter-feed.js')}}"></script> --}}
		{{-- <script type="text/javascript" src="{{asset('frontend/materialize/js/menu.js')}}"></script> --}}
		
		{{-- <script src="{{asset('frontend/materialize/js/angular.js')}}"></script> --}}
		{{-- <script src="{{asset('frontend/materialize/js/app.js')}}"></script> --}}
		{{-- <script src="{{asset('frontend/materialize/js/controllers.js')}}"></script>  --}}
		


	
	




<script>

M.AutoInit()

	$('.carousel.carousel-slider').carousel({fullWidth: true});
	function autoplay() {
		$('.carousel').carousel('next');
	
		
	}
	
</script>

<script>
	$(document).ready(function(){
		$('.modal').modal({
					fullWidth: true,
					dismissible: true

					});
	});

</script>

<script>
	// MATERIALIZE FRAMEWORK - https://materializecss.com
$(document).ready(function(){
	//FORM SELECT
	$('select').formSelect(); // https://materializecss.com/select.html
	// MODAL
	$('.modal').modal();
	// TABS
	$('ul.tabs').tabs();
	// SCROLLSPY
	$('.scrollspy').scrollSpy();
});

// LazySizes
window.lazySizesConfig = window.lazySizesConfig || {};
window.lazySizesConfig.expand;

// MixItUp 3
$(function(){
	$('#Container').mixItUp({
	load: {
		// filter: 'all'
		filter: 'all'
	},
	controls: {
		toggleFilterButtons: false
	}
	});
});



// DROPDOWN SELECT
$(function(){
	var $filterSelect = $('#FilterSelect'),
		// $sortSelect = $('#SortSelect'),
		$container = $('#Container');
	
	$container.mixItUp();
	
	$filterSelect.on('change', function(){
	$container.mixItUp('filter', this.value);
	});
});
	
	
	
	
	
	</script>