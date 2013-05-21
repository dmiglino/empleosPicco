<%@ page import="portal.empleos.picco.curriculum.Trabajo" %>



<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'institucion', 'error')} required">
	<label for="institucion">
		<g:message code="trabajo.institucion.label" default="Institucion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="institucion" name="institucion.id" from="${portal.empleos.picco.enumerations.Institucion.list()}" optionKey="id" required="" value="${trabajoInstance?.institucion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'textoLibre', 'error')} ">
	<label for="textoLibre">
		<g:message code="trabajo.textoLibre.label" default="Texto Libre" />
		
	</label>
	<g:textField name="textoLibre" value="${trabajoInstance?.textoLibre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="trabajo.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${trabajoInstance?.fechaInicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'fechaFin', 'error')} ">
	<label for="fechaFin">
		<g:message code="trabajo.fechaFin.label" default="Fecha Fin" />
		
	</label>
	<g:datePicker name="fechaFin" precision="day"  value="${trabajoInstance?.fechaFin}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="trabajo.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" value="${trabajoInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'funcion', 'error')} ">
	<label for="funcion">
		<g:message code="trabajo.funcion.label" default="Funcion" />
		
	</label>
	<g:textField name="funcion" value="${trabajoInstance?.funcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: trabajoInstance, field: 'proyectos', 'error')} ">
	<label for="proyectos">
		<g:message code="trabajo.proyectos.label" default="Proyectos" />
		
	</label>
	<g:select name="proyectos" from="${portal.empleos.picco.curriculum.Proyecto.list()}" multiple="multiple" optionKey="id" size="5" value="${trabajoInstance?.proyectos*.id}" class="many-to-many"/>
</div>

