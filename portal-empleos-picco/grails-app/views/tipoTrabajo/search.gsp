
<%@ page import="portal.empleos.picco.enumerations.TipoTrabajo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'tipoTrabajo.label', default: 'TipoTrabajo')}" />
		<g:set var="entityPluralName" value="${message(code: 'tipoTrabajoes.label', default: 'TipoTrabajoes')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-tipoTrabajo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-tipoTrabajo" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="nombre" title="${message(code: 'tipoTrabajo.nombre.label', default: 'Nombre')}" />
									<g:textField name="nombre" />
								</td>
							
								<td valign="top" class="name">
									<label for="rubro" title="${message(code: 'tipoTrabajo.rubro.label', default: 'Rubro')}" />
									<g:textField name="rubro" />
								</td>
							
								<td valign="top" class="name">
									<label for="dateCreated" title="${message(code: 'tipoTrabajo.dateCreated.label', default: 'Date Created')}" />
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