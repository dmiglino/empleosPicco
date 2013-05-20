
<%@ page import="portal.empleos.picco.curriculum.Trabajo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'trabajo.label', default: 'Trabajo')}" />
		<g:set var="entityPluralName" value="${message(code: 'trabajoes.label', default: 'Trabajoes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-trabajo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-trabajo" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Trabajo.count()}" />
			<g:set var="encontradas" value="${trabajoInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<th><g:message code="trabajo.institucion.label" default="Institucion" /></th>
						
						<g:sortableColumn property="textoLibre" title="${message(code: 'trabajo.textoLibre.label', default: 'Texto Libre')}" />
						
						<g:sortableColumn property="fechaInicio" title="${message(code: 'trabajo.fechaInicio.label', default: 'Fecha Inicio')}" />
						
						<g:sortableColumn property="fechaFin" title="${message(code: 'trabajo.fechaFin.label', default: 'Fecha Fin')}" />
						
						<g:sortableColumn property="puesto" title="${message(code: 'trabajo.puesto.label', default: 'Puesto')}" />
						
						<g:sortableColumn property="funcion" title="${message(code: 'trabajo.funcion.label', default: 'Funcion')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${trabajoInstanceList}" status="i" var="trabajoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${trabajoInstance.id}">${fieldValue(bean: trabajoInstance, field: "institucion")}</g:link></td>
						
						<td>${fieldValue(bean: trabajoInstance, field: "textoLibre")}</td>
						
						<td><g:formatDate date="${trabajoInstance.fechaInicio}" /></td>
						
						<td><g:formatDate date="${trabajoInstance.fechaFin}" /></td>
						
						<td>${fieldValue(bean: trabajoInstance, field: "puesto")}</td>
						
						<td>${fieldValue(bean: trabajoInstance, field: "funcion")}</td>
						
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