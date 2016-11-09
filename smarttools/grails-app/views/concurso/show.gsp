

<%@ page import="com.smarttools.Concurso"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'concurso.label', default: 'Concurso')}" />
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
						<ol class="property-list concurso">

							<g:if test="${concursoInstance?.administrador}">
								<li class="fieldcontain"><span id="administrador-label"
									class="property-label"><strong><g:message
												code="concurso.administrador.label" default="Administrador" />:</strong></span>

									<span class="property-value"
									aria-labelledby="administrador-label"><g:link
											controller="persona" action="show"
											id="${concursoInstance?.administrador?.id}">
											${concursoInstance?.administrador?.encodeAsHTML()}
										</g:link></span></li>
							</g:if>

							<g:if test="${concursoInstance?.nombre}">
								<li class="fieldcontain"><span id="nombre-label"
									class="property-label"><strong><g:message
												code="concurso.nombre.label" default="Nombre" />:</strong></span> <span
									class="property-value" aria-labelledby="nombre-label"><g:fieldValue
											bean="${concursoInstance}" field="nombre" /></span></li>
							</g:if>

							<g:if test="${concursoInstance?.banner}">
								<li class="fieldcontain"><span id="banner-label"
									class="property-label"> <img
										src="data:image/png;base64,${concursoInstance.banner.encodeBase64()}" />
								</span></li>
							</g:if>

							<g:if test="${concursoInstance?.url}">
								<li class="fieldcontain"><span id="url-label"
									class="property-label"><strong><g:message
												code="concurso.url.label" default="Url" />:</strong></span> <span
									class="property-value" aria-labelledby="url-label"><g:fieldValue
											bean="${concursoInstance}" field="url" /></span></li>
							</g:if>

							<g:if test="${concursoInstance?.fechaInicio}">
								<li class="fieldcontain"><span id="fechaInicio-label"
									class="property-label"><strong><g:message
												code="concurso.fechaInicio.label" default="Fecha Inicio" />:</strong></span>

									<span class="property-value"
									aria-labelledby="fechaInicio-label"><g:formatDate
											date="${concursoInstance?.fechaInicio}" /></span></li>
							</g:if>

							<g:if test="${concursoInstance?.fechaFin}">
								<li class="fieldcontain"><span id="fechaFin-label"
									class="property-label"><strong><g:message
												code="concurso.fechaFin.label" default="Fecha Fin" />:</strong></span> <span
									class="property-value" aria-labelledby="fechaFin-label"><g:formatDate
											date="${concursoInstance?.fechaFin}" /></span></li>
							</g:if>

							<g:if test="${concursoInstance?.descripcionPremio}">
								<li class="fieldcontain"><span id="descripcionPremio-label"
									class="property-label"><strong><g:message
												code="concurso.descripcionPremio.label"
												default="Descripcion Premio" />:</strong></span> <span
									class="property-value"
									aria-labelledby="descripcionPremio-label"><g:fieldValue
											bean="${concursoInstance}" field="descripcionPremio" /></span></li>
							</g:if>

							<li class="fieldcontain"><span id="videos-label"
								class="property-label"> <strong><g:message
											code="concurso.videos.label" default="Videos concurso" />:</strong>
							</span> <span class="property-value"
								aria-labelledby="descripcionPremio-label"> <g:link
										controller="video" action="index"
										params="['concurso.id': concursoInstance?.id]">Ver videos</g:link>
							</span></li>

						</ol>
						<div class="ln_solid"></div>
						<g:form url="[resource:concursoInstance, action:'delete']"
							method="DELETE">
							<div class="form-group">
								<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
									<g:link class="btn btn-success edit" action="edit"
										resource="${concursoInstance}">
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
