
<%@ page import="com.smarttools.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
                        text: '${flash.message}',
                        type: 'info',
                        styling: 'bootstrap3'
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
					<tr>
					
						<th><g:message code="video.cliente.label" default="Cliente" /></th>
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'video.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'video.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="archivoOriginal" title="${message(code: 'video.archivoOriginal.label', default: 'Archivo Original')}" />
					
						<g:sortableColumn property="archivoConvertido" title="${message(code: 'video.archivoConvertido.label', default: 'Archivo Convertido')}" />
					
						<g:sortableColumn property="mensajeProducto" title="${message(code: 'video.mensajeProducto.label', default: 'Mensaje Producto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "cliente")}</g:link></td>
					
						<td><g:formatDate date="${videoInstance.fechaCreacion}" /></td>
					
						<td>${fieldValue(bean: videoInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "archivoOriginal")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "archivoConvertido")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "mensajeProducto")}</td>
					
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
	</body>
</html>
