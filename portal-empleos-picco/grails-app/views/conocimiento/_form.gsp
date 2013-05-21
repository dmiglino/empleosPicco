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

