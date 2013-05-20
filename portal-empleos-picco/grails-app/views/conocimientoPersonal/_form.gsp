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

<div class="fieldcontain ${hasErrors(bean: conocimientoPersonalInstance, field: 'error', 'error')} ">
	<label for="error">
		<g:message code="conocimientoPersonal.error.label" default="Error" />
		
	</label>
	<g:textField name="error" value="${conocimientoPersonalInstance?.error}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoPersonalInstance, field: 'failures', 'error')} required">
	<label for="failures">
		<g:message code="conocimientoPersonal.failures.label" default="Failures" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="failures" type="number" value="${conocimientoPersonalInstance.failures}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoPersonalInstance, field: 'jobId', 'error')} ">
	<label for="jobId">
		<g:message code="conocimientoPersonal.jobId.label" default="Job Id" />
		
	</label>
	<g:textField name="jobId" value="${conocimientoPersonalInstance?.jobId}"/>
</div>

