<%@ page import="portal.empleos.picco.enumerations.Conocimiento" %>



<div class="fieldcontain ${hasErrors(bean: conocimientoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="conocimiento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${conocimientoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="conocimiento.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipo" name="tipo.id" from="${portal.empleos.picco.enumerations.TipoTrabajo.list()}" optionKey="id" required="" value="${conocimientoInstance?.tipo?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoInstance, field: 'error', 'error')} ">
	<label for="error">
		<g:message code="conocimiento.error.label" default="Error" />
		
	</label>
	<g:textField name="error" value="${conocimientoInstance?.error}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoInstance, field: 'failures', 'error')} required">
	<label for="failures">
		<g:message code="conocimiento.failures.label" default="Failures" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="failures" type="number" value="${conocimientoInstance.failures}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: conocimientoInstance, field: 'jobId', 'error')} ">
	<label for="jobId">
		<g:message code="conocimiento.jobId.label" default="Job Id" />
		
	</label>
	<g:textField name="jobId" value="${conocimientoInstance?.jobId}"/>
</div>

