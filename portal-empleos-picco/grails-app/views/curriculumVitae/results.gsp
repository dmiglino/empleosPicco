
<%@ page import="portal.empleos.picco.curriculum.CurriculumVitae" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'curriculumVitae.label', default: 'CurriculumVitae')}" />
		<g:set var="entityPluralName" value="${message(code: 'curriculumVitaees.label', default: 'CurriculumVitaees')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-curriculumVitae" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-curriculumVitae" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${CurriculumVitae.count()}" />
			<g:set var="encontradas" value="${curriculumVitaeInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="archivo" title="${message(code: 'curriculumVitae.archivo.label', default: 'Archivo')}" />
						
						<g:sortableColumn property="textoLibre" title="${message(code: 'curriculumVitae.textoLibre.label', default: 'Texto Libre')}" />
						
						<g:sortableColumn property="presentacion" title="${message(code: 'curriculumVitae.presentacion.label', default: 'Presentacion')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'curriculumVitae.dateCreated.label', default: 'Date Created')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${curriculumVitaeInstanceList}" status="i" var="curriculumVitaeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${curriculumVitaeInstance.id}">${fieldValue(bean: curriculumVitaeInstance, field: "archivo")}</g:link></td>
						
						<td>${fieldValue(bean: curriculumVitaeInstance, field: "textoLibre")}</td>
						
						<td>${fieldValue(bean: curriculumVitaeInstance, field: "presentacion")}</td>
						
						<td><g:formatDate date="${curriculumVitaeInstance.dateCreated}" /></td>
						
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