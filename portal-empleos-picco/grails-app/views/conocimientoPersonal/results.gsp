
<%@ page import="portal.empleos.picco.curriculum.ConocimientoPersonal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'conocimientoPersonal.label', default: 'ConocimientoPersonal')}" />
		<g:set var="entityPluralName" value="${message(code: 'conocimientoPersonales.label', default: 'ConocimientoPersonales')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-conocimientoPersonal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-conocimientoPersonal" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${ConocimientoPersonal.count()}" />
			<g:set var="encontradas" value="${conocimientoPersonalInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nivel" title="${message(code: 'conocimientoPersonal.nivel.label', default: 'Nivel')}" />
						
						<th><g:message code="conocimientoPersonal.conocimiento.label" default="Conocimiento" /></th>
						
						<g:sortableColumn property="tiempoExperiencia" title="${message(code: 'conocimientoPersonal.tiempoExperiencia.label', default: 'Tiempo Experiencia')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'conocimientoPersonal.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${conocimientoPersonalInstanceList}" status="i" var="conocimientoPersonalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${conocimientoPersonalInstance.id}">${fieldValue(bean: conocimientoPersonalInstance, field: "nivel")}</g:link></td>
						
						<td>${fieldValue(bean: conocimientoPersonalInstance, field: "conocimiento")}</td>
						
						<td>${fieldValue(bean: conocimientoPersonalInstance, field: "tiempoExperiencia")}</td>
						
						<td><g:formatDate date="${conocimientoPersonalInstance.dateCreated}" /></td>
						
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