
<%@ page import="portal.empleos.picco.busqueda.IdiomaBusqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'idiomaBusqueda.label', default: 'IdiomaBusqueda')}" />
		<g:set var="entityPluralName" value="${message(code: 'idiomaBusquedaes.label', default: 'IdiomaBusquedaes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-idiomaBusqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-idiomaBusqueda" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${IdiomaBusqueda.count()}" />
			<g:set var="encontradas" value="${idiomaBusquedaInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nivel" title="${message(code: 'idiomaBusqueda.nivel.label', default: 'Nivel')}" />
						
						<g:sortableColumn property="idioma" title="${message(code: 'idiomaBusqueda.idioma.label', default: 'Idioma')}" />
						
						<g:sortableColumn property="tiempoExperiencia" title="${message(code: 'idiomaBusqueda.tiempoExperiencia.label', default: 'Tiempo Experiencia')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'idiomaBusqueda.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${idiomaBusquedaInstanceList}" status="i" var="idiomaBusquedaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${idiomaBusquedaInstance.id}">${fieldValue(bean: idiomaBusquedaInstance, field: "nivel")}</g:link></td>
						
						<td>${fieldValue(bean: idiomaBusquedaInstance, field: "idioma")}</td>
						
						<td>${fieldValue(bean: idiomaBusquedaInstance, field: "tiempoExperiencia")}</td>
						
						<td><g:formatDate date="${idiomaBusquedaInstance.dateCreated}" /></td>
						
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