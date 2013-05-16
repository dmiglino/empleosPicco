
<%@ page import="portal.empleos.picco.enumerations.Ciudad" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'ciudad.label', default: 'Ciudad')}" />
		<g:set var="entityPluralName" value="${message(code: 'ciudades.label', default: 'Ciudades')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-ciudad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-ciudad" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Ciudad.count()}" />
			<g:set var="encontradas" value="${ciudadInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="ciudad" title="${message(code: 'ciudad.ciudad.label', default: 'Ciudad')}" />
						
						<g:sortableColumn property="provincia" title="${message(code: 'ciudad.provincia.label', default: 'Provincia')}" />
						
						<g:sortableColumn property="pais" title="${message(code: 'ciudad.pais.label', default: 'Pais')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${ciudadInstanceList}" status="i" var="ciudadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${ciudadInstance.id}">${fieldValue(bean: ciudadInstance, field: "ciudad")}</g:link></td>
						
						<td>${fieldValue(bean: ciudadInstance, field: "provincia")}</td>
						
						<td>${fieldValue(bean: ciudadInstance, field: "pais")}</td>
						
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