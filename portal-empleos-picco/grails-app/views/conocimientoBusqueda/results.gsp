
<%@ page import="portal.empleos.picco.busqueda.ConocimientoBusqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'conocimientoBusqueda.label', default: 'ConocimientoBusqueda')}" />
		<g:set var="entityPluralName" value="${message(code: 'conocimientoBusquedaes.label', default: 'ConocimientoBusquedaes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-conocimientoBusqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-conocimientoBusqueda" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${ConocimientoBusqueda.count()}" />
			<g:set var="encontradas" value="${conocimientoBusquedaInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nivel" title="${message(code: 'conocimientoBusqueda.nivel.label', default: 'Nivel')}" />
						
						<th><g:message code="conocimientoBusqueda.conocimiento.label" default="Conocimiento" /></th>
						
						<g:sortableColumn property="tiempoExperiencia" title="${message(code: 'conocimientoBusqueda.tiempoExperiencia.label', default: 'Tiempo Experiencia')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'conocimientoBusqueda.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${conocimientoBusquedaInstanceList}" status="i" var="conocimientoBusquedaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${conocimientoBusquedaInstance.id}">${fieldValue(bean: conocimientoBusquedaInstance, field: "nivel")}</g:link></td>
						
						<td>${fieldValue(bean: conocimientoBusquedaInstance, field: "conocimiento")}</td>
						
						<td>${fieldValue(bean: conocimientoBusquedaInstance, field: "tiempoExperiencia")}</td>
						
						<td><g:formatDate date="${conocimientoBusquedaInstance.dateCreated}" /></td>
						
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${total}" />
			</div>
		</div>
	</body>
</html>