
<%@ page import="portal.empleos.picco.curriculum.Educacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'educacion.label', default: 'Educacion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-educacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-educacion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list educacion">
			
				<g:if test="${educacionInstance?.institucion}">
				<li class="fieldcontain">
					<span id="institucion-label" class="property-label"><g:message code="educacion.institucion.label" default="Institucion" /></span>
					
						<span class="property-value" aria-labelledby="institucion-label"><g:link controller="institucion" action="show" id="${educacionInstance?.institucion?.id}">${educacionInstance?.institucion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.textoLibre}">
				<li class="fieldcontain">
					<span id="textoLibre-label" class="property-label"><g:message code="educacion.textoLibre.label" default="Texto Libre" /></span>
					
						<span class="property-value" aria-labelledby="textoLibre-label"><g:fieldValue bean="${educacionInstance}" field="textoLibre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="educacion.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${educacionInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.fechaFin}">
				<li class="fieldcontain">
					<span id="fechaFin-label" class="property-label"><g:message code="educacion.fechaFin.label" default="Fecha Fin" /></span>
					
						<span class="property-value" aria-labelledby="fechaFin-label"><g:formatDate date="${educacionInstance?.fechaFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="educacion.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${educacionInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.promedio}">
				<li class="fieldcontain">
					<span id="promedio-label" class="property-label"><g:message code="educacion.promedio.label" default="Promedio" /></span>
					
						<span class="property-value" aria-labelledby="promedio-label"><g:fieldValue bean="${educacionInstance}" field="promedio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="educacion.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${educacionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="educacion.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${educacionInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="educacion.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${educacionInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="educacion.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${educacionInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${educacionInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="educacion.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${educacionInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${educacionInstance?.id}" />
					<g:link class="edit" action="edit" id="${educacionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
