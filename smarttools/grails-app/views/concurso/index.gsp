
<%@ page import="com.smarttools.Concurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concurso.label', default: 'Concurso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-concurso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-concurso" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="concurso.administrador.label" default="Administrador" /></th>
					
						<g:sortableColumn property="nombre" title="${message(code: 'concurso.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="banner" title="${message(code: 'concurso.banner.label', default: 'Banner')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'concurso.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'concurso.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="fechaFin" title="${message(code: 'concurso.fechaFin.label', default: 'Fecha Fin')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${concursoInstanceList}" status="i" var="concursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${concursoInstance.id}">${fieldValue(bean: concursoInstance, field: "administrador")}</g:link></td>
					
						<td>${fieldValue(bean: concursoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: concursoInstance, field: "banner")}</td>
					
						<td>${fieldValue(bean: concursoInstance, field: "url")}</td>
					
						<td><g:formatDate date="${concursoInstance.fechaInicio}" /></td>
					
						<td><g:formatDate date="${concursoInstance.fechaFin}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${concursoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
