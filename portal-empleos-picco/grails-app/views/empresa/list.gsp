
<%@ page import="portal.empleos.picco.usuario.Empresa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
		<div id="list-empresa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="denominacion" title="${message(code: 'empresa.denominacion.label', default: 'Denominacion')}" />
					
						<g:sortableColumn property="razonSocial" title="${message(code: 'empresa.razonSocial.label', default: 'Razon Social')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'empresa.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="domicilio" title="${message(code: 'empresa.domicilio.label', default: 'Domicilio')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'empresa.telefono.label', default: 'Telefono')}" />
					
						<th><g:message code="empresa.busquedas.label" default="Busquedas" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "denominacion")}</g:link></td>
					
						<td>${fieldValue(bean: empresaInstance, field: "razonSocial")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "domicilio")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "telefono")}</td>
					
						<td><g:link action="showBusquedas" id="${empresaInstance.id}">Ver Busquedas</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empresaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
