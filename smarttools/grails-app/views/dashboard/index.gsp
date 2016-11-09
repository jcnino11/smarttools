<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Index</title>
</head>
<body>
	<div class="right_col" role="main">
		<!-- top tiles -->
		<div class="">
			<div class="row top_tiles">
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-user"></i>
						</div>
						<div class="count">
							${fieldValue(bean: dashboardInstance, field: "usuariosCreados")}
						</div>
						<h3>Usuarios creados</h3>
						<p>Lorem ipsum psdea itgum rixt.</p>
					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-certificate"></i>
						</div>
						<div class="count">
							${fieldValue(bean: dashboardInstance, field: "concursosCreados")}
						</div>
						<h3>Concursos creados</h3>
						<p>Lorem ipsum psdea itgum rixt.</p>
					</div>
				</div>
				<div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
					<div class="tile-stats">
						<div class="icon">
							<i class="fa fa-file-video-o"></i>
						</div>
						<div class="count">
							${fieldValue(bean: dashboardInstance, field: "videosSubidos")}
						</div>
						<h3>Videos subidos</h3>
						<p>Lorem ipsum psdea itgum rixt.</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							Resumen de transacciones <small>videos semanales</small>
						</h2>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="col-md-9 col-sm-12 col-xs-12">
							<div class="demo-container" style="height: 280px">
								<div id="placeholder33x" class="demo-placeholder"></div>
							</div>
						</div>

						<div class="col-md-3 col-sm-12 col-xs-12">
							<div>
								<div class="x_title">
									<h2>Perfiles top</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<ul class="list-unstyled top_profiles scroll-view">
									<g:each in="${dashboardInstance.perfilesTop}" status="i"
										var="perfilInstance">
										<li class="media event"><a
											class="pull-left ${(i % 2) == 0 ? 'border-aero' : 'border-green'} profile_thumb">
												<i class="fa fa-user aero"></i>
										</a>
											<div class="media-body">
												<a class="title" href="#"> ${fieldValue(bean: perfilInstance, field: "nombres")}
												</a>
												<p>
													<strong> ${perfilInstance.concursos.size()}
													</strong> Concursos creados
												</p>
												<p>
													<small> ${perfilInstance.videos.size()} Videos
														subidos
													</small>
												</p>
											</div></li>
									</g:each>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							Recent Activities <small>Concursos</small>
						</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
							</li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false"><i
									class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Settings 1</a></li>
									<li><a href="#">Settings 2</a></li>
								</ul></li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<div class="dashboard-widget-content">

							<ul class="list-unstyled timeline widget">
								<g:each in="${dashboardInstance.infoConcursos}" status="i"
									var="concursoInstance">
									<li>
										<div class="block">
											<div class="block_content">
												<h2 class="title">
													<g:link controller="concurso" action="show"
														id="${concursoInstance.id}">
														${concursoInstance.nombre}
													</g:link>
												</h2>
												<div class="byline">
													<span>Desde: <g:formatDate
															date="${concursoInstance.fechaInicio}" /></span> Hasta <a><g:formatDate
															date="${concursoInstance.fechaFin}" /></a>
												</div>
												<p class="excerpt">
													${concursoInstance.descripcionPremio}
												</p>
												<g:link controller="video" action="index" params="['concurso.id': concursoInstance?.id]">
													<i class="fa fa-list"></i>
													Ver videos
												</g:link>
												<g:link controller="video" action="create" params="['concurso.id': concursoInstance?.id]">
													<i class="fa fa-cloud-upload"></i>
													Subir video
												</g:link>
											</div>
										</div>
									</li>
								</g:each>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- start of weather widget -->
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>Videos subidos</h2>
						<ul class="nav navbar-right panel_toolbox">
							<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-expanded="false"><i
									class="fa fa-wrench"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">Settings 1</a></li>
									<li><a href="#">Settings 2</a></li>
								</ul></li>
							<li><a class="close-link"><i class="fa fa-close"></i></a></li>
						</ul>
						<div class="clearfix"></div>
					</div>
					<div class="x_content">
						<h4>Videos por concurso</h4>
						<g:each in="${dashboardInstance.videosPorConcurso}" status="i"
							var="concursoInstance">
							<div class="widget_summary">
								<div class="w_left w_25">
									<span> ${concursoInstance.key}
									</span>
								</div>
								<div class="w_center w_55">
									<div class="progress">
										<div class="progress-bar bg-green" role="progressbar"
											aria-valuenow="${com.smarttools.Persona.count()/concursoInstance.value*100}"
											aria-valuemin="0" aria-valuemax="100"
											style="width: ${com.smarttools.Persona.count()/concursoInstance.value*100}%;">
											<span class="sr-only"> ${com.smarttools.Persona.count()/concursoInstance.value*100}%
												Complete
											</span>
										</div>
									</div>
								</div>
								<div class="w_right w_20">
									<span> ${concursoInstance.value}
									</span>
								</div>
								<div class="clearfix"></div>
							</div>
						</g:each>
					</div>
				</div>
				<!-- end of weather widget -->
			</div>
			
				<div class="col-md-4 col-sm-4 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Acciones</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Settings 1</a></li>
										<li><a href="#">Settings 2</a></li>
									</ul></li>
								<li><a class="close-link"><i class="fa fa-close"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<g:link controller="persona" action="create" class="btn btn-app">
								<i class="fa fa-users"></i> Registrarse
							</g:link>
							<g:link controller="login" class="btn btn-app">
								<i class="fa fa-power-off"></i> Autenticar
							</g:link>
							<g:link controller="concurso" action="create" class="btn btn-app">
								<i class="fa fa-certificate"></i> Crear concurso
							</g:link>
						</div>
					</div>
				</div>
		</div>
	</div>
	
    <!-- Flot -->
    <script>
      $(document).ready(function() {
        //define chart clolors ( you maybe add more colors if you want or flot will add it automatic )
        var chartColours = ['#96CA59', '#3F97EB', '#72c380', '#6f7a8a', '#f7cb38', '#5a8022', '#2c7282'];

        //generate random number for charts
        randNum = function() {
          return (Math.floor(Math.random() * (1 + 40 - 20))) + 20;
        };

        var d1 = [];
        //var d2 = [];

        <g:each in="${dashboardInstance.videosPorFecha}" status="i"
							var="videoInstance">
        d1.push([new Date(${videoInstance.key.getTime()}), ${videoInstance.value}]);
		</g:each>

        var chartMinDate = d1[0][0]; //first day
        var chartMaxDate = d1[d1.length-1][0]; //last day

        var tickSize = [1, "day"];
        var tformat = "%d/%m/%y";

        //graph options
        var options = {
          grid: {
            show: true,
            aboveData: true,
            color: "#3f3f3f",
            labelMargin: 10,
            axisMargin: 0,
            borderWidth: 0,
            borderColor: null,
            minBorderMargin: 5,
            clickable: true,
            hoverable: true,
            autoHighlight: true,
            mouseActiveRadius: 100
          },
          series: {
            lines: {
              show: true,
              fill: true,
              lineWidth: 2,
              steps: false
            },
            points: {
              show: true,
              radius: 4.5,
              symbol: "circle",
              lineWidth: 3.0
            }
          },
          legend: {
            position: "ne",
            margin: [0, -25],
            noColumns: 0,
            labelBoxBorderColor: null,
            labelFormatter: function(label, series) {
              // just add some space to labes
              return label + '&nbsp;&nbsp;';
            },
            width: 40,
            height: 1
          },
          colors: chartColours,
          shadowSize: 0,
          tooltip: true, //activate tooltip
          tooltipOpts: {
            content: "%s: %y.0",
            xDateFormat: "%d/%m",
            shifts: {
              x: -30,
              y: -50
            },
            defaultTheme: false
          },
          yaxis: {
            min: 0
          },
          xaxis: {
            mode: "time",
            minTickSize: tickSize,
            timeformat: tformat,
            min: chartMinDate,
            max: chartMaxDate
          }
        };
        var plot = $.plot($("#placeholder33x"), [{
          label: "Email Sent",
          data: d1,
          lines: {
            fillColor: "rgba(150, 202, 89, 0.12)"
          }, //#96CA59 rgba(150, 202, 89, 0.42)
          points: {
            fillColor: "#fff"
          }
        }], options);
      });
    </script>
</body>
</html>
