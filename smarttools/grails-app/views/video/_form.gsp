<%@ page import="com.smarttools.Video" %>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12"
		for="concurso"> <g:message
			code="video.concurso.label" default="Concurso" /> <span
		class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:select
			class="select2_single form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'concurso', 'parsley-error')}"
			tabindex="-1" id="concurso" name="concurso.id"
			from="${com.smarttools.Concurso.list()}" optionKey="id" required=""
			value="${videoInstance?.concurso?.id}" />
	</div>
</div>


<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="cliente.username">
		<g:message code="video.cliente.username.label" default="Username cliente" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:field class="form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'cliente.username', 'parsley-error')}" 
		type="email" name="cliente.username" required="" value="${videoInstance?.cliente?.username}"/>
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="cliente.nombres">
		<g:message code="video.cliente.nombres.label" default="Nombres cliente" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:textField class="form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'cliente.nombres', 'parsley-error')}" 
		name="cliente.nombres" required="" value="${videoInstance?.cliente?.nombres}"/>
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="cliente..apellidos">
		<g:message code="video.cliente.apellidos.label" default="Apellidos cliente" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:textField class="form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'cliente.apellidos', 'parsley-error')}" 
		name="cliente.apellidos" required="" value="${videoInstance?.cliente?.apellidos}"/>
	</div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="archivoOriginal">
		<g:message code="video.archivoOriginal.label" default="Archivo Original" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12">
		<g:field type="file" class="form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'archivoOriginal', 'parsley-error')}" 
		id="archivoOriginal" name="archivoOriginalF"  accept=".avi,.wmv, .flv, .mp4"/>
	</div>

</div>


<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="mensajeProducto">
		<g:message code="video.mensajeProducto.label" default="Mensaje Producto" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:textArea class="form-control" name="mensajeProducto" cols="40" rows="5" maxlength="400" required="" value="${videoInstance?.mensajeProducto}"/></div>

</div>

