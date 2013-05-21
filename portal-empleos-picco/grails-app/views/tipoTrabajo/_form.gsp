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

