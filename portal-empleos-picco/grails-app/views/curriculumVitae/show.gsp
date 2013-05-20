
<%@ page import="portal.empleos.picco.curriculum.CurriculumVitae" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curriculumVitae.label', default: 'CurriculumVitae')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curriculumVitae" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curriculumVitae" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curriculumVitae">
			
				<g:if test="${curriculumVitaeInstance?.archivo}">
				<li class="fieldcontain">
					<span id="archivo-label" class="property-label"><g:message code="curriculumVitae.archivo.label" default="Archivo" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.textoLibre}">
				<li class="fieldcontain">
					<span id="textoLibre-label" class="property-label"><g:message code="curriculumVitae.textoLibre.label" default="Texto Libre" /></span>
					
						<span class="property-value" aria-labelledby="textoLibre-label"><g:fieldValue bean="${curriculumVitaeInstance}" field="textoLibre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.presentacion}">
				<li class="fieldcontain">
					<span id="presentacion-label" class="property-label"><g:message code="curriculumVitae.presentacion.label" default="Presentacion" /></span>
					
						<span class="property-value" aria-labelledby="presentacion-label"><g:fieldValue bean="${curriculumVitaeInstance}" field="presentacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.conocimientos}">
				<li class="fieldcontain">
					<span id="conocimientos-label" class="property-label"><g:message code="curriculumVitae.conocimientos.label" default="Conocimientos" /></span>
					
						<g:each in="${curriculumVitaeInstance.conocimientos}" var="c">
						<span class="property-value" aria-labelledby="conocimientos-label"><g:link controller="conocimientoPersonal" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.cursos}">
				<li class="fieldcontain">
					<span id="cursos-label" class="property-label"><g:message code="curriculumVitae.cursos.label" default="Cursos" /></span>
					
						<g:each in="${curriculumVitaeInstance.cursos}" var="c">
						<span class="property-value" aria-labelledby="cursos-label"><g:link controller="curso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="curriculumVitae.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${curriculumVitaeInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.educacion}">
				<li class="fieldcontain">
					<span id="educacion-label" class="property-label"><g:message code="curriculumVitae.educacion.label" default="Educacion" /></span>
					
						<g:each in="${curriculumVitaeInstance.educacion}" var="e">
						<span class="property-value" aria-labelledby="educacion-label"><g:link controller="educacion" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.error}">
				<li class="fieldcontain">
					<span id="error-label" class="property-label"><g:message code="curriculumVitae.error.label" default="Error" /></span>
					
						<span class="property-value" aria-labelledby="error-label"><g:fieldValue bean="${curriculumVitaeInstance}" field="error"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.experienciasLaborales}">
				<li class="fieldcontain">
					<span id="experienciasLaborales-label" class="property-label"><g:message code="curriculumVitae.experienciasLaborales.label" default="Experiencias Laborales" /></span>
					
						<g:each in="${curriculumVitaeInstance.experienciasLaborales}" var="e">
						<span class="property-value" aria-labelledby="experienciasLaborales-label"><g:link controller="trabajo" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.failures}">
				<li class="fieldcontain">
					<span id="failures-label" class="property-label"><g:message code="curriculumVitae.failures.label" default="Failures" /></span>
					
						<span class="property-value" aria-labelledby="failures-label"><g:fieldValue bean="${curriculumVitaeInstance}" field="failures"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.jobId}">
				<li class="fieldcontain">
					<span id="jobId-label" class="property-label"><g:message code="curriculumVitae.jobId.label" default="Job Id" /></span>
					
						<span class="property-value" aria-labelledby="jobId-label"><g:fieldValue bean="${curriculumVitaeInstance}" field="jobId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${curriculumVitaeInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="curriculumVitae.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${curriculumVitaeInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${curriculumVitaeInstance?.id}" />
					<g:link class="edit" action="edit" id="${curriculumVitaeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
