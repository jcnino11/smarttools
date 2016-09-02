<%@ page import="com.smarttools.Persona" %>



<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">
		<g:message code="persona.username.label" default="Username" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:field class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'username', 'parsley-error')}" type="email" name="username" required="" value="${personaInstance?.username}"/></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">
		<g:message code="persona.password.label" default="Password" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:textField class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'password', 'parsley-error')}" name="password" required="" value="${personaInstance?.password}"/></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombres">
		<g:message code="persona.nombres.label" default="Nombres" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:textField class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'nombres', 'parsley-error')}" name="nombres" required="" value="${personaInstance?.nombres}"/></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="apellidos">
		<g:message code="persona.apellidos.label" default="Apellidos" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:textField class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'apellidos', 'parsley-error')}" name="apellidos" required="" value="${personaInstance?.apellidos}"/></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="accountExpired">
		<g:message code="persona.accountExpired.label" default="Account Expired" />
		
	</label>
	<div class="col-md-9 col-sm-9 col-xs-12"><div class=""><label><g:checkBox class="js-switch" name="accountExpired" value="${personaInstance?.accountExpired}" /></label></div></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="accountLocked">
		<g:message code="persona.accountLocked.label" default="Account Locked" />
		
	</label>
	<div class="col-md-9 col-sm-9 col-xs-12"><div class=""><label><g:checkBox class="js-switch" name="accountLocked" value="${personaInstance?.accountLocked}" /></label></div></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="concursos">
		<g:message code="persona.concursos.label" default="Concursos" />
		
	</label>
	
<div class="col-md-4 col-sm-4 col-xs-12 accordion" id="accordion1" role="tablist" aria-multiselectable="true">
	<div class="panel">
 		<a class="panel-heading collapsed" role="tab" id="headingOne1" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
        	<h3 class="panel-title"><g:message code="default.list.label" default="Listado" /></h3>
        </a>
    	<div id="collapseOne1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
			<div class="panel-body">
				<ul class="one-to-many">
				<g:each in="${personaInstance?.concursos?}" var="c">
    				<li><g:link class="btn btn-default btn-xs" controller="concurso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
			</g:each>
			<li>
			<g:link class="btn btn-info btn-xs" controller="concurso" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'concurso.label', default: 'Concurso')])}</g:link>
			</li>
			</ul>
			</div>
		</div>
	</div>
</div>



</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="enabled">
		<g:message code="persona.enabled.label" default="Enabled" />
		
	</label>
	<div class="col-md-9 col-sm-9 col-xs-12"><div class=""><label><g:checkBox class="js-switch" name="enabled" value="${personaInstance?.enabled}" /></label></div></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="passwordExpired">
		<g:message code="persona.passwordExpired.label" default="Password Expired" />
		
	</label>
	<div class="col-md-9 col-sm-9 col-xs-12"><div class=""><label><g:checkBox class="js-switch" name="passwordExpired" value="${personaInstance?.passwordExpired}" /></label></div></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="videos">
		<g:message code="persona.videos.label" default="Videos" />
		
	</label>
	
<div class="col-md-4 col-sm-4 col-xs-12 accordion" id="accordion1" role="tablist" aria-multiselectable="true">
	<div class="panel">
 		<a class="panel-heading collapsed" role="tab" id="headingOne1" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1" aria-expanded="true" aria-controls="collapseOne">
        	<h3 class="panel-title"><g:message code="default.list.label" default="Listado" /></h3>
        </a>
    	<div id="collapseOne1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
			<div class="panel-body">
				<ul class="one-to-many">
				<g:each in="${personaInstance?.videos?}" var="v">
    				<li><g:link class="btn btn-default btn-xs" controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
			</g:each>
			<li>
			<g:link class="btn btn-info btn-xs" controller="video" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
			</li>
			</ul>
			</div>
		</div>
	</div>
</div>



</div>

