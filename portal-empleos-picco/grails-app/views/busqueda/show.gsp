
<%@ page import="portal.empleos.picco.busqueda.Busqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'busqueda.label', default: 'Busqueda')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-busqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-busqueda" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list busqueda">
			
				<g:if test="${busquedaInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="busqueda.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${busquedaInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.zona}">
				<li class="fieldcontain">
					<span id="zona-label" class="property-label"><g:message code="busqueda.zona.label" default="Zona" /></span>
					
						<span class="property-value" aria-labelledby="zona-label"><g:fieldValue bean="${busquedaInstance}" field="zona"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.textoLibre}">
				<li class="fieldcontain">
					<span id="textoLibre-label" class="property-label"><g:message code="busqueda.textoLibre.label" default="Texto Libre" /></span>
					
						<span class="property-value" aria-labelledby="textoLibre-label"><g:fieldValue bean="${busquedaInstance}" field="textoLibre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.sueldoOfrecido}">
				<li class="fieldcontain">
					<span id="sueldoOfrecido-label" class="property-label"><g:message code="busqueda.sueldoOfrecido.label" default="Sueldo Ofrecido" /></span>
					
						<span class="property-value" aria-labelledby="sueldoOfrecido-label"><g:fieldValue bean="${busquedaInstance}" field="sueldoOfrecido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.idiomasSolicitados}">
				<li class="fieldcontain">
					<span id="idiomasSolicitados-label" class="property-label"><g:message code="busqueda.idiomasSolicitados.label" default="Idiomas Solicitados" /></span>
					
						<g:each in="${busquedaInstance.idiomasSolicitados}" var="i">
						<span class="property-value" aria-labelledby="idiomasSolicitados-label"><g:link controller="idiomaBusqueda" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.conocimientosSolicitados}">
				<li class="fieldcontain">
					<span id="conocimientosSolicitados-label" class="property-label"><g:message code="busqueda.conocimientosSolicitados.label" default="Conocimientos Solicitados" /></span>
					
						<g:each in="${busquedaInstance.conocimientosSolicitados}" var="c">
						<span class="property-value" aria-labelledby="conocimientosSolicitados-label"><g:link controller="conocimientoBusqueda" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="busqueda.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${busquedaInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="busqueda.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${busquedaInstance?.empresa?.id}">${busquedaInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="busqueda.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${busquedaInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="busqueda.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${busquedaInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="busqueda.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${busquedaInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="busqueda.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${busquedaInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${busquedaInstance?.postulaciones}">
				<li class="fieldcontain">
					<span id="postulaciones-label" class="property-label"><g:message code="busqueda.postulaciones.label" default="Postulaciones" /></span>
					
						<g:each in="${busquedaInstance.postulaciones}" var="p">
						<span class="property-value" aria-labelledby="postulaciones-label"><g:link controller="postulacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${busquedaInstance?.id}" />
					<g:link class="edit" action="edit" id="${busquedaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
