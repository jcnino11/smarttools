<%@ page import="com.smarttools.Persona"%>



<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="username">
		<g:message code="persona.username.label" default="Username" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:field
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'username', 'parsley-error')}"
			type="email" name="username" required=""
			value="${personaInstance?.username}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="password">
		<g:message code="persona.password.label" default="Password" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:passwordField
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'password', 'parsley-error')}"
			name="password" required="" value="${personaInstance?.password}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12"
		for="repassword"> <g:message code="persona.repassword.label"
			default="Re Password" /> <span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:passwordField
			class="form-control col-md-7 col-xs-12"
			name="repassword" required="" value="${repassword}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombres">
		<g:message code="persona.nombres.label" default="Nombres" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:textField
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'nombres', 'parsley-error')}"
			name="nombres" required="" value="${personaInstance?.nombres}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12"
		for="apellidos"> <g:message code="persona.apellidos.label"
			default="Apellidos" /> <span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:textField
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:personaInstance, field:'apellidos', 'parsley-error')}"
			name="apellidos" required="" value="${personaInstance?.apellidos}" />
	</div>

</div>
