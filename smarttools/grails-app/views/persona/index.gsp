
<%@ page import="com.smarttools.Persona" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
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
					
						<g:sortableColumn property="username" title="${message(code: 'persona.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'persona.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="nombres" title="${message(code: 'persona.nombres.label', default: 'Nombres')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'persona.apellidos.label', default: 'Apellidos')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'persona.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'persona.accountLocked.label', default: 'Account Locked')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "nombres")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "apellidos")}</td>
					
						<td><g:formatBoolean boolean="${personaInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${personaInstance.accountLocked}" /></td>
					
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
