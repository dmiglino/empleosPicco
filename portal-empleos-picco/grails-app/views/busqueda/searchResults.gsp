<html>
<head>
<title>Busqueda Search Results</title>
<meta name="layout" content="main" />
</head>
<body>
	<h1>Busquedas Results</h1>
	<p>
		Buscados entre
		${portal.empleos.picco.busqueda.Busqueda.count()}
		Busquedas el termino <em> ${term} -- </em>. 
		Encontradas: <strong> ${busquedas.size()} </strong>.
	</p>
	<ul>
		<g:each var="busqueda" in="${busquedas}">
			<li>
				${busqueda.empresa}
				${busqueda.titulo}
				${busqueda.zona}
				${busqueda.sueldoOfrecido}
			</li>
		</g:each>
	</ul>
	<g:link action='search'>Search Again</g:link>
</body>
</html>
