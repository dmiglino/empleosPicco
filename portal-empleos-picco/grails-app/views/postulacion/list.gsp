
<%@ page import="portal.empleos.picco.busqueda.Postulacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'postulacion.label', default: 'Postulacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-postulacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-postulacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="remuneracionPretendida" title="${message(code: 'postulacion.remuneracionPretendida.label', default: 'Remuneracion Pretendida')}" />
					
						<g:sortableColumn property="textoPresentacionPostulante" title="${message(code: 'postulacion.textoPresentacionPostulante.label', default: 'Texto Presentacion Postulante')}" />
					
						<th><g:message code="postulacion.busqueda.label" default="Busqueda" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'postulacion.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="error" title="${message(code: 'postulacion.error.label', default: 'Error')}" />
					
						<g:sortableColumn property="failures" title="${message(code: 'postulacion.failures.label', default: 'Failures')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${postulacionInstanceList}" status="i" var="postulacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${postulacionInstance.id}">${fieldValue(bean: postulacionInstance, field: "remuneracionPretendida")}</g:link></td>
					
						<td>${fieldValue(bean: postulacionInstance, field: "textoPresentacionPostulante")}</td>
					
						<td>${fieldValue(bean: postulacionInstance, field: "busqueda")}</td>
					
						<td><g:formatDate date="${postulacionInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: postulacionInstance, field: "error")}</td>
					
						<td>${fieldValue(bean: postulacionInstance, field: "failures")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postulacionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
