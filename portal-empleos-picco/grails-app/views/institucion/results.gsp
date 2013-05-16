<html>
<head>
<title>Search Results</title>
<meta name="layout" content="main" />
</head>
<body>
	<h1>Results</h1>
	<p>
		Buscados entre
		${portal.empleos.picco.enumerations.Institucion.count()}
		Instituciones el termino <em> ${term} -- </em>. 
		Encontradas: <strong> ${instituciones.size()} </strong>.
	</p>
	<ul>
		<g:each var="institucion" in="${instituciones}">
			<li>
				<g:link action="edit" id="${institucion.id}">${institucion.nombre}</g:link>
			</li>
		</g:each>
	</ul>
	<g:link action='search'>Search Again</g:link>
</body>
</html>
