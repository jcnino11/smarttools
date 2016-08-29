
<%@ page import="com.smarttools.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-video" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
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
			<div class="pagination">
				<g:paginate total="${videoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
