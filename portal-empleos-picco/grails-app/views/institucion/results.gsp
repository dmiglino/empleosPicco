
<%@ page import="portal.empleos.picco.enumerations.Institucion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
		<g:set var="entityPluralName" value="${message(code: 'instituciones.label', default: 'Instituciones')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-institucion" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Institucion.count()}" />
			<g:set var="encontradas" value="${institucionInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="nombre" title="${message(code: 'institucion.nombre.label', default: 'Nombre')}" />
						
						<g:sortableColumn property="privada" title="${message(code: 'institucion.privada.label', default: 'Privada')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'institucion.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${institucionInstanceList}" status="i" var="institucionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${institucionInstance.id}">${fieldValue(bean: institucionInstance, field: "nombre")}</g:link></td>
						
						<td><g:formatBoolean boolean="${institucionInstance.privada}" /></td>
						
						<td><g:formatDate date="${institucionInstance.dateCreated}" /></td>
						
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