
<%@ page import="portal.empleos.picco.enumerations.Institucion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-institucion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'institucion.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="privada" title="${message(code: 'institucion.privada.label', default: 'Privada')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'institucion.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'institucion.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'institucion.failures.label', default: 'Failures')}" />
					
						<g:sortableColumn property="jobId" title="${message(code: 'institucion.jobId.label', default: 'Job Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${institucionInstanceList}" status="i" var="institucionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${institucionInstance.id}">${fieldValue(bean: institucionInstance, field: "nombre")}</g:link></td>
					
						<td><g:formatBoolean boolean="${institucionInstance.privada}" /></td>
					
						<td><g:formatDate date="${institucionInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: institucionInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: institucionInstance, field: "failures")}</td>
					
						<td>${fieldValue(bean: institucionInstance, field: "jobId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${institucionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
