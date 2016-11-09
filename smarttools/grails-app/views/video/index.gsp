
<%@ page import="com.smarttools.Video"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'video.label', default: 'Video')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>

<g:javascript src="../jwplayer-7.6.1/jwplayer.js" />
<script>jwplayer.key="OYW2tgUid0bT229Cl9F4qxdODA7dAr355Ogzpg==";</script>
</head>
<body>
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						${entityName}
						<small><g:message code="default.list.label" args="['']" /></small>
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>

			<g:if test="${flash.message}">
				<script type="text/javascript">
				$(function(){
					new PNotify({
                        title: 'Mensaje',
                        text: '${flash.message}
					',
							type : 'info',
							styling : 'bootstrap3'
						});
					});
				</script>
			</g:if>

			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_content">
							<p class="text-muted font-13 m-b-30">
								<g:message code="default.table.description" />
							</p>
							<table id="datatable-buttons"
								class="table table-striped table-bordered">
								<thead>
									<tr>

										<th><g:message code="video.cliente.label"
												default="Cliente" /></th>

										<g:sortableColumn property="fechaCreacion"
											title="${message(code: 'video.fechaCreacion.label', default: 'Fecha Creacion')}" />

										<sec:ifLoggedIn>
										<g:sortableColumn property="estado"
											title="${message(code: 'video.estado.label', default: 'Estado')}" />
											
										<g:sortableColumn property="archivoOriginal"
											title="${message(code: 'video.archivoOriginal.label', default: 'Archivo Original')}" />
										</sec:ifLoggedIn>

										<g:sortableColumn property="archivoConvertido"
											title="${message(code: 'video.archivoConvertido.label', default: 'Archivo Convertido')}" />

										<g:sortableColumn property="mensajeProducto"
											title="${message(code: 'video.mensajeProducto.label', default: 'Mensaje Producto')}" />

									</tr>
								</thead>
								<tbody>
									<g:each in="${videoInstanceList}" status="i"
										var="videoInstance">
										<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

											<td><g:link action="show" id="${videoInstance.id}">
													${fieldValue(bean: videoInstance, field: "cliente")}
												</g:link></td>

											<td><g:formatDate date="${videoInstance.fechaCreacion}" /></td>
											
											<sec:ifLoggedIn>
											<td>
												${fieldValue(bean: videoInstance, field: "estado")}
											</td>

											<td>
												<div id="myDiv${i}" title="${fieldValue(bean: videoInstance, field: "archivoOriginal")}">This text will be replaced with a player.</div>
											</td>
											
											</sec:ifLoggedIn>
											<td>
											
												<video width="300" controls>
												  <source class="videoConvert" src="" type="video/mp4">												  
												</video>
											</td>

											<td>
												${fieldValue(bean: videoInstance, field: "mensajeProducto")}
											</td>

										</tr>
									</g:each>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var el = document.getElementsByClassName("videoConvert");

		for(var i=0; i<el.length; i++) {

			var vidOris = document.getElementById("myDiv" + [i]);
			var origiFile = vidOris.title;
			
			var httpRoute = "http://smarttoolsuniandes.s3.amazonaws.com/videos_convert/" + origiFile.split('\\').pop().split('/').pop();
			console.log("FLV")
			console.log(httpRoute);
			el[i].src = String(httpRoute);


			var httpOri =  "http://smarttoolsuniandes.s3.amazonaws.com/videos/" + origiFile.split('\\').pop().split('/').pop();
			console.log("HTML")
			console.log(httpOri);
				
			jwplayer(vidOris).setup({
			    "file": httpOri,
			    "image": "http://example.com/myImage.png",
			    "height": 200,
			    "width": 300
			});
		}
		
	</script>
</body>
</html>
