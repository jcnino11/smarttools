<%@ page import="com.smarttools.Video" %>



<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="video.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${com.smarttools.Persona.list()}" optionKey="id" required="" value="${videoInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="video.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${videoInstance?.fechaCreacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="video.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${videoInstance.constraints.estado.inList}" required="" value="${videoInstance?.estado}" valueMessagePrefix="video.estado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'archivoOriginal', 'error')} required">
	<label for="archivoOriginal">
		<g:message code="video.archivoOriginal.label" default="Archivo Original" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="archivoOriginal" name="archivoOriginal" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'archivoConvertido', 'error')} required">
	<label for="archivoConvertido">
		<g:message code="video.archivoConvertido.label" default="Archivo Convertido" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="archivoConvertido" name="archivoConvertido" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoInstance, field: 'mensajeProducto', 'error')} required">
	<label for="mensajeProducto">
		<g:message code="video.mensajeProducto.label" default="Mensaje Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="mensajeProducto" cols="40" rows="5" maxlength="400" required="" value="${videoInstance?.mensajeProducto}"/>

</div>

