<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						\${entityName}
						<small><g:message code="default.create.label" args="['']" /></small>
					</h3>
				</div>
			</div>
			<div class="clearfix"></div>
			<g:if test="\${flash.message}">
				<script type="text/javascript">
				\$(function(){
					new PNotify({
                        title: 'Mensaje',
                        text: '\${flash.message}',
                        type: 'info',
                        styling: 'bootstrap3'
                    });
			    });
				</script>
			</g:if>
			<g:hasErrors bean="\${${propertyName}}">
				<g:eachError bean="\${${propertyName}}" var="error">
					<script type="text/javascript">
					\$(function(){
						new PNotify({
	                        title: 'Error',
	                        text: '\${message(error: error)}',
								type : 'error',
								styling : 'bootstrap3'
							});
						});
					</script>
				</g:eachError>
			</g:hasErrors>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>
								<g:message code="default.form.create.label" />
								<small><g:message code="default.form.create.description" /></small>
							</h2>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<br />
							<g:form data-parsley-validate class="form-horizontal form-label-left"
								url="[resource:${propertyName}, action:'save']"
								<%= multiPart ? ' enctype="multipart/form-data"' : '' %>>
								<g:render template="form" />
								<div class="ln_solid"></div>
								<div class="form-group">
									<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
										<g:submitButton name="create" class="btn btn-success save"
											value="\${message(code: 'default.button.create.label', default: 'Create')}" />
									</div>
								</div>
							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
