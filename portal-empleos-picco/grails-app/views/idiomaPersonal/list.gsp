
<%@ page import="portal.empleos.picco.curriculum.IdiomaPersonal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'idiomaPersonal.label', default: 'IdiomaPersonal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-idiomaPersonal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-idiomaPersonal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nivel" title="${message(code: 'idiomaPersonal.nivel.label', default: 'Nivel')}" />
					
						<g:sortableColumn property="idioma" title="${message(code: 'idiomaPersonal.idioma.label', default: 'Idioma')}" />
					
						<g:sortableColumn property="tiempoExperiencia" title="${message(code: 'idiomaPersonal.tiempoExperiencia.label', default: 'Tiempo Experiencia')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'idiomaPersonal.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${idiomaPersonalInstanceList}" status="i" var="idiomaPersonalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${idiomaPersonalInstance.id}">${fieldValue(bean: idiomaPersonalInstance, field: "nivel")}</g:link></td>
					
						<td>${fieldValue(bean: idiomaPersonalInstance, field: "idioma")}</td>
					
						<td>${fieldValue(bean: idiomaPersonalInstance, field: "tiempoExperiencia")}</td>
					
						<td><g:formatDate date="${idiomaPersonalInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${idiomaPersonalInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
