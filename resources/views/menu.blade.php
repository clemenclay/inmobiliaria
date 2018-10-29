<div class="navbar-fixed">
<nav class="blue darken-3" role="navigation">
		<div class="nav-wrapper container">
				<ul class="left">  
				<a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
				<a href="{{url('/')}}">
					<img class="logo" src="{{asset('/')}}frontend/images/logo.png" alt="">
					<div class="left">{{$title}}</div>
				</a>
				</ul>

		  <ul class="left hide-on-med-and-down">
							<li><a <?php if($active == 'listadoventa'){ echo 'class="active"'; } ?> class="" href="{{url('listadoventa')}}"><i class="material-icons left">store</i> Venta</a></li>
							<li><a <?php if($active == 'listadoalquiler'){ echo 'class="active"'; } ?> class="" href="{{url('listadoalquiler')}}"><i class="material-icons left">event</i> Alquiler</a></li>
		  </ul>

		 <ul class="right hide-on-med-and-down">
			<li><a <?php if($active == 'contact'){ echo 'class="active"'; } ?> class="" href="{{url('contact')}}"><i class="material-icons left">email</i> Contacto</a></li>
		</ul>

		  <!--   MENU izquierda mobil -->
		  <ul id="nav-mobile" class="sidenav" style="transform: translateX(-105%);">
				<li><a <?php if($active == 'index'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('/')}}"><i class="material-icons">home</i> Inicio</a></li>
				<li><a <?php if($active == 'listadoventa'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('listadoventa')}}"><i class="material-icons">store</i> Venta</a></li>
				<li><a <?php if($active == 'listadoalquiler'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('listadoalquiler')}}"><i class="material-icons">event</i> Alquiler</a></li>
				<li><a <?php if($active == 'contact'){ echo 'class="collapsible-header waves-effect waves-teal active"'; } ?> class="collapsible-header waves-effect waves-teal" href="{{url('contact')}}"><i class="material-icons">email</i> Contacto</a></li>
		  </ul>
		  
		</div>
	  </nav>
</div>


{{-- https://materializecss.com/templates/parallax-template/preview.html --}}


{{-- <nav class="white" role="navigation">
		<div class="nav-wrapper container">
		  <a id="logo-container" href="#" class="brand-logo">Logo</a>
		  <ul class="right hide-on-med-and-down">
			<li><a href="#">Navbar Link</a></li>
		  </ul>
	
		  <ul id="nav-mobile" class="sidenav" style="transform: translateX(-105%);">
			<li><a href="#">Navbar Link</a></li>
		  </ul>
		  <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
		</div>
	  </nav> --}}