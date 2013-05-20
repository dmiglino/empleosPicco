
<%@ page import="portal.empleos.picco.curriculum.Educacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'educacion.label', default: 'Educacion')}" />
		<g:set var="entityPluralName" value="${message(code: 'educaciones.label', default: 'Educaciones')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-educacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-educacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						
								<td valign="top" class="name">
									<label for="institucion" >${message(code: 'educacion.institucion.label', default: 'Institucion')}</label>
									<g:textField name="institucion" />
								</td>
							
								<td valign="top" class="name">
									<label for="textoLibre" >${message(code: 'educacion.textoLibre.label', default: 'Texto Libre')}</label>
									<g:textField name="textoLibre" />
								</td>
							
								<td valign="top" class="name">
									<label for="fechaInicio" >${message(code: 'educacion.fechaInicio.label', default: 'Fecha Inicio')}</label>
									<g:textField name="fechaInicio" />
								</td>
							
								<td valign="top" class="name">
									<label for="fechaFin" >${message(code: 'educacion.fechaFin.label', default: 'Fecha Fin')}</label>
									<g:textField name="fechaFin" />
								</td>
							
								<td valign="top" class="name">
									<label for="titulo" >${message(code: 'educacion.titulo.label', default: 'Titulo')}</label>
									<g:textField name="titulo" />
								</td>
							
								<td valign="top" class="name">
									<label for="promedio" >${message(code: 'educacion.promedio.label', default: 'Promedio')}</label>
									<g:textField name="promedio" />
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