
<%@ page import="portal.empleos.picco.enumerations.TipoTrabajo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'tipoTrabajo.label', default: 'TipoTrabajo')}" />
		<g:set var="entityPluralName" value="${message(code: 'tipoTrabajoes.label', default: 'TipoTrabajoes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-tipoTrabajo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-tipoTrabajo" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${TipoTrabajo.count()}" />
			<g:set var="encontradas" value="${tipoTrabajoInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nombre" title="${message(code: 'tipoTrabajo.nombre.label', default: 'Nombre')}" />
						
						<g:sortableColumn property="rubro" title="${message(code: 'tipoTrabajo.rubro.label', default: 'Rubro')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'tipoTrabajo.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${tipoTrabajoInstanceList}" status="i" var="tipoTrabajoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${tipoTrabajoInstance.id}">${fieldValue(bean: tipoTrabajoInstance, field: "nombre")}</g:link></td>
						
						<td>${fieldValue(bean: tipoTrabajoInstance, field: "rubro")}</td>
						
						<td><g:formatDate date="${tipoTrabajoInstance.dateCreated}" /></td>
						
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