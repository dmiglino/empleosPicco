
<%@ page import="portal.empleos.picco.curriculum.IdiomaPersonal" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'idiomaPersonal.label', default: 'IdiomaPersonal')}" />
		<g:set var="entityPluralName" value="${message(code: 'idiomaPersonales.label', default: 'IdiomaPersonales')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-idiomaPersonal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-idiomaPersonal" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${IdiomaPersonal.count()}" />
			<g:set var="encontradas" value="${idiomaPersonalInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
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
						
						<td><g:link action="edit" id="${idiomaPersonalInstance.id}">${fieldValue(bean: idiomaPersonalInstance, field: "nivel")}</g:link></td>
						
						<td>${fieldValue(bean: idiomaPersonalInstance, field: "idioma")}</td>
						
						<td>${fieldValue(bean: idiomaPersonalInstance, field: "tiempoExperiencia")}</td>
						
						<td><g:formatDate date="${idiomaPersonalInstance.dateCreated}" /></td>
						
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