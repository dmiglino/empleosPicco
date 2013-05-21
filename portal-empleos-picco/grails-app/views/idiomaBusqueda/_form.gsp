<%@ page import="portal.empleos.picco.busqueda.IdiomaBusqueda" %>



<div class="fieldcontain ${hasErrors(bean: idiomaBusquedaInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="idiomaBusqueda.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivel" from="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum?.values()}" keys="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum.values()*.name()}" required="" value="${idiomaBusquedaInstance?.nivel?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaBusquedaInstance, field: 'idioma', 'error')} required">
	<label for="idioma">
		<g:message code="idiomaBusqueda.idioma.label" default="Idioma" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="idioma" from="${portal.empleos.picco.enumerations.IdiomaEnum?.values()}" keys="${portal.empleos.picco.enumerations.IdiomaEnum.values()*.name()}" required="" value="${idiomaBusquedaInstance?.idioma?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaBusquedaInstance, field: 'tiempoExperiencia', 'error')} ">
	<label for="tiempoExperiencia">
		<g:message code="idiomaBusqueda.tiempoExperiencia.label" default="Tiempo Experiencia" />
		
	</label>
	<g:textField name="tiempoExperiencia" value="${idiomaBusquedaInstance?.tiempoExperiencia}"/>
</div>

