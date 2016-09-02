

<%@ page import="com.smarttools.Persona" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'persona.label', default: 'Persona')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						${entityName}
						<small><g:message code="default.show.label" args="['']" /></small>
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
						<div class="x_title">
							<h2>
								<g:message code="default.form.show.label" />
							</h2>
							<div class="clearfix"></div>
						</div>
						<br />
						<ol class="property-list persona">
							
				<g:if test="${personaInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><strong><g:message code="persona.username.label" default="Username" />:</strong></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personaInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><strong><g:message code="persona.password.label" default="Password" />:</strong></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${personaInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><strong><g:message code="persona.nombres.label" default="Nombres" />:</strong></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${personaInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><strong><g:message code="persona.apellidos.label" default="Apellidos" />:</strong></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${personaInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><strong><g:message code="persona.accountExpired.label" default="Account Expired" />:</strong></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${personaInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><strong><g:message code="persona.accountLocked.label" default="Account Locked" />:</strong></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${personaInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.concursos}">
				<li class="fieldcontain">
					<span id="concursos-label" class="property-label"><strong><g:message code="persona.concursos.label" default="Concursos" />:</strong></span>
					
						<g:each in="${personaInstance.concursos}" var="c">
						<span class="property-value" aria-labelledby="concursos-label"><g:link controller="concurso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><strong><g:message code="persona.enabled.label" default="Enabled" />:</strong></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${personaInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><strong><g:message code="persona.passwordExpired.label" default="Password Expired" />:</strong></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${personaInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.videos}">
				<li class="fieldcontain">
					<span id="videos-label" class="property-label"><strong><g:message code="persona.videos.label" default="Videos" />:</strong></span>
					
						<g:each in="${personaInstance.videos}" var="v">
						<span class="property-value" aria-labelledby="videos-label"><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
						</ol>
						<div class="ln_solid"></div>
						<g:form url="[resource:personaInstance, action:'delete']"
							method="DELETE">
							<div class="form-group">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
									<g:link class="btn btn-success edit" action="edit"
										resource="${personaInstance}">
										<g:message code="default.button.edit.label" default="Edit" />
									</g:link>
									<g:actionSubmit class="btn btn-primarydelete" action="delete"
										value="${message(code: 'default.button.delete.label', default: 'Delete')}"
										onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
								</div>
							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
