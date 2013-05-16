<html>
<head>
<title>Busqueda de Tipos de Trabajo</title>
<meta name="layout" content="main" />
</head>
<body>
	<formset> <legend>Busqueda de Tipos de Trabajo</legend> 
		<g:form action="results">
			<label for="nombreTipo">Nombre</label>
			<g:textField name="nombreTipo" />
			<label for="rubro">Rubro</label>
			<g:textField name="rubro" />
			<g:submitButton name="search" value="Search" />
		</g:form> 
	</formset>
</body>
</html>
