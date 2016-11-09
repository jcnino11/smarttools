<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Login</title>

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'vendors', file: 'bootstrap/dist/css/bootstrap.min.css')}" />
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'vendors', file: 'font-awesome/css/font-awesome.min.css')}" />
<!-- NProgress -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'vendors', file: 'nprogress/nprogress.css')}" />
<!-- Animate.css -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'vendors', file: 'animate.css/animate.min.css')}" />

<!-- Custom Theme Style -->
<link rel="stylesheet" type="text/css" href="${resource(dir: 'build', file: 'css/custom.min.css')}" />
</head>

<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor"
			id="signin"></a>

		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
				<g:if test='${flash.message}'>
			<div class='login_message'>${flash.message}</div>
		</g:if>
					<form action='${postUrl}' method='POST' id='loginForm'>
						<h1>Login Form</h1>
						<div>
							<input name='j_username' id='username' type="text" class="form-control" placeholder="Username"
								required="" />
						</div>
						<div>
							<input name='j_password' id='password' type="password" class="form-control"
								placeholder="Password" required="" />
						</div>
						<div>
							<input class="btn btn-default submit" type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
						</div>

						<div class="clearfix"></div>

						<div class="separator">
							<p class="change_link">
								¿Nuevo en el sitio?
								<g:link class="to_register" controller="persona" action="create">Crear cuenta</g:link>
							</p>

							<div class="clearfix"></div>
							<br />

							<div>
								<h1>
									<i class="fa fa-youtube-play"></i> Smart Tools!
								</h1>
								<p>©2016 All Rights Reserved. Gentelella Alela! is a
									Bootstrap 3 template. Privacy and Terms</p>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>
	</div>
</body>
</html>
