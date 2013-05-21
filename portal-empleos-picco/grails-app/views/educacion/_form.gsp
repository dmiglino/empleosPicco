<%@ page import="portal.empleos.picco.curriculum.Educacion" %>



<div class="fieldcontain ${hasErrors(bean: educacionInstance, field: 'institucion', 'error')} required">
	<label for="institucion">
		<g:message code="educacion.institucion.label" default="Institucion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="institucion" name="institucion.id" from="${portal.empleos.picco.enumerations.Institucion.list()}" optionKey="id" required="" value="${educacionInstance?.institucion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educacionInstance, field: 'textoLibre', 'error')} ">
	<label for="textoLibre">
		<g:message code="educacion.textoLibre.label" default="Texto Libre" />
		
	</label>
	<g:textField name="textoLibre" value="${educacionInstance?.textoLibre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educacionInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="educacion.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${educacionInstance?.fechaInicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: educacionInstance, field: 'fechaFin', 'error')} ">
	<label for="fechaFin">
		<g:message code="educacion.fechaFin.label" default="Fecha Fin" />
		
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${educacionInstance?.fechaFin}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: educacionInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="educacion.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${educacionInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: educacionInstance, field: 'promedio', 'error')} ">
	<label for="promedio">
		<g:message code="educacion.promedio.label" default="Promedio" />
		
	</label>
	<g:field name="promedio" value="${fieldValue(bean: educacionInstance, field: 'promedio')}"/>
</div>

