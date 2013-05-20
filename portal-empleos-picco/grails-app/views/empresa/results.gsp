
<%@ page import="portal.empleos.picco.usuario.Empresa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<g:set var="entityPluralName" value="${message(code: 'empresaes.label', default: 'Empresaes')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-empresa" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Empresa.count()}" />
			<g:set var="encontradas" value="${empresaInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="domicilio" title="${message(code: 'empresa.domicilio.label', default: 'Domicilio')}" />
						
						<g:sortableColumn property="telefono" title="${message(code: 'empresa.telefono.label', default: 'Telefono')}" />
						
						<th><g:message code="empresa.ciudad.label" default="Ciudad" /></th>
						
						<g:sortableColumn property="email" title="${message(code: 'empresa.email.label', default: 'Email')}" />
						
						<g:sortableColumn property="emailAlternativo" title="${message(code: 'empresa.emailAlternativo.label', default: 'Email Alternativo')}" />
						
						<g:sortableColumn property="presentacion" title="${message(code: 'empresa.presentacion.label', default: 'Presentacion')}" />
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "domicilio")}</g:link></td>
						
						<td>${fieldValue(bean: empresaInstance, field: "telefono")}</td>
						
						<td>${fieldValue(bean: empresaInstance, field: "ciudad")}</td>
						
						<td>${fieldValue(bean: empresaInstance, field: "email")}</td>
						
						<td>${fieldValue(bean: empresaInstance, field: "emailAlternativo")}</td>
						
						<td>${fieldValue(bean: empresaInstance, field: "presentacion")}</td>
						
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