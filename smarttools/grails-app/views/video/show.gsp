
<%@ page import="com.smarttools.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-video" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list video">
			
				<g:if test="${videoInstance?.cliente}">
				<li class="fieldcontain">
					<span id="cliente-label" class="property-label"><g:message code="video.cliente.label" default="Cliente" /></span>
					
						<span class="property-value" aria-labelledby="cliente-label"><g:link controller="persona" action="show" id="${videoInstance?.cliente?.id}">${videoInstance?.cliente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="video.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${videoInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="video.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${videoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.archivoOriginal}">
				<li class="fieldcontain">
					<span id="archivoOriginal-label" class="property-label"><g:message code="video.archivoOriginal.label" default="Archivo Original" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.archivoConvertido}">
				<li class="fieldcontain">
					<span id="archivoConvertido-label" class="property-label"><g:message code="video.archivoConvertido.label" default="Archivo Convertido" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.mensajeProducto}">
				<li class="fieldcontain">
					<span id="mensajeProducto-label" class="property-label"><g:message code="video.mensajeProducto.label" default="Mensaje Producto" /></span>
					
						<span class="property-value" aria-labelledby="mensajeProducto-label"><g:fieldValue bean="${videoInstance}" field="mensajeProducto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
