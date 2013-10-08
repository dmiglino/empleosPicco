
<%@ page import="portal.empleos.picco.usuario.Persona" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'persona.label', default: 'Persona')}" />
		<g:set var="entityPluralName" value="${message(code: 'personaes.label', default: 'Personaes')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-persona" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-persona" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="nombre" >${message(code: 'persona.nombre.label', default: 'Nombre')}</label>
									<g:textField name="nombre" />
								</td>
							
								<td valign="top" class="name">
									<label for="apellido" >${message(code: 'persona.apellido.label', default: 'Apellido')}</label>
									<g:textField name="apellido" />
								</td>
							
							</tr>
							<tr class="prop">
								
								<td valign="top" class="name">
									<label for="dni" >${message(code: 'persona.dni.label', default: 'Dni')}</label>
									<g:textField name="dni" />
								</td>

								<td valign="top" class="name">
									<label for="email" >${message(code: 'persona.email.label', default: 'Email')}</label>
									<g:textField name="email" />
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