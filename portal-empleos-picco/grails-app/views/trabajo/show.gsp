
<%@ page import="portal.empleos.picco.curriculum.Trabajo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trabajo.label', default: 'Trabajo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trabajo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trabajo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trabajo">
			
				<g:if test="${trabajoInstance?.institucion}">
				<li class="fieldcontain">
					<span id="institucion-label" class="property-label"><g:message code="trabajo.institucion.label" default="Institucion" /></span>
					
						<span class="property-value" aria-labelledby="institucion-label"><g:link controller="institucion" action="show" id="${trabajoInstance?.institucion?.id}">${trabajoInstance?.institucion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.textoLibre}">
				<li class="fieldcontain">
					<span id="textoLibre-label" class="property-label"><g:message code="trabajo.textoLibre.label" default="Texto Libre" /></span>
					
						<span class="property-value" aria-labelledby="textoLibre-label"><g:fieldValue bean="${trabajoInstance}" field="textoLibre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.fechaInicio}">
				<li class="fieldcontain">
					<span id="fechaInicio-label" class="property-label"><g:message code="trabajo.fechaInicio.label" default="Fecha Inicio" /></span>
					
						<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${trabajoInstance?.fechaInicio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.fechaFin}">
				<li class="fieldcontain">
					<span id="fechaFin-label" class="property-label"><g:message code="trabajo.fechaFin.label" default="Fecha Fin" /></span>
					
						<span class="property-value" aria-labelledby="fechaFin-label"><g:formatDate date="${trabajoInstance?.fechaFin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.puesto}">
				<li class="fieldcontain">
					<span id="puesto-label" class="property-label"><g:message code="trabajo.puesto.label" default="Puesto" /></span>
					
						<span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${trabajoInstance}" field="puesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.funcion}">
				<li class="fieldcontain">
					<span id="funcion-label" class="property-label"><g:message code="trabajo.funcion.label" default="Funcion" /></span>
					
						<span class="property-value" aria-labelledby="funcion-label"><g:fieldValue bean="${trabajoInstance}" field="funcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="trabajo.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${trabajoInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="trabajo.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${trabajoInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="trabajo.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${trabajoInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="trabajo.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${trabajoInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="trabajo.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${trabajoInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${trabajoInstance?.proyectos}">
				<li class="fieldcontain">
					<span id="proyectos-label" class="property-label"><g:message code="trabajo.proyectos.label" default="Proyectos" /></span>
					
						<g:each in="${trabajoInstance.proyectos}" var="p">
						<span class="property-value" aria-labelledby="proyectos-label"><g:link controller="proyecto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${trabajoInstance?.id}" />
					<g:link class="edit" action="edit" id="${trabajoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
