
<%@ page import="portal.empleos.picco.busqueda.Busqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'busqueda.label', default: 'Busqueda')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-busqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<g:if test="${!fromSearch}">
					<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
				</g:if>
				<g:if test="${fromSearch}">
					<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				</g:if>
			</ul>
		</div>
		<div id="list-busqueda" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'busqueda.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="zona" title="${message(code: 'busqueda.zona.label', default: 'Zona')}" />
					
						<g:sortableColumn property="textoLibre" title="${message(code: 'busqueda.textoLibre.label', default: 'Texto Libre')}" />
					
						<g:sortableColumn property="sueldoOfrecido" title="${message(code: 'busqueda.sueldoOfrecido.label', default: 'Sueldo Ofrecido')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'busqueda.dateCreated.label', default: 'Date Created')}" />
					
						<th><g:message code="busqueda.empresa.label" default="Empresa" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${busquedaInstanceList}" status="i" var="busquedaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${busquedaInstance.id}">${fieldValue(bean: busquedaInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: busquedaInstance, field: "zona")}</td>
					
						<td>${fieldValue(bean: busquedaInstance, field: "textoLibre")}</td>
					
						<td>${fieldValue(bean: busquedaInstance, field: "sueldoOfrecido")}</td>
					
						<td><g:formatDate date="${busquedaInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: busquedaInstance, field: "empresa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${busquedaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
