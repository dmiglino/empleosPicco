
<%@ page import="portal.empleos.picco.enumerations.Institucion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-institucion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list institucion">
			
				<g:if test="${institucionInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="institucion.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${institucionInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.privada}">
				<li class="fieldcontain">
					<span id="privada-label" class="property-label"><g:message code="institucion.privada.label" default="Privada" /></span>
					
						<span class="property-value" aria-labelledby="privada-label"><g:formatBoolean boolean="${institucionInstance?.privada}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="institucion.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${institucionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="institucion.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${institucionInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="institucion.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${institucionInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="institucion.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${institucionInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="institucion.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${institucionInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${institucionInstance?.id}" />
					<g:link class="edit" action="edit" id="${institucionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
