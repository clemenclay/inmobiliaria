

<nav class="navbar-fixed blue darken-3">
			
<!--   MENU ARRIBA MOBIL -->		
		<div class="hide-on-med-and-up show-on-small-only">
					<a href="#" class="button-collapse" data-activates="nav-mobile"><i class="material-icons">menu</i></a>
					<a href="{{url('/')}}">
						<img class="logo" src="{{asset('/')}}frontend/images/logo.png" alt="">
						{{$title}}
					</a>
			</div>

<!--   MENU ARRIBA -->
		<div class="container">
			<div class="nav-wrapper">
					
					<ul class="show-on-large hide-on-small-only">
							<a href="#" class="button-collapse" data-activates="nav-mobile"><i class="material-icons">menu</i></a>
							<li class="left">
							<a href="{{url('/')}}">
								<img class="logo" src="{{asset('/')}}frontend/images/logo.png" alt="">
								{{$title}}
							</a>
							</li>
							<li class="hide"><a <?php if($active == 'index'){ echo 'class="active"'; } ?> class="" href="{{url('/')}}"><i class="material-icons">home</i> Inicio</a></li>
							<div class="botones-centrados">
								<li class="left"><a <?php if($active == 'listadoventa'){ echo 'class="active"'; } ?> class="" href="{{url('listadoventa')}}"><i class="material-icons left">store</i> Venta</a></li>
								<li class="right"><a <?php if($active == 'listadoalquiler'){ echo 'class="active"'; } ?> class="" href="{{url('listadoalquiler')}}"><i class="material-icons left">event</i> Alquiler</a></li>
							</div>
							<li class="right"><a <?php if($active == 'contact'){ echo 'class="active"'; } ?> class="" href="{{url('contact')}}"><i class="material-icons left">email</i> Contacto</a></li>
					</ul>
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