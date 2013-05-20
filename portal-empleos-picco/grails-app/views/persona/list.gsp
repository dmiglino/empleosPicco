
<%@ page import="portal.empleos.picco.usuario.Persona" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="domicilio" title="${message(code: 'persona.domicilio.label', default: 'Domicilio')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'persona.telefono.label', default: 'Telefono')}" />
					
						<th><g:message code="persona.ciudad.label" default="Ciudad" /></th>
					
						<g:sortableColumn property="email" title="${message(code: 'persona.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="emailAlternativo" title="${message(code: 'persona.emailAlternativo.label', default: 'Email Alternativo')}" />
					
						<g:sortableColumn property="presentacion" title="${message(code: 'persona.presentacion.label', default: 'Presentacion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "domicilio")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "telefono")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "ciudad")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "emailAlternativo")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "presentacion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
