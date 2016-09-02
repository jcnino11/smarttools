<%@ page import="com.smarttools.Video" %>



<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="cliente">
		<g:message code="video.cliente.label" default="Cliente" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:select class="select2_single form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'cliente', 'parsley-error')}" tabindex="-1" id="cliente" name="cliente.id" from="${com.smarttools.Persona.list()}" optionKey="id" required="" value="${videoInstance?.cliente?.id}"/></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="fechaCreacion">
		<g:message code="video.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:field class="form-control date-picker col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'fechaCreacion', 'parsley-error')}" name="fechaCreacion" type="text" precision="day"  value="${videoInstance?.fechaCreacion}"  /></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="estado">
		<g:message code="video.estado.label" default="Estado" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:select name="estado" class="select2_single form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'estado', 'parsley-error')}" from="${videoInstance.constraints.estado.inList}" required="" value="${videoInstance?.estado}" valueMessagePrefix="video.estado"/></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="archivoOriginal">
		<g:message code="video.archivoOriginal.label" default="Archivo Original" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><input class="form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'archivoOriginal', 'parsley-error')}" type="file" id="archivoOriginal" name="archivoOriginal" /></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="archivoConvertido">
		<g:message code="video.archivoConvertido.label" default="Archivo Convertido" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><input class="form-control col-md-7 col-xs-12 ${hasErrors(bean:videoInstance, field:'archivoConvertido', 'parsley-error')}" type="file" id="archivoConvertido" name="archivoConvertido" /></div>

</div>

<div class="form-group">
	<label class="control-label col-md-3 col-sm-3 col-xs-12" for="mensajeProducto">
		<g:message code="video.mensajeProducto.label" default="Mensaje Producto" />
		<span class="required">*</span>
	</label>
	<div class="col-md-4 col-sm-4 col-xs-12"><g:textArea class="form-control" name="mensajeProducto" cols="40" rows="5" maxlength="400" required="" value="${videoInstance?.mensajeProducto}"/></div>

</div>

