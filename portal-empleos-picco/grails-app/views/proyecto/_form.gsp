<%@ page import="portal.empleos.picco.curriculum.Proyecto" %>



<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="proyecto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${proyectoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'duracion', 'error')} required">
	<label for="duracion">
		<g:message code="proyecto.duracion.label" default="Duracion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="duracion" required="" value="${proyectoInstance?.duracion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'herramientasUtilizadas', 'error')} ">
	<label for="herramientasUtilizadas">
		<g:message code="proyecto.herramientasUtilizadas.label" default="Herramientas Utilizadas" />
		
	</label>
	<g:select name="herramientasUtilizadas" from="${portal.empleos.picco.enumerations.Conocimiento.list()}" multiple="multiple" optionKey="id" size="5" value="${proyectoInstance?.herramientasUtilizadas*.id}" class="many-to-many"/>
</div>

