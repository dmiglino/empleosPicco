
<%@ page import="portal.empleos.picco.busqueda.Busqueda" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'busqueda.label', default: 'Busqueda')}" />
		<g:set var="entityPluralName" value="${message(code: 'busquedaes.label', default: 'Busquedaes')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-busqueda" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-busqueda" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="titulo" >${message(code: 'busqueda.titulo.label', default: 'Titulo')}</label>
									<g:textField name="titulo" />
								</td>
							
								<td valign="top" class="name">
									<label for="zona" >${message(code: 'busqueda.zona.label', default: 'Zona')}</label>
									<g:textField name="zona" />
								</td>
							
									</tr>
									<tr class="prop">
								
								<td valign="top" class="name">
									<label for="textoLibre" >${message(code: 'busqueda.textoLibre.label', default: 'Texto Libre')}</label>
									<g:textField name="textoLibre" />
								</td>
							
								<td valign="top" class="name">
									<label for="sueldoOfrecido" >${message(code: 'busqueda.sueldoOfrecido.label', default: 'Sueldo Ofrecido')}</label>
									<g:textField name="sueldoOfrecido" />
								</td>
							
									</tr>
									<tr class="prop">
								
								<td valign="top" class="name">
									<label for="dateCreated" >${message(code: 'busqueda.dateCreated.label', default: 'Date Created')}</label>
									<g:textField name="dateCreated" />
								</td>
							
								<td valign="top" class="name">
									<label for="empresa" >${message(code: 'busqueda.empresa.label', default: 'Empresa')}</label>
									<g:textField name="empresa" />
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