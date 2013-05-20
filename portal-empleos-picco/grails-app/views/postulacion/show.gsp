
<%@ page import="portal.empleos.picco.busqueda.Postulacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postulacion.label', default: 'Postulacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-postulacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-postulacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list postulacion">
			
				<g:if test="${postulacionInstance?.remuneracionPretendida}">
				<li class="fieldcontain">
					<span id="remuneracionPretendida-label" class="property-label"><g:message code="postulacion.remuneracionPretendida.label" default="Remuneracion Pretendida" /></span>
					
						<span class="property-value" aria-labelledby="remuneracionPretendida-label"><g:fieldValue bean="${postulacionInstance}" field="remuneracionPretendida"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.textoPresentacionPostulante}">
				<li class="fieldcontain">
					<span id="textoPresentacionPostulante-label" class="property-label"><g:message code="postulacion.textoPresentacionPostulante.label" default="Texto Presentacion Postulante" /></span>
					
						<span class="property-value" aria-labelledby="textoPresentacionPostulante-label"><g:fieldValue bean="${postulacionInstance}" field="textoPresentacionPostulante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.busqueda}">
				<li class="fieldcontain">
					<span id="busqueda-label" class="property-label"><g:message code="postulacion.busqueda.label" default="Busqueda" /></span>
					
						<span class="property-value" aria-labelledby="busqueda-label"><g:link controller="busqueda" action="show" id="${postulacionInstance?.busqueda?.id}">${postulacionInstance?.busqueda?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="postulacion.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postulacionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="postulacion.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${postulacionInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="postulacion.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${postulacionInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="postulacion.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${postulacionInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="postulacion.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${postulacionInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postulacionInstance?.persona}">
				<li class="fieldcontain">
					<span id="persona-label" class="property-label"><g:message code="postulacion.persona.label" default="Persona" /></span>
					
						<span class="property-value" aria-labelledby="persona-label"><g:link controller="persona" action="show" id="${postulacionInstance?.persona?.id}">${postulacionInstance?.persona?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${postulacionInstance?.id}" />
					<g:link class="edit" action="edit" id="${postulacionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
