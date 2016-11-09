<%@ page import="com.smarttools.Concurso"%>



<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12"
		for="administrador"> <g:message
			code="concurso.administrador.label" default="Administrador" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:select
			class="select2_single form-control col-md-7 col-xs-12 ${hasErrors(bean:concursoInstance, field:'administrador', 'parsley-error')}"
			tabindex="-1" id="administrador" name="administrador.id"
			from="${com.smarttools.Persona.getActual()}" optionKey="id" required=""
			value="${concursoInstance?.administrador?.id}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombre">
		<g:message code="concurso.nombre.label" default="Nombre" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:textField
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:concursoInstance, field:'nombre', 'parsley-error')}"
			name="nombre" required="" value="${concursoInstance?.nombre}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="banner">
		<g:message code="concurso.banner.label" default="Banner" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<input
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:concursoInstance, field:'banner', 'parsley-error')}"
			type="file" id="banner" name="banner" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="url">
		<g:message code="concurso.url.label" default="Url" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:field
			class="form-control col-md-7 col-xs-12 ${hasErrors(bean:concursoInstance, field:'url', 'parsley-error')}"
			type="url" name="url" required="" value="${concursoInstance?.url}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12"
		for="fechaInicio"> <g:message
			code="concurso.fechaInicio.label" default="Fecha Inicio" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:field
			class="form-control date-picker col-md-7 col-xs-12 ${hasErrors(bean:concursoInstance, field:'fechaInicio', 'parsley-error')}"
			name="fechaInicio" type="text" precision="day"
			value="${formatDate(date:concursoInstance?.fechaInicio)}" />
		<g:hiddenField name="fechaInicio"
			value="${concursoInstance?.fechaInicio}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="fechaFin">
		<g:message code="concurso.fechaFin.label" default="Fecha Fin" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:field
			class="form-control date-picker col-md-7 col-xs-12 ${hasErrors(bean:concursoInstance, field:'fechaFin', 'parsley-error')}"
			name="fechaFin" type="text" precision="day"
			value="${formatDate(date:concursoInstance?.fechaFin)}" />
		<g:hiddenField name="fechaFin" value="${concursoInstance?.fechaFin}" />
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12"
		for="descripcionPremio"> <g:message
			code="concurso.descripcionPremio.label" default="Descripcion Premio" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:textArea class="form-control" name="descripcionPremio" cols="40"
			rows="5" maxlength="400" required=""
			value="${concursoInstance?.descripcionPremio}" />
	</div>

</div>

