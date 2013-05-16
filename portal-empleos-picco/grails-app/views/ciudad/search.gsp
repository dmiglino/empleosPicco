
<%@ page import="portal.empleos.picco.enumerations.Ciudad" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'ciudad.label', default: 'Ciudad')}" />
		<g:set var="entityPluralName" value="${message(code: 'ciudades.label', default: 'Ciudades')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-ciudad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-ciudad" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="ciudad" >${message(code: 'ciudad.ciudad.label', default: 'Ciudad')}</label>
									<g:textField name="ciudad" />
								</td>
							
								<td valign="top" class="name">
									<label for="provincia" >${message(code: 'ciudad.provincia.label', default: 'Provincia')}</label>
									<g:textField name="provincia" />
								</td>
							
								<td valign="top" class="name">
									<label for="pais" >${message(code: 'ciudad.pais.label', default: 'Pais')}</label>
									<g:textField name="pais" />
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