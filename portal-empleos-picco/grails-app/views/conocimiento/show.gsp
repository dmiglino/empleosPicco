
<%@ page import="portal.empleos.picco.enumerations.Conocimiento" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conocimiento.label', default: 'Conocimiento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conocimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conocimiento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conocimiento">
			
				<g:if test="${conocimientoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="conocimiento.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${conocimientoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="conocimiento.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:link controller="tipoTrabajo" action="show" id="${conocimientoInstance?.tipo?.id}">${conocimientoInstance?.tipo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="conocimiento.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${conocimientoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="conocimiento.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${conocimientoInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="conocimiento.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${conocimientoInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="conocimiento.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${conocimientoInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="conocimiento.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${conocimientoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${conocimientoInstance?.id}" />
					<g:link class="edit" action="edit" id="${conocimientoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
