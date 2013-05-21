<%@ page import="portal.empleos.picco.busqueda.ConocimientoBusqueda" %>



<div class="fieldcontain ${hasErrors(bean: conocimientoBusquedaInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="conocimientoBusqueda.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivel" from="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum?.values()}" keys="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum.values()*.name()}" required="" value="${conocimientoBusquedaInstance?.nivel?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoBusquedaInstance, field: 'conocimiento', 'error')} required">
	<label for="conocimiento">
		<g:message code="conocimientoBusqueda.conocimiento.label" default="Conocimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conocimiento" name="conocimiento.id" from="${portal.empleos.picco.enumerations.Conocimiento.list()}" optionKey="id" required="" value="${conocimientoBusquedaInstance?.conocimiento?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoBusquedaInstance, field: 'tiempoExperiencia', 'error')} ">
	<label for="tiempoExperiencia">
		<g:message code="conocimientoBusqueda.tiempoExperiencia.label" default="Tiempo Experiencia" />
		
	</label>
	<g:textField name="tiempoExperiencia" value="${conocimientoBusquedaInstance?.tiempoExperiencia}"/>
</div>

