
<%@ page import="portal.empleos.picco.curriculum.Proyecto" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
		<g:set var="entityPluralName" value="${message(code: 'proyectoes.label', default: 'Proyectoes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-proyecto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-proyecto" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Proyecto.count()}" />
			<g:set var="encontradas" value="${proyectoInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nombre" title="${message(code: 'proyecto.nombre.label', default: 'Nombre')}" />
						
						<g:sortableColumn property="duracion" title="${message(code: 'proyecto.duracion.label', default: 'Duracion')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'proyecto.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${proyectoInstanceList}" status="i" var="proyectoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${proyectoInstance.id}">${fieldValue(bean: proyectoInstance, field: "nombre")}</g:link></td>
						
						<td>${fieldValue(bean: proyectoInstance, field: "duracion")}</td>
						
						<td><g:formatDate date="${proyectoInstance.dateCreated}" /></td>
						
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