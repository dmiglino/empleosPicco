
<%@ page import="portal.empleos.picco.busqueda.ConocimientoBusqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'conocimientoBusqueda.label', default: 'ConocimientoBusqueda')}" />
		<g:set var="entityPluralName" value="${message(code: 'conocimientoBusquedaes.label', default: 'ConocimientoBusquedaes')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-conocimientoBusqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-conocimientoBusqueda" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="nivel" >${message(code: 'conocimientoBusqueda.nivel.label', default: 'Nivel')}</label>
									<g:textField name="nivel" />
								</td>
							
								<td valign="top" class="name">
									<label for="conocimiento" >${message(code: 'conocimientoBusqueda.conocimiento.label', default: 'Conocimiento')}</label>
									<g:textField name="conocimiento" />
								</td>
							
								<td valign="top" class="name">
									<label for="tiempoExperiencia" >${message(code: 'conocimientoBusqueda.tiempoExperiencia.label', default: 'Tiempo Experiencia')}</label>
									<g:textField name="tiempoExperiencia" />
								</td>
							
								<td valign="top" class="name">
									<label for="dateCreated" >${message(code: 'conocimientoBusqueda.dateCreated.label', default: 'Date Created')}</label>
									<g:textField name="dateCreated" />
								</td>
							
							</tr>
						</tbody>
					</table>
				</div>
				<div class="buttons">
					<span class="button"><input class="search" name="search" type="submit" value="Search" /></span>
				</div>
			</g:form> 
		</div>
	</body>
</html>