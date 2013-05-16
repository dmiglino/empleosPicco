<%@ page import="portal.empleos.picco.curriculum.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'institucion', 'error')} required">
	<label for="institucion">
		<g:message code="curso.institucion.label" default="Institucion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="institucion" name="institucion.id" from="${portal.empleos.picco.enumerations.Institucion.list()}" optionKey="id" required="" value="${cursoInstance?.institucion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'textoLibre', 'error')} ">
	<label for="textoLibre">
		<g:message code="curso.textoLibre.label" default="Texto Libre" />
		
	</label>
	<g:textField name="textoLibre" value="${cursoInstance?.textoLibre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="curso.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${cursoInstance?.fechaInicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'fechaFin', 'error')} ">
	<label for="fechaFin">
		<g:message code="curso.fechaFin.label" default="Fecha Fin" />
		
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${cursoInstance?.fechaFin}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="curso.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${cursoInstance?.titulo}"/>
</div>
