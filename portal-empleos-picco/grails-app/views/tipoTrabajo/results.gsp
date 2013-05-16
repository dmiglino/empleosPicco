<html>
<head>
<title>Search Results</title>
<meta name="layout" content="main" />
</head>
<body>
	<h1>Results</h1>
	<p>
		Buscados entre
		${portal.empleos.picco.enumerations.TipoTrabajo.count()}
		Tipo de Trabajo el termino <em> ${term} -- </em>. 
		Encontradas: <strong> ${tiposTrabajo.size()} </strong>.
	</p>
	<ul>
		<g:each var="tipo" in="${tiposTrabajo}">
			<li>
				<g:link action="edit" id="${tipo.id}">${tipo}</g:link>
			</li>
		</g:each>
	</ul>
	<g:link action='search'>Search Again</g:link>
</body>
</html>
