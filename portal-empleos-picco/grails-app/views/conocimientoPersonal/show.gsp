
<%@ page import="portal.empleos.picco.curriculum.ConocimientoPersonal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conocimientoPersonal.label', default: 'ConocimientoPersonal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conocimientoPersonal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conocimientoPersonal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conocimientoPersonal">
			
				<g:if test="${conocimientoPersonalInstance?.nivel}">
				<li class="fieldcontain">
					<span id="nivel-label" class="property-label"><g:message code="conocimientoPersonal.nivel.label" default="Nivel" /></span>
					
						<span class="property-value" aria-labelledby="nivel-label"><g:fieldValue bean="${conocimientoPersonalInstance}" field="nivel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.conocimiento}">
				<li class="fieldcontain">
					<span id="conocimiento-label" class="property-label"><g:message code="conocimientoPersonal.conocimiento.label" default="Conocimiento" /></span>
					
						<span class="property-value" aria-labelledby="conocimiento-label"><g:link controller="conocimiento" action="show" id="${conocimientoPersonalInstance?.conocimiento?.id}">${conocimientoPersonalInstance?.conocimiento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.tiempoExperiencia}">
				<li class="fieldcontain">
					<span id="tiempoExperiencia-label" class="property-label"><g:message code="conocimientoPersonal.tiempoExperiencia.label" default="Tiempo Experiencia" /></span>
					
						<span class="property-value" aria-labelledby="tiempoExperiencia-label"><g:fieldValue bean="${conocimientoPersonalInstance}" field="tiempoExperiencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="conocimientoPersonal.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${conocimientoPersonalInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="conocimientoPersonal.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${conocimientoPersonalInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="conocimientoPersonal.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${conocimientoPersonalInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="conocimientoPersonal.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${conocimientoPersonalInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conocimientoPersonalInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="conocimientoPersonal.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${conocimientoPersonalInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${conocimientoPersonalInstance?.id}" />
					<g:link class="edit" action="edit" id="${conocimientoPersonalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
