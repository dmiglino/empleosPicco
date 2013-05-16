<%@ page import="portal.empleos.picco.enumerations.TipoTrabajo" %>



<div class="fieldcontain ${hasErrors(bean: tipoTrabajoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="tipoTrabajo.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${tipoTrabajoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoTrabajoInstance, field: 'rubro', 'error')} required">
	<label for="rubro">
		<g:message code="tipoTrabajo.rubro.label" default="Rubro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rubro" required="" value="${tipoTrabajoInstance?.rubro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoTrabajoInstance, field: 'error', 'error')} ">
	<label for="error">
		<g:message code="tipoTrabajo.error.label" default="Error" />
		
	</label>
	<g:textField name="error" value="${tipoTrabajoInstance?.error}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoTrabajoInstance, field: 'failures', 'error')} required">
	<label for="failures">
		<g:message code="tipoTrabajo.failures.label" default="Failures" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="failures" type="number" value="${tipoTrabajoInstance.failures}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoTrabajoInstance, field: 'jobId', 'error')} ">
	<label for="jobId">
		<g:message code="tipoTrabajo.jobId.label" default="Job Id" />
		
	</label>
	<g:textField name="jobId" value="${tipoTrabajoInstance?.jobId}"/>
</div>

