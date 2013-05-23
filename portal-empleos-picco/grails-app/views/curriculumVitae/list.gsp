
<%@ page import="portal.empleos.picco.curriculum.CurriculumVitae" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curriculumVitae.label', default: 'CurriculumVitae')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-curriculumVitae" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-curriculumVitae" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
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
					
						<td><g:link action="show" id="${curriculumVitaeInstance.id}">${fieldValue(bean: curriculumVitaeInstance, field: "archivo")}</g:link></td>
					
						<td>${fieldValue(bean: curriculumVitaeInstance, field: "textoLibre")}</td>
					
						<td>${fieldValue(bean: curriculumVitaeInstance, field: "presentacion")}</td>
					
						<td><g:formatDate date="${curriculumVitaeInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${curriculumVitaeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
