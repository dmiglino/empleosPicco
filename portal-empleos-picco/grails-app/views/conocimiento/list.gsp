
<%@ page import="portal.empleos.picco.enumerations.Conocimiento" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conocimiento.label', default: 'Conocimiento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conocimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conocimiento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'conocimiento.nombre.label', default: 'Nombre')}" />
					
						<th><g:message code="conocimiento.tipo.label" default="Tipo" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'conocimiento.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'conocimiento.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'conocimiento.failures.label', default: 'Failures')}" />
					
						<g:sortableColumn property="jobId" title="${message(code: 'conocimiento.jobId.label', default: 'Job Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conocimientoInstanceList}" status="i" var="conocimientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conocimientoInstance.id}">${fieldValue(bean: conocimientoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: conocimientoInstance, field: "tipo")}</td>
					
						<td><g:formatDate date="${conocimientoInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: conocimientoInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: conocimientoInstance, field: "failures")}</td>
					
						<td>${fieldValue(bean: conocimientoInstance, field: "jobId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conocimientoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
