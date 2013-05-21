
<%@ page import="portal.empleos.picco.enumerations.Conocimiento" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'conocimiento.label', default: 'Conocimiento')}" />
		<g:set var="entityPluralName" value="${message(code: 'conocimientoes.label', default: 'Conocimientoes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-conocimiento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-conocimiento" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Conocimiento.count()}" />
			<g:set var="encontradas" value="${conocimientoInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nombre" title="${message(code: 'conocimiento.nombre.label', default: 'Nombre')}" />
						
						<th><g:message code="conocimiento.tipo.label" default="Tipo" /></th>
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'conocimiento.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${conocimientoInstanceList}" status="i" var="conocimientoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${conocimientoInstance.id}">${fieldValue(bean: conocimientoInstance, field: "nombre")}</g:link></td>
						
						<td>${fieldValue(bean: conocimientoInstance, field: "tipo")}</td>
						
						<td><g:formatDate date="${conocimientoInstance.dateCreated}" /></td>
						
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