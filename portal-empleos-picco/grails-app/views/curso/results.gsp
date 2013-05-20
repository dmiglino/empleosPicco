
<%@ page import="portal.empleos.picco.curriculum.Curso" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<g:set var="entityPluralName" value="${message(code: 'cursoes.label', default: 'Cursoes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-curso" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Curso.count()}" />
			<g:set var="encontradas" value="${cursoInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<th><g:message code="curso.institucion.label" default="Institucion" /></th>
						
						<g:sortableColumn property="textoLibre" title="${message(code: 'curso.textoLibre.label', default: 'Texto Libre')}" />
						
						<g:sortableColumn property="fechaInicio" title="${message(code: 'curso.fechaInicio.label', default: 'Fecha Inicio')}" />
						
						<g:sortableColumn property="fechaFin" title="${message(code: 'curso.fechaFin.label', default: 'Fecha Fin')}" />
						
						<g:sortableColumn property="titulo" title="${message(code: 'curso.titulo.label', default: 'Titulo')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'curso.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "institucion")}</g:link></td>
						
						<td>${fieldValue(bean: cursoInstance, field: "textoLibre")}</td>
						
						<td><g:formatDate date="${cursoInstance.fechaInicio}" /></td>
						
						<td><g:formatDate date="${cursoInstance.fechaFin}" /></td>
						
						<td>${fieldValue(bean: cursoInstance, field: "titulo")}</td>
						
						<td><g:formatDate date="${cursoInstance.dateCreated}" /></td>
						
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