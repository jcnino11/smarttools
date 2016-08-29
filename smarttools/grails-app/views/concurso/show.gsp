
<%@ page import="com.smarttools.Concurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concurso.label', default: 'Concurso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-concurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-concurso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list concurso">
			
				<g:if test="${concursoInstance?.administrador}">
				<li class="fieldcontain">
					<span id="administrador-label" class="property-label"><g:message code="concurso.administrador.label" default="Administrador" /></span>
					
						<span class="property-value" aria-labelledby="administrador-label"><g:link controller="persona" action="show" id="${concursoInstance?.administrador?.id}">${concursoInstance?.administrador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${concursoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="concurso.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${concursoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${concursoInstance?.banner}">
				<li class="fieldcontain">
					<span id="banner-label" class="property-label"><g:message code="concurso.banner.label" default="Banner" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${concursoInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="concurso.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${concursoInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${concursoInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="concurso.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${concursoInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${concursoInstance?.fechaFin}">
				<li class="fieldcontain">
					<span id="fechaFin-label" class="property-label"><g:message code="concurso.fechaFin.label" default="Fecha Fin" /></span>
					
						<span class="property-value" aria-labelledby="fechaFin-label"><g:formatDate date="${concursoInstance?.fechaFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${concursoInstance?.descripcionPremio}">
				<li class="fieldcontain">
					<span id="descripcionPremio-label" class="property-label"><g:message code="concurso.descripcionPremio.label" default="Descripcion Premio" /></span>
					
						<span class="property-value" aria-labelledby="descripcionPremio-label"><g:fieldValue bean="${concursoInstance}" field="descripcionPremio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:concursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${concursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
