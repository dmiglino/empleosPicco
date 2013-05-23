
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
				<g:if test="${!fromSearch}">
					<li><g:link class="search" action="search"><g:message code="default.search.label" args="[entityName]" /></g:link></li>
				</g:if>
				<g:if test="${fromSearch}">
					<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				</g:if>
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
					
						<g:sortableColumn property="nombre" title="${message(code: 'persona.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'persona.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'persona.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'persona.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="celular" title="${message(code: 'persona.celular.label', default: 'Celular')}" />
					
						<g:sortableColumn property="curriculum" title="${message(code: 'persona.curriculum.label', default: 'Curriculum')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personaInstanceList}" status="i" var="personaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personaInstance.id}">${fieldValue(bean: personaInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: personaInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: personaInstance, field: "celular")}</td>
					
						<td><g:link action="showCurriculum" id="${personaInstance.curriculum?.id}">Ver CV</g:link></td>
					
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
