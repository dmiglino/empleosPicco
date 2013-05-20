
<%@ page import="portal.empleos.picco.usuario.Persona" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-persona" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list persona">
			
				<g:if test="${personaInstance?.domicilio}">
				<li class="fieldcontain">
					<span id="domicilio-label" class="property-label"><g:message code="persona.domicilio.label" default="Domicilio" /></span>
					
						<span class="property-value" aria-labelledby="domicilio-label"><g:fieldValue bean="${personaInstance}" field="domicilio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="persona.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${personaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="persona.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:link controller="ciudad" action="show" id="${personaInstance?.ciudad?.id}">${personaInstance?.ciudad?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="persona.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${personaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.emailAlternativo}">
				<li class="fieldcontain">
					<span id="emailAlternativo-label" class="property-label"><g:message code="persona.emailAlternativo.label" default="Email Alternativo" /></span>
					
						<span class="property-value" aria-labelledby="emailAlternativo-label"><g:fieldValue bean="${personaInstance}" field="emailAlternativo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.presentacion}">
				<li class="fieldcontain">
					<span id="presentacion-label" class="property-label"><g:message code="persona.presentacion.label" default="Presentacion" /></span>
					
						<span class="property-value" aria-labelledby="presentacion-label"><g:fieldValue bean="${personaInstance}" field="presentacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.foto}">
				<li class="fieldcontain">
					<span id="foto-label" class="property-label"><g:message code="persona.foto.label" default="Foto" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="persona.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${personaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="persona.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${personaInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.dni}">
				<li class="fieldcontain">
					<span id="dni-label" class="property-label"><g:message code="persona.dni.label" default="Dni" /></span>
					
						<span class="property-value" aria-labelledby="dni-label"><g:fieldValue bean="${personaInstance}" field="dni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.cuil}">
				<li class="fieldcontain">
					<span id="cuil-label" class="property-label"><g:message code="persona.cuil.label" default="Cuil" /></span>
					
						<span class="property-value" aria-labelledby="cuil-label"><g:fieldValue bean="${personaInstance}" field="cuil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.intereses}">
				<li class="fieldcontain">
					<span id="intereses-label" class="property-label"><g:message code="persona.intereses.label" default="Intereses" /></span>
					
						<span class="property-value" aria-labelledby="intereses-label"><g:fieldValue bean="${personaInstance}" field="intereses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="persona.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${personaInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.curriculum}">
				<li class="fieldcontain">
					<span id="curriculum-label" class="property-label"><g:message code="persona.curriculum.label" default="Curriculum" /></span>
					
						<span class="property-value" aria-labelledby="curriculum-label"><g:link controller="curriculumVitae" action="show" id="${personaInstance?.curriculum?.id}">${personaInstance?.curriculum?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="persona.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${personaInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="persona.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${personaInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="persona.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${personaInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.interesesTipoTrabajos}">
				<li class="fieldcontain">
					<span id="interesesTipoTrabajos-label" class="property-label"><g:message code="persona.interesesTipoTrabajos.label" default="Intereses Tipo Trabajos" /></span>
					
						<g:each in="${personaInstance.interesesTipoTrabajos}" var="i">
						<span class="property-value" aria-labelledby="interesesTipoTrabajos-label"><g:link controller="tipoTrabajo" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="persona.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${personaInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="persona.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${personaInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${personaInstance?.postulaciones}">
				<li class="fieldcontain">
					<span id="postulaciones-label" class="property-label"><g:message code="persona.postulaciones.label" default="Postulaciones" /></span>
					
						<g:each in="${personaInstance.postulaciones}" var="p">
						<span class="property-value" aria-labelledby="postulaciones-label"><g:link controller="postulacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${personaInstance?.id}" />
					<g:link class="edit" action="edit" id="${personaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
