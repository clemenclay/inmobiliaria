
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<title>{{$title}}</title>
	<meta name="viewport" content="width=device-width">
	
	<link rel="icon" href="favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
	
	<!-- Styles -->
	<link rel="stylesheet" href="{{asset('frontend/materialize/css/font-awesome.min.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/materialize/css/animate.css')}}">
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	
	
	<link rel="stylesheet" href="{{asset('frontend/materialize/css/materialize.min.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/materialize/css/custom-styles.css')}}">
	<!-- <link rel="stylesheet" href="{{asset('frontend/css/custom.css')}}"> -->
	<script src="{{asset('frontend/materialize/js/modernizr-2.6.2-respond-1.1.0.min.js')}}"></script>
	
	<script src="{{asset('frontend/materialize/js/jquery-3.2.1.min.js')}}"></script>
	<script src="{{asset('frontend/materialize/js/pace.min.js')}}"></script>
	
	
		<style>
	
			.pace {
				-webkit-pointer-events: none;
				pointer-events: none;
	
				-webkit-user-select: none;
				-moz-user-select: none;
				user-select: none;
				-webkit-animation-name: fadeOut;
				animation-name: fadeOut;
			}
	
			.pace-inactive {
				display: none;
			}
	
			.pace .pace-progress {
				background: #26a69a;
				position: fixed;
				z-index: 2000;
				top: 0;
				right: 100%;
				width: 100%;
				height: 2px;
			}
	
			@-webkit-keyframes fadeIn {
				0% {opacity: 0;}
				100% {opacity: 1;}
			}
	
			@-moz-keyframes fadeIn {
				0% {opacity: 0;}
				100% {opacity: 1;}
			}
	
			@-o-keyframes fadeIn {
				0% {opacity: 0;}
				100% {opacity: 1;}
			}
	
			@keyframes fadeIn {
				0% {opacity: 0;}
				100% {opacity: 1;}
			}
	
			.fadeIn {
				-webkit-animation-name: fadeIn;
				-moz-animation-name: fadeIn;
				-o-animation-name: fadeIn;
				animation-name: fadeIn;
			}
	
	
			body.pace-running #pagina {
				opacity: 0;
			}
			body.pace-done #pagina {
				opacity: 1;
				-webkit-animation-name: fadeIn;
				animation-name: fadeIn;
				-webkit-animation-duration: 2s;animation-duration: 2s;
				-webkit-animation-fill-mode: both;animation-fill-mode: both;
			}
			}
		</style>
	
	
	</head>

	<body class="theme-indigo">

		<nav class="navbar-fixed">

	
			<!--   MENU ARRIBA -->
				<div class="categories-wrapper light-blue darken-4">
				<div class="categories-container pin-top" style="top: 0px;">
					<div class="hide-on-med-and-up show-on-small-only">
						<a href="#" class="button-collapse" data-activates="nav-mobile"><i class="material-icons">menu</i></a>
						<a href="{{url('/')}}">
							<img class="logo" src="{{asset('/')}}frontend/images/logo.png" alt="">
							{{$title}}
						</a>
					</div>
					<div class="show-on-large hide-on-small-only">
						<ul class="categories db show-on-large hide-on-small-only">
						<a href="#" class="button-collapse" data-activates="nav-mobile"><i class="material-icons">menu</i></a>
						<li class="left">
						<a href="{{url('/')}}">
							<img class="logo" src="{{asset('/')}}frontend/images/logo.png" alt="">
							{{$title}}
						</a>
						</li>
						<li class="hide"><a <?php if($active == 'index'){ echo 'class="active"'; } ?> class="" href="{{url('/')}}"><i class="material-icons">home</i> Inicio</a></li>
						<div class="botones-centrados">
							<li class="left"><a <?php if($active == 'listadoventa'){ echo 'class="active"'; } ?> class="" href="{{url('listadoventa')}}"><i class="material-icons">store</i> Venta</a></li>
							<li class="right"><a <?php if($active == 'listadoalquiler'){ echo 'class="active"'; } ?> class="" href="{{url('listadoalquiler')}}"><i class="material-icons">event</i> Alquiler</a></li>
						</div>
						<li class="right"><a <?php if($active == 'contact'){ echo 'class="active"'; } ?> class="" href="{{url('contact')}}"><i class="material-icons">email</i> Contacto</a></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!--   MENU izquierda mobil -->
	<ul class="side-nav" id="nav-mobile" style="transform: translateX(-100%);">
		<li><a <?php if($active == 'index'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('/')}}"><i class="material-icons">home</i> Inicio</a></li>
		<li><a <?php if($active == 'listadoventa'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('listadoventa')}}"><i class="material-icons">store</i> Venta</a></li>
		<li><a <?php if($active == 'listadoalquiler'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('listadoalquiler')}}"><i class="material-icons">event</i> Alquiler</a></li>
		<li><a <?php if($active == 'contact'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('contact')}}"><i class="material-icons">email</i> Contacto</a></li>
	</ul>



	

	<!-- END .header -->
	<!-- content -->
	<section class="container">	
	@yield('content')
	</section>
	<!-- end content -->
	<style>
		#logoAnimago{
		width: 30px;
		height: 30px;
		display: block;
		text-align: center;
		overflow: hidden;
		left: -33px;
		top: 32px;
		position: relative;
		}
		</style>
		
		
		<script type="text/javascript">
			$(document).ready(function(){
				
				var imgHeight = 30;
		var numImgs = 19;
		var cont = 0;
		
		var animation = setInterval(function(){
			var position =  -1 * (cont*imgHeight);
			$('#logoAnimago').find('img').css('margin-top', position);
			
			cont++;
			if(cont == numImgs){
				cont = 0;
			}
		},45);
			
		
		});
		</script>
		
		
		
		<footer class="page-footer light-primary-color">
			<div class="footer-copyright">
				<div class="container">
				  <span>Copyright ©
					<script type="text/javascript">
					  document.write(new Date().getFullYear());
					</script> <a class="grey-text default-text-primary-color" href="http://bluepixel.com.ar" target="_blank">BLUEPIXEL</a> All rights reserved.</span>
					<span class="right hide-on-small-only"> Design and Developed by <a class="grey-text default-text-primary-color" href="http://bluepixel.com.ar/">BLUEPIXEL</a></span>
				</div>
			</div>
		</footer>




		<script src="{{asset('frontend/materialize/js/main.js')}}"></script>
		<script src="{{asset('frontend/materialize/js/rotate.js')}}"></script>
		<script src="{{asset('frontend/materialize/js/twitter-feed.js')}}"></script>
		<script type="text/javascript" src="{{asset('frontend/materialize/js/menu.js')}}"></script>
		
		<script src="{{asset('frontend/materialize/js/angular.js')}}"></script>
		<script src="{{asset('frontend/materialize/js/app.js')}}"></script>
		<script src="{{asset('frontend/materialize/js/controllers.js')}}"></script>
		
		<script src="{{asset('frontend/materialize/js/materialize.js')}}"></script>
		<script src="{{asset('frontend/materialize/js/init.js')}}"></script>
		
		<script src="//code.tidio.co/sk4iuwxfeabvtqpwirjoll7s1ln6uxbd.js')}}"></script>




<script>
	$('.carousel.carousel-slider').carousel({fullWidth: true},setTimeout(autoplay, 4500000000000000000000));
	function autoplay() {
		$('.carousel').carousel('next');
		setTimeout(autoplay, 4500000000000000000);
	}
</script>

	</body>
</html>
