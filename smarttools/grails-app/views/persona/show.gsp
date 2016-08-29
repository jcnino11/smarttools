
<%@ page import="com.smarttools.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-persona" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list persona">
			
				<g:if test="${personaInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="persona.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personaInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="persona.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${personaInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="persona.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${personaInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="persona.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${personaInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="persona.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${personaInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="persona.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${personaInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.concursos}">
				<li class="fieldcontain">
					<span id="concursos-label" class="property-label"><g:message code="persona.concursos.label" default="Concursos" /></span>
					
						<g:each in="${personaInstance.concursos}" var="c">
						<span class="property-value" aria-labelledby="concursos-label"><g:link controller="concurso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="persona.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${personaInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="persona.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${personaInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.videos}">
				<li class="fieldcontain">
					<span id="videos-label" class="property-label"><g:message code="persona.videos.label" default="Videos" /></span>
					
						<g:each in="${personaInstance.videos}" var="v">
						<span class="property-value" aria-labelledby="videos-label"><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
