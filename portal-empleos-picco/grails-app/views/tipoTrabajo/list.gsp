
<%@ page import="portal.empleos.picco.enumerations.TipoTrabajo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoTrabajo.label', default: 'TipoTrabajo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tipoTrabajo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tipoTrabajo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'tipoTrabajo.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="rubro" title="${message(code: 'tipoTrabajo.rubro.label', default: 'Rubro')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'tipoTrabajo.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'tipoTrabajo.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'tipoTrabajo.failures.label', default: 'Failures')}" />
					
						<g:sortableColumn property="jobId" title="${message(code: 'tipoTrabajo.jobId.label', default: 'Job Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tipoTrabajoInstanceList}" status="i" var="tipoTrabajoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tipoTrabajoInstance.id}">${fieldValue(bean: tipoTrabajoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: tipoTrabajoInstance, field: "rubro")}</td>
					
						<td><g:formatDate date="${tipoTrabajoInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: tipoTrabajoInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: tipoTrabajoInstance, field: "failures")}</td>
					
						<td>${fieldValue(bean: tipoTrabajoInstance, field: "jobId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoTrabajoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
