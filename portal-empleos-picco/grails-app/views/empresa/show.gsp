
<%@ page import="portal.empleos.picco.usuario.Empresa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empresa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empresa">
			
				<g:if test="${empresaInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="empresa.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${empresaInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="empresa.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${empresaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="empresa.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:link controller="ciudad" action="show" id="${empresaInstance?.ciudad?.id}">${empresaInstance?.ciudad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empresa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empresaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.emailAlternativo}">
				<li class="fieldcontain">
					<span id="emailAlternativo-label" class="property-label"><g:message code="empresa.emailAlternativo.label" default="Email Alternativo" /></span>
					
						<span class="property-value" aria-labelledby="emailAlternativo-label"><g:fieldValue bean="${empresaInstance}" field="emailAlternativo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.presentacion}">
				<li class="fieldcontain">
					<span id="presentacion-label" class="property-label"><g:message code="empresa.presentacion.label" default="Presentacion" /></span>
					
						<span class="property-value" aria-labelledby="presentacion-label"><g:fieldValue bean="${empresaInstance}" field="presentacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="empresa.foto.label" default="Foto" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.denominacion}">
				<li class="fieldcontain">
					<span id="denominacion-label" class="property-label"><g:message code="empresa.denominacion.label" default="Denominacion" /></span>
					
						<span class="property-value" aria-labelledby="denominacion-label"><g:fieldValue bean="${empresaInstance}" field="denominacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.razonSocial}">
				<li class="fieldcontain">
					<span id="razonSocial-label" class="property-label"><g:message code="empresa.razonSocial.label" default="Razon Social" /></span>
					
						<span class="property-value" aria-labelledby="razonSocial-label"><g:fieldValue bean="${empresaInstance}" field="razonSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.busquedas}">
				<li class="fieldcontain">
					<span id="busquedas-label" class="property-label"><g:message code="empresa.busquedas.label" default="Busquedas" /></span>
					
						<g:each in="${empresaInstance.busquedas}" var="b">
						<span class="property-value" aria-labelledby="busquedas-label"><g:link controller="busqueda" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="empresa.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${empresaInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="empresa.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${empresaInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="empresa.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${empresaInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="empresa.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${empresaInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="empresa.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${empresaInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.tipoTrabajoOfrecidos}">
				<li class="fieldcontain">
					<span id="tipoTrabajoOfrecidos-label" class="property-label"><g:message code="empresa.tipoTrabajoOfrecidos.label" default="Tipo Trabajo Ofrecidos" /></span>
					
						<g:each in="${empresaInstance.tipoTrabajoOfrecidos}" var="t">
						<span class="property-value" aria-labelledby="tipoTrabajoOfrecidos-label"><g:link controller="tipoTrabajo" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${empresaInstance?.id}" />
					<g:link class="edit" action="edit" id="${empresaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
