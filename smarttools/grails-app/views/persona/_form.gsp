<%@ page import="com.smarttools.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="persona.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${personaInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="persona.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${personaInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="persona.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" required="" value="${personaInstance?.nombres}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="persona.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" required="" value="${personaInstance?.apellidos}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="persona.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${personaInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="persona.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${personaInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'concursos', 'error')} ">
	<label for="concursos">
		<g:message code="persona.concursos.label" default="Concursos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personaInstance?.concursos?}" var="c">
    <li><g:link controller="concurso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="concurso" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'concurso.label', default: 'Concurso')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="persona.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${personaInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="persona.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${personaInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="persona.videos.label" default="Videos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personaInstance?.videos?}" var="v">
    <li><g:link controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="video" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
</li>
</ul>


</div>

