
<%@ page import="portal.empleos.picco.busqueda.Postulacion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'postulacion.label', default: 'Postulacion')}" />
		<g:set var="entityPluralName" value="${message(code: 'postulaciones.label', default: 'Postulaciones')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-postulacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-postulacion" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${Postulacion.count()}" />
			<g:set var="encontradas" value="${postulacionInstanceList.size()}" />
		
			<h1><g:message code="default.results.text" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="remuneracionPretendida" title="${message(code: 'postulacion.remuneracionPretendida.label', default: 'Remuneracion Pretendida')}" />
						
						<g:sortableColumn property="textoPresentacionPostulante" title="${message(code: 'postulacion.textoPresentacionPostulante.label', default: 'Texto Presentacion Postulante')}" />
						
						<th><g:message code="postulacion.busqueda.label" default="Busqueda" /></th>
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'postulacion.dateCreated.label', default: 'Date Created')}" />
						
						<th><g:message code="postulacion.persona.label" default="Persona" /></th>
						
					</tr>
				</thead>
				<tbody>
					<g:each in="${postulacionInstanceList}" status="i" var="postulacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
						<td><g:link action="edit" id="${postulacionInstance.id}">${fieldValue(bean: postulacionInstance, field: "remuneracionPretendida")}</g:link></td>
						
						<td>${fieldValue(bean: postulacionInstance, field: "textoPresentacionPostulante")}</td>
						
						<td>${fieldValue(bean: postulacionInstance, field: "busqueda")}</td>
						
						<td><g:formatDate date="${postulacionInstance.dateCreated}" /></td>
						
						<td>${fieldValue(bean: postulacionInstance, field: "persona")}</td>
						
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