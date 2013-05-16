<%@ page import="portal.empleos.picco.enumerations.Institucion" %>



<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="institucion.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${institucionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'privada', 'error')} ">
	<label for="privada">
		<g:message code="institucion.privada.label" default="Privada" />
		
	</label>
	<g:checkBox name="privada" value="${institucionInstance?.privada}" />
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'error', 'error')} ">
	<label for="error">
		<g:message code="institucion.error.label" default="Error" />
		
	</label>
	<g:textField name="error" value="${institucionInstance?.error}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'failures', 'error')} required">
	<label for="failures">
		<g:message code="institucion.failures.label" default="Failures" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="failures" type="number" value="${institucionInstance.failures}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'jobId', 'error')} ">
	<label for="jobId">
		<g:message code="institucion.jobId.label" default="Job Id" />
		
	</label>
	<g:textField name="jobId" value="${institucionInstance?.jobId}"/>
</div>

