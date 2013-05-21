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

