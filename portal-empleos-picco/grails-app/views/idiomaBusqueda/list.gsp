
<%@ page import="portal.empleos.picco.busqueda.IdiomaBusqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'idiomaBusqueda.label', default: 'IdiomaBusqueda')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-idiomaBusqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-idiomaBusqueda" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nivel" title="${message(code: 'idiomaBusqueda.nivel.label', default: 'Nivel')}" />
					
						<g:sortableColumn property="idioma" title="${message(code: 'idiomaBusqueda.idioma.label', default: 'Idioma')}" />
					
						<g:sortableColumn property="tiempoExperiencia" title="${message(code: 'idiomaBusqueda.tiempoExperiencia.label', default: 'Tiempo Experiencia')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'idiomaBusqueda.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'idiomaBusqueda.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'idiomaBusqueda.failures.label', default: 'Failures')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${idiomaBusquedaInstanceList}" status="i" var="idiomaBusquedaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${idiomaBusquedaInstance.id}">${fieldValue(bean: idiomaBusquedaInstance, field: "nivel")}</g:link></td>
					
						<td>${fieldValue(bean: idiomaBusquedaInstance, field: "idioma")}</td>
					
						<td>${fieldValue(bean: idiomaBusquedaInstance, field: "tiempoExperiencia")}</td>
					
						<td><g:formatDate date="${idiomaBusquedaInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: idiomaBusquedaInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: idiomaBusquedaInstance, field: "failures")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${idiomaBusquedaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
