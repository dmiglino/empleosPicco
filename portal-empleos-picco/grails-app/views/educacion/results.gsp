
<%@ page import="portal.empleos.picco.curriculum.Educacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'educacion.label', default: 'Educacion')}" />
		<g:set var="entityPluralName" value="${message(code: 'educaciones.label', default: 'Educaciones')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-educacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-educacion" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Educacion.count()}" />
			<g:set var="encontradas" value="${educacionInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<th><g:message code="educacion.institucion.label" default="Institucion" /></th>
						
						<g:sortableColumn property="textoLibre" title="${message(code: 'educacion.textoLibre.label', default: 'Texto Libre')}" />
						
						<g:sortableColumn property="fechaInicio" title="${message(code: 'educacion.fechaInicio.label', default: 'Fecha Inicio')}" />
						
						<g:sortableColumn property="fechaFin" title="${message(code: 'educacion.fechaFin.label', default: 'Fecha Fin')}" />
						
						<g:sortableColumn property="titulo" title="${message(code: 'educacion.titulo.label', default: 'Titulo')}" />
						
						<g:sortableColumn property="promedio" title="${message(code: 'educacion.promedio.label', default: 'Promedio')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${educacionInstanceList}" status="i" var="educacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${educacionInstance.id}">${fieldValue(bean: educacionInstance, field: "institucion")}</g:link></td>
						
						<td>${fieldValue(bean: educacionInstance, field: "textoLibre")}</td>
						
						<td><g:formatDate date="${educacionInstance.fechaInicio}" /></td>
						
						<td><g:formatDate date="${educacionInstance.fechaFin}" /></td>
						
						<td>${fieldValue(bean: educacionInstance, field: "titulo")}</td>
						
						<td>${fieldValue(bean: educacionInstance, field: "promedio")}</td>
						
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