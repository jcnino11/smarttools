
<%@ page import="com.smarttools.Concurso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concurso.label', default: 'Concurso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						${entityName}
						<small><g:message code="default.list.label" args="['']" /></small>
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
						<div class="x_content">
							<p class="text-muted font-13 m-b-30">
								<g:message code="default.table.description" />
							</p>
							<table id="datatable-buttons"
								class="table table-striped table-bordered">
					<tr>
					
						<th><g:message code="concurso.administrador.label" default="Administrador" /></th>
					
						<g:sortableColumn property="nombre" title="${message(code: 'concurso.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="banner" title="${message(code: 'concurso.banner.label', default: 'Banner')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'concurso.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'concurso.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<g:sortableColumn property="fechaFin" title="${message(code: 'concurso.fechaFin.label', default: 'Fecha Fin')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${concursoInstanceList}" status="i" var="concursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${concursoInstance.id}">${fieldValue(bean: concursoInstance, field: "administrador")}</g:link></td>
					
						<td>${fieldValue(bean: concursoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: concursoInstance, field: "banner")}</td>
					
						<td>${fieldValue(bean: concursoInstance, field: "url")}</td>
					
						<td><g:formatDate date="${concursoInstance.fechaInicio}" /></td>
					
						<td><g:formatDate date="${concursoInstance.fechaFin}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			</div>
			</div>
			</div>
			</div>
			</div>
		</div>
	</body>
</html>
