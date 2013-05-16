<html>
<head>
<title>Busqueda de Busquedas</title>
<meta name="layout" content="main" />
</head>
<body>
	<formset> <legend>Busqueda de Busquedas</legend> 
		<g:form action="searchResults">
			<label for="empresaId">Empresa Id</label>
			<g:textField name="empresaId" />
			<label for="nombreConocimientoBuscado">Nombre Conocimiento</label>
			<g:textField name="nombreConocimientoBuscado" />
			<g:submitButton name="search" value="Search" />
		</g:form> 
	</formset>
</body>
</html>
