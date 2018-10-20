
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>{{$title}}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">
	

	<!-- Animate.css -->
	<link rel="stylesheet" href="{{asset('frontend/material/plugins/bootstrap/css/bootstrap.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/material/plugins/node-waves/waves.css')}}">	
	<link rel="stylesheet" href="{{asset('frontend/material/plugins/animate-css/animate.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/material/plugins/morrisjs/morris.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/material/css/style.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/material/css/themes/all-themes.css')}}">
	<link rel="stylesheet" href="{{asset('frontend/css/custom.css')}}">


	</head>
	<body class="theme-indigo">

			<nav class="navbar">
					<div class="container-fluid">
						<div class="navbar-header">
							<a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
							<a href="javascript:void(0);" class="bars" style="display: block;"></a>
							<img class="logo" src="{{asset('/')}}frontend/images/logo.png" alt="">
							<a class="navbar-brand" href="{{url('/')}}">{{$title}}</a>
						</div>
						<div class="collapse navbar-collapse" id="navbar-collapse">
							<ul class="nav navbar-nav navbar-right">
								<!-- Call Search -->
								<li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
								<!-- #END# Call Search -->
								<!-- Notifications -->
								<li class="dropdown">
									<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
										<i class="material-icons">notifications</i>
										<span class="label-count">7</span>
									</a>
									<ul class="dropdown-menu">
										<li class="header">NOTIFICATIONS</li>
										<li class="body">
											<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 254px;"><ul class="menu" style="overflow: hidden; width: auto; height: 254px;">
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-light-green">
															<i class="material-icons">person_add</i>
														</div>
														<div class="menu-info">
															<h4>12 new members joined</h4>
															<p>
																<i class="material-icons">access_time</i> 14 mins ago
															</p>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-cyan">
															<i class="material-icons">add_shopping_cart</i>
														</div>
														<div class="menu-info">
															<h4>4 sales made</h4>
															<p>
																<i class="material-icons">access_time</i> 22 mins ago
															</p>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-red">
															<i class="material-icons">delete_forever</i>
														</div>
														<div class="menu-info">
															<h4><b>Nancy Doe</b> deleted account</h4>
															<p>
																<i class="material-icons">access_time</i> 3 hours ago
															</p>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-orange">
															<i class="material-icons">mode_edit</i>
														</div>
														<div class="menu-info">
															<h4><b>Nancy</b> changed name</h4>
															<p>
																<i class="material-icons">access_time</i> 2 hours ago
															</p>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-blue-grey">
															<i class="material-icons">comment</i>
														</div>
														<div class="menu-info">
															<h4><b>John</b> commented your post</h4>
															<p>
																<i class="material-icons">access_time</i> 4 hours ago
															</p>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-light-green">
															<i class="material-icons">cached</i>
														</div>
														<div class="menu-info">
															<h4><b>John</b> updated status</h4>
															<p>
																<i class="material-icons">access_time</i> 3 hours ago
															</p>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<div class="icon-circle bg-purple">
															<i class="material-icons">settings</i>
														</div>
														<div class="menu-info">
															<h4>Settings updated</h4>
															<p>
																<i class="material-icons">access_time</i> Yesterday
															</p>
														</div>
													</a>
												</li>
											</ul><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 4px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 4px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
										</li>
										<li class="footer">
											<a href="javascript:void(0);" class=" waves-effect waves-block">View All Notifications</a>
										</li>
									</ul>
								</li>
								<!-- #END# Notifications -->
								<!-- Tasks -->
								<li class="dropdown">
									<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button">
										<i class="material-icons">flag</i>
										<span class="label-count">9</span>
									</a>
									<ul class="dropdown-menu">
										<li class="header">TASKS</li>
										<li class="body">
											<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 254px;"><ul class="menu tasks" style="overflow: hidden; width: auto; height: 254px;">
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<h4>
															Footer display issue
															<small>32%</small>
														</h4>
														<div class="progress">
															<div class="progress-bar bg-pink" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 32%">
															</div>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<h4>
															Make new buttons
															<small>45%</small>
														</h4>
														<div class="progress">
															<div class="progress-bar bg-cyan" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
															</div>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<h4>
															Create new dashboard
															<small>54%</small>
														</h4>
														<div class="progress">
															<div class="progress-bar bg-teal" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 54%">
															</div>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<h4>
															Solve transition issue
															<small>65%</small>
														</h4>
														<div class="progress">
															<div class="progress-bar bg-orange" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
															</div>
														</div>
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class=" waves-effect waves-block">
														<h4>
															Answer GitHub questions
															<small>92%</small>
														</h4>
														<div class="progress">
															<div class="progress-bar bg-purple" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 92%">
															</div>
														</div>
													</a>
												</li>
											</ul><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 4px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 4px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
										</li>
										<li class="footer">
											<a href="javascript:void(0);" class=" waves-effect waves-block">View All Tasks</a>
										</li>
									</ul>
								</li>
								<!-- #END# Tasks -->
								<li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li>
							</ul>
						</div>
					</div>
				</nav>		

				<aside id="leftsidebar" class="sidebar">
						<!-- Menu -->
						<div class="menu">
							<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 582px;"><ul class="list" style="overflow: hidden; width: auto; height: 582px;">

								<li <?php if($active == 'index'){ echo 'class="active"'; } ?> ><a class=" waves-effect waves-block" href="{{url('/')}}"><i class="material-icons">home</i><span>Inicio</span></a></li>
								<li <?php if($active == 'listadoventa'){ echo 'class="active"'; } ?> ><a class=" waves-effect waves-block" href="{{url('listadoventa')}}"><i class="material-icons">store</i><span>Venta</span></a></li>
								<li <?php if($active == 'listadoalquiler'){ echo 'class="active"'; } ?> ><a class=" waves-effect waves-block" href="{{url('listadoalquiler')}}"><i class="material-icons">event</i><span>Alquiler</span></a></li>
								<li <?php if($active == 'about'){ echo 'class="active"'; } ?> ><a class=" waves-effect waves-block" href="{{url('about')}}"><i class="material-icons">info</i><span>Sobre</span></a></li>
								<li <?php if($active == 'contact'){ echo 'class="active"'; } ?> ><a class=" waves-effect waves-block" href="{{url('contact')}}"><i class="material-icons">mail</i><span>Contacto</span></a></li>

								
							</ul><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 4px; position: absolute; top: 84.6484px; opacity: 0.4; display: none; border-radius: 0px; z-index: 99; right: 1px; height: 197.853px;"></div><div class="slimScrollRail" style="width: 4px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
						</div>
						<!-- #Menu -->

					</aside>

					<aside id="rightsidebar" class="right-sidebar">
							<ul class="nav nav-tabs tab-nav-right" role="tablist">
								<li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
								<li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active in active" id="skins">
									<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 799px;"><ul class="demo-choose-skin" style="overflow: hidden; width: auto; height: 799px;">
										<li data-theme="red" class="active">
											<div class="red"></div>
											<span>Red</span>
										</li>
										<li data-theme="pink">
											<div class="pink"></div>
											<span>Pink</span>
										</li>
										<li data-theme="purple">
											<div class="purple"></div>
											<span>Purple</span>
										</li>
										<li data-theme="deep-purple">
											<div class="deep-purple"></div>
											<span>Deep Purple</span>
										</li>
										<li data-theme="indigo">
											<div class="indigo"></div>
											<span>Indigo</span>
										</li>
										<li data-theme="blue">
											<div class="blue"></div>
											<span>Blue</span>
										</li>
										<li data-theme="light-blue">
											<div class="light-blue"></div>
											<span>Light Blue</span>
										</li>
										<li data-theme="cyan">
											<div class="cyan"></div>
											<span>Cyan</span>
										</li>
										<li data-theme="teal">
											<div class="teal"></div>
											<span>Teal</span>
										</li>
										<li data-theme="green">
											<div class="green"></div>
											<span>Green</span>
										</li>
										<li data-theme="light-green">
											<div class="light-green"></div>
											<span>Light Green</span>
										</li>
										<li data-theme="lime">
											<div class="lime"></div>
											<span>Lime</span>
										</li>
										<li data-theme="yellow">
											<div class="yellow"></div>
											<span>Yellow</span>
										</li>
										<li data-theme="amber">
											<div class="amber"></div>
											<span>Amber</span>
										</li>
										<li data-theme="orange">
											<div class="orange"></div>
											<span>Orange</span>
										</li>
										<li data-theme="deep-orange">
											<div class="deep-orange"></div>
											<span>Deep Orange</span>
										</li>
										<li data-theme="brown">
											<div class="brown"></div>
											<span>Brown</span>
										</li>
										<li data-theme="grey">
											<div class="grey"></div>
											<span>Grey</span>
										</li>
										<li data-theme="blue-grey">
											<div class="blue-grey"></div>
											<span>Blue Grey</span>
										</li>
										<li data-theme="black">
											<div class="black"></div>
											<span>Black</span>
										</li>
									</ul><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 6px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 0px; z-index: 99; right: 1px; height: 709.334px;"></div><div class="slimScrollRail" style="width: 6px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="settings">
									<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 799px;"><div class="demo-settings" style="overflow: hidden; width: auto; height: 799px;">
										<p>GENERAL SETTINGS</p>
										<ul class="setting-list">
											<li>
												<span>Report Panel Usage</span>
												<div class="switch">
													<label><input type="checkbox" checked=""><span class="lever"></span></label>
												</div>
											</li>
											<li>
												<span>Email Redirect</span>
												<div class="switch">
													<label><input type="checkbox"><span class="lever"></span></label>
												</div>
											</li>
										</ul>
										<p>SYSTEM SETTINGS</p>
										<ul class="setting-list">
											<li>
												<span>Notifications</span>
												<div class="switch">
													<label><input type="checkbox" checked=""><span class="lever"></span></label>
												</div>
											</li>
											<li>
												<span>Auto Updates</span>
												<div class="switch">
													<label><input type="checkbox" checked=""><span class="lever"></span></label>
												</div>
											</li>
										</ul>
										<p>ACCOUNT SETTINGS</p>
										<ul class="setting-list">
											<li>
												<span>Offline</span>
												<div class="switch">
													<label><input type="checkbox"><span class="lever"></span></label>
												</div>
											</li>
											<li>
												<span>Location Permission</span>
												<div class="switch">
													<label><input type="checkbox" checked=""><span class="lever"></span></label>
												</div>
											</li>
										</ul>
									</div><div class="slimScrollBar" style="background: rgba(0, 0, 0, 0.5); width: 6px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 0px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 6px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 0px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
								</div>
							</div>
						</aside>








	<div >
		<a href="#" class="fh5co-offcanvass-close js-fh5co-offcanvass-close">Menu <i class="icon-cross"></i> </a>

		
		<h3 class="fh5co-lead">Connect with us</h3>
		<p class="fh5co-social-icons">
			<a href="#"><i class="icon-twitter"></i></a>
			<a href="#"><i class="icon-facebook"></i></a>
			<a href="#"><i class="icon-instagram"></i></a>
			<a href="#"><i class="icon-dribbble"></i></a>
			<a href="#"><i class="icon-youtube"></i></a>
		</p>
	</div>

	<!-- END .header -->
	<!-- content -->
	<section class="content">	
	@yield('content')
	</section>
	<!-- end content -->
	<footer id="fh5co-footer">
		
		<div class="container">
			<div class="row row-padded">
				<div class="col-md-12 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter"></i></a>
						<a href="#"><i class="icon-facebook"></i></a>
						<a href="#"><i class="icon-instagram"></i></a>
						<a href="#"><i class="icon-dribbble"></i></a>
						<a href="#"><i class="icon-youtube"></i></a>
					</p>
					<p><small>&copy; {{$title}} bluepixel. All Rights Reserved. </small></p>
				</div>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="{{asset('frontend/material/plugins/jquery/jquery.min.js')}}"></script>
	<!-- jQuery Easing -->
	<script src="{{asset('frontend/material/plugins/bootstrap/js/bootstrap.js')}}"></script>
	<!-- Bootstrap -->
	<script src="{{asset('frontend/material/plugins/bootstrap-select/js/bootstrap-select.js')}}"></script>
	<!-- Waypoints -->
	<script src="{{asset('frontend/material/plugins/jquery-slimscroll/jquery.slimscroll.js')}}"></script>
	<!-- Magnific Popup -->
	<script src="{{asset('frontend/material/plugins/node-waves/waves.js')}}"></script>
	<!-- Salvattore -->
	<script src="{{asset('frontend/material/plugins/jquery-countto/jquery.countTo.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/raphael/raphael.min.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/morrisjs/morris.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/chartjs/Chart.bundle.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/flot-charts/jquery.flot.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/flot-charts/jquery.flot.resize.js')}}"></script>	
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/flot-charts/jquery.flot.pie.js')}}"></script>	
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/flot-charts/jquery.flot.categories.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/flot-charts/jquery.flot.time.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/plugins/jquery-sparkline/jquery.sparkline.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/js/admin.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/js/pages/index.js')}}"></script>
	<!-- Main JS -->
	<script src="{{asset('frontend/material/js/demo.js')}}"></script>

	<script>

		$('#carousel-example-generic').find('.item').first().addClass('active');
	
	</script>


<script>

var FuncionBorrarDatosDenunciante = function()
	{
	if($( "h3:contains('Casa 1')").length !== 0){
		$('.content').addClass('sin-borde');
	}
	}();

</script>

	</body>
</html>
