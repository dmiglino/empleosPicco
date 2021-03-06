
<%@ page import="portal.empleos.picco.curriculum.ConocimientoPersonal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conocimientoPersonal.label', default: 'ConocimientoPersonal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conocimientoPersonal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conocimientoPersonal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nivel" title="${message(code: 'conocimientoPersonal.nivel.label', default: 'Nivel')}" />
					
						<th><g:message code="conocimientoPersonal.conocimiento.label" default="Conocimiento" /></th>
					
						<g:sortableColumn property="tiempoExperiencia" title="${message(code: 'conocimientoPersonal.tiempoExperiencia.label', default: 'Tiempo Experiencia')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'conocimientoPersonal.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'conocimientoPersonal.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'conocimientoPersonal.failures.label', default: 'Failures')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conocimientoPersonalInstanceList}" status="i" var="conocimientoPersonalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conocimientoPersonalInstance.id}">${fieldValue(bean: conocimientoPersonalInstance, field: "nivel")}</g:link></td>
					
						<td>${fieldValue(bean: conocimientoPersonalInstance, field: "conocimiento")}</td>
					
						<td>${fieldValue(bean: conocimientoPersonalInstance, field: "tiempoExperiencia")}</td>
					
						<td><g:formatDate date="${conocimientoPersonalInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: conocimientoPersonalInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: conocimientoPersonalInstance, field: "failures")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conocimientoPersonalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
