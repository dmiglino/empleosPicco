
<%@ page import="portal.empleos.picco.usuario.Empresa" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<g:set var="entityPluralName" value="${message(code: 'empresaes.label', default: 'Empresaes')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-empresa" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="denominacion" >${message(code: 'empresa.denominacion.label', default: 'Denominacion')}</label>
									<g:textField name="denominacion" />
								</td>
							
								<td valign="top" class="name">
									<label for="razonSocial" >${message(code: 'empresa.razonSocial.label', default: 'Razon Social')}</label>
									<g:textField name="razonSocial" />
								</td>
								
							</tr>
							<tr class="prop">
							
								<td valign="top" class="name">
									<label for="email" >${message(code: 'empresa.email.label', default: 'Email')}</label>
									<g:textField name="email" />
								</td>
								
								<td valign="top" class="name">
									<label for="domicilio" >${message(code: 'empresa.domicilio.label', default: 'Domicilio')}</label>
									<g:textField name="domicilio" />
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