
<%@ page import="portal.empleos.picco.enumerations.Ciudad" %>
<!doctype html>

<html>

	<head>
<%--	<title>Search Results</title>--%>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: 'ciudad.label', default: 'Ciudad')}" />
		<title><g:message code="default.search.label" args="[entityName]" /></title>
	</head>
	
	<body>		
		<a href="#list-ciudad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<h1>Results</h1>
		<p>
			Buscados entre
			${portal.empleos.picco.enumerations.Conocimiento.count()}
			conocimientos el termino <em> ${term} -- </em>. 
			Encontradas: <strong> ${conocimientos.size()} </strong>.
		</p>
		<ul>
			<g:each var="conocimiento" in="${conocimientos}">
				<li>
					<g:link action="edit" id="${conocimiento.id}">${conocimiento}</g:link>
				</li>
			</g:each>
		</ul>
		<g:link action='search'>Search Again</g:link>
	</body>

</html>