<%@ page import="com.smarttools.Concurso" %>



<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'administrador', 'error')} required">
	<label for="administrador">
		<g:message code="concurso.administrador.label" default="Administrador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="administrador" name="administrador.id" from="${com.smarttools.Persona.list()}" optionKey="id" required="" value="${concursoInstance?.administrador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="concurso.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${concursoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'banner', 'error')} required">
	<label for="banner">
		<g:message code="concurso.banner.label" default="Banner" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="banner" name="banner" />

</div>

<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="concurso.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="url" required="" value="${concursoInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="concurso.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${concursoInstance?.fechaInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'fechaFin', 'error')} required">
	<label for="fechaFin">
		<g:message code="concurso.fechaFin.label" default="Fecha Fin" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${concursoInstance?.fechaFin}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: concursoInstance, field: 'descripcionPremio', 'error')} required">
	<label for="descripcionPremio">
		<g:message code="concurso.descripcionPremio.label" default="Descripcion Premio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descripcionPremio" cols="40" rows="5" maxlength="400" required="" value="${concursoInstance?.descripcionPremio}"/>

</div>

