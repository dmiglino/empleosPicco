
<%@ page import="portal.empleos.picco.curriculum.IdiomaPersonal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'idiomaPersonal.label', default: 'IdiomaPersonal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-idiomaPersonal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-idiomaPersonal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list idiomaPersonal">
			
				<g:if test="${idiomaPersonalInstance?.nivel}">
				<li class="fieldcontain">
					<span id="nivel-label" class="property-label"><g:message code="idiomaPersonal.nivel.label" default="Nivel" /></span>
					
						<span class="property-value" aria-labelledby="nivel-label"><g:fieldValue bean="${idiomaPersonalInstance}" field="nivel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.idioma}">
				<li class="fieldcontain">
					<span id="idioma-label" class="property-label"><g:message code="idiomaPersonal.idioma.label" default="Idioma" /></span>
					
						<span class="property-value" aria-labelledby="idioma-label"><g:fieldValue bean="${idiomaPersonalInstance}" field="idioma"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.tiempoExperiencia}">
				<li class="fieldcontain">
					<span id="tiempoExperiencia-label" class="property-label"><g:message code="idiomaPersonal.tiempoExperiencia.label" default="Tiempo Experiencia" /></span>
					
						<span class="property-value" aria-labelledby="tiempoExperiencia-label"><g:fieldValue bean="${idiomaPersonalInstance}" field="tiempoExperiencia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="idiomaPersonal.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${idiomaPersonalInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="idiomaPersonal.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${idiomaPersonalInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="idiomaPersonal.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${idiomaPersonalInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.instituciones}">
				<li class="fieldcontain">
					<span id="instituciones-label" class="property-label"><g:message code="idiomaPersonal.instituciones.label" default="Instituciones" /></span>
					
						<g:each in="${idiomaPersonalInstance.instituciones}" var="i">
						<span class="property-value" aria-labelledby="instituciones-label"><g:link controller="institucion" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="idiomaPersonal.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${idiomaPersonalInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${idiomaPersonalInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="idiomaPersonal.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${idiomaPersonalInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${idiomaPersonalInstance?.id}" />
					<g:link class="edit" action="edit" id="${idiomaPersonalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
