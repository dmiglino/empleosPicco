
<%@ page import="portal.empleos.picco.curriculum.Proyecto" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-proyecto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-proyecto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'proyecto.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="duracion" title="${message(code: 'proyecto.duracion.label', default: 'Duracion')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'proyecto.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'proyecto.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'proyecto.failures.label', default: 'Failures')}" />
					
						<g:sortableColumn property="jobId" title="${message(code: 'proyecto.jobId.label', default: 'Job Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${proyectoInstanceList}" status="i" var="proyectoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${proyectoInstance.id}">${fieldValue(bean: proyectoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: proyectoInstance, field: "duracion")}</td>
					
						<td><g:formatDate date="${proyectoInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: proyectoInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: proyectoInstance, field: "failures")}</td>
					
						<td>${fieldValue(bean: proyectoInstance, field: "jobId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${proyectoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
