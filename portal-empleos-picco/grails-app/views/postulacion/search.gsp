
<%@ page import="portal.empleos.picco.busqueda.Postulacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'postulacion.label', default: 'Postulacion')}" />
		<g:set var="entityPluralName" value="${message(code: 'postulaciones.label', default: 'Postulaciones')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-postulacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-postulacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="remuneracionPretendida" >${message(code: 'postulacion.remuneracionPretendida.label', default: 'Remuneracion Pretendida')}</label>
									<g:textField name="remuneracionPretendida" />
								</td>
							
								<td valign="top" class="name">
									<label for="textoPresentacionPostulante" >${message(code: 'postulacion.textoPresentacionPostulante.label', default: 'Texto Presentacion Postulante')}</label>
									<g:textField name="textoPresentacionPostulante" />
								</td>
							
								<td valign="top" class="name">
									<label for="busqueda" >${message(code: 'postulacion.busqueda.label', default: 'Busqueda')}</label>
									<g:textField name="busqueda" />
								</td>
							
								<td valign="top" class="name">
									<label for="dateCreated" >${message(code: 'postulacion.dateCreated.label', default: 'Date Created')}</label>
									<g:textField name="dateCreated" />
								</td>
							
								<td valign="top" class="name">
									<label for="persona" >${message(code: 'postulacion.persona.label', default: 'Persona')}</label>
									<g:textField name="persona" />
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