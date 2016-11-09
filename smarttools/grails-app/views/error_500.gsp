<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- Meta, title, CSS, favicons, etc. -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Smart Tools | <g:if env="development">Grails Runtime Exception</g:if><g:else>Error</g:else></title>
		
		 <!-- Bootstrap -->
		 <link rel="stylesheet" type="text/css" href="${resource(dir: 'vendors', file: 'bootstrap/dist/css/bootstrap.min.css')}" />
		<!-- Font Awesome -->
		 <asset:stylesheet src=".../vendors/font-awesome/css/font-awesome.min.css')}" />
		<!-- NProgress -->
		 <link rel="stylesheet" type="text/css" href="${resource(dir: 'vendors', file: 'nprogress/nprogress.css')}" />

		<!-- Custom Theme Style -->
		<link rel="stylesheet" type="text/css" href="${resource(dir: 'build', file: 'css/custom.min.css')}" />
	</head>
	<body class="nav-md">		
		<div class="container body">
		  <div class="main_container">
			<!-- page content -->
			<div class="col-md-12">
			  <div class="col-middle">
				<div class="text-center">
				  <h1 class="error-number">500</h1>
				  <h2>Internal Server Error</h2>
				  <p>We track these errors automatically, but if the problem persists feel free to contact us. In the meantime, try refreshing. <a href="#">Report this?</a>
				  </p>
				  <div class="mid_center">
					<h3>Search</h3>
					<form>
					  <div class="col-xs-12 form-group pull-right top_search">
						<div class="input-group">
						  <input type="text" class="form-control" placeholder="Search for...">
						  <span class="input-group-btn">
								  <button class="btn btn-default" type="button">Go!</button>
							  </span>
						</div>
					  </div>
					</form>
				  </div>
				</div>
			  </div>
			</div>
			<!-- /page content -->
		  </div>
		</div>

		<!-- jQuery -->
		<asset:javascript src="../vendors/jquery/dist/jquery.min.js"/>
		<!-- Bootstrap -->
		<asset:javascript src="../vendors/bootstrap/dist/js/bootstrap.min.js"/>
		<!-- FastClick -->
		<asset:javascript src="../vendors/fastclick/lib/fastclick.js"/>
		<!-- NProgress -->
		<asset:javascript src="../vendors/nprogress/nprogress.js"/>

		<!-- Custom Theme Scripts -->
		<asset:javascript src="../build/js/custom.min.js"/>
	</body>
</html>
