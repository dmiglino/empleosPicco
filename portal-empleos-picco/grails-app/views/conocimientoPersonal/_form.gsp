<%@ page import="portal.empleos.picco.curriculum.ConocimientoPersonal" %>



<div class="fieldcontain ${hasErrors(bean: conocimientoPersonalInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="conocimientoPersonal.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivel" from="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum?.values()}" keys="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum.values()*.name()}" required="" value="${conocimientoPersonalInstance?.nivel?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoPersonalInstance, field: 'conocimiento', 'error')} required">
	<label for="conocimiento">
		<g:message code="conocimientoPersonal.conocimiento.label" default="Conocimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conocimiento" name="conocimiento.id" from="${portal.empleos.picco.enumerations.Conocimiento.list()}" optionKey="id" required="" value="${conocimientoPersonalInstance?.conocimiento?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoPersonalInstance, field: 'tiempoExperiencia', 'error')} ">
	<label for="tiempoExperiencia">
		<g:message code="conocimientoPersonal.tiempoExperiencia.label" default="Tiempo Experiencia" />
		
	</label>
	<g:textField name="tiempoExperiencia" value="${conocimientoPersonalInstance?.tiempoExperiencia}"/>
</div>

