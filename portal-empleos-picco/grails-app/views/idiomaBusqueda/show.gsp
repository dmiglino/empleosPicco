
<%@ page import="portal.empleos.picco.busqueda.IdiomaBusqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'idiomaBusqueda.label', default: 'IdiomaBusqueda')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-idiomaBusqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-idiomaBusqueda" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list idiomaBusqueda">
			
				<g:if test="${idiomaBusquedaInstance?.nivel}">
				<li class="fieldcontain">
					<span id="nivel-label" class="property-label"><g:message code="idiomaBusqueda.nivel.label" default="Nivel" /></span>
					
						<span class="property-value" aria-labelledby="nivel-label"><g:fieldValue bean="${idiomaBusquedaInstance}" field="nivel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.idioma}">
				<li class="fieldcontain">
					<span id="idioma-label" class="property-label"><g:message code="idiomaBusqueda.idioma.label" default="Idioma" /></span>
					
						<span class="property-value" aria-labelledby="idioma-label"><g:fieldValue bean="${idiomaBusquedaInstance}" field="idioma"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.tiempoExperiencia}">
				<li class="fieldcontain">
					<span id="tiempoExperiencia-label" class="property-label"><g:message code="idiomaBusqueda.tiempoExperiencia.label" default="Tiempo Experiencia" /></span>
					
						<span class="property-value" aria-labelledby="tiempoExperiencia-label"><g:fieldValue bean="${idiomaBusquedaInstance}" field="tiempoExperiencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="idiomaBusqueda.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${idiomaBusquedaInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="idiomaBusqueda.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${idiomaBusquedaInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="idiomaBusqueda.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${idiomaBusquedaInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="idiomaBusqueda.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${idiomaBusquedaInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaBusquedaInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="idiomaBusqueda.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${idiomaBusquedaInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${idiomaBusquedaInstance?.id}" />
					<g:link class="edit" action="edit" id="${idiomaBusquedaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
