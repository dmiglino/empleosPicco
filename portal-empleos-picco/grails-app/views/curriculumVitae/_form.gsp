<%@ page import="portal.empleos.picco.curriculum.CurriculumVitae" %>



<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'archivo', 'error')} ">
	<label for="archivo">
		<g:message code="curriculumVitae.archivo.label" default="Archivo" />
		
	</label>
	<input type="file" id="archivo" name="archivo" />
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'textoLibre', 'error')} ">
	<label for="textoLibre">
		<g:message code="curriculumVitae.textoLibre.label" default="Texto Libre" />
		
	</label>
	<g:textField name="textoLibre" value="${curriculumVitaeInstance?.textoLibre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'presentacion', 'error')} ">
	<label for="presentacion">
		<g:message code="curriculumVitae.presentacion.label" default="Presentacion" />
		
	</label>
	<g:textField name="presentacion" value="${curriculumVitaeInstance?.presentacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'conocimientos', 'error')} ">
	<label for="conocimientos">
		<g:message code="curriculumVitae.conocimientos.label" default="Conocimientos" />
		
	</label>
	<g:select name="conocimientos" from="${portal.empleos.picco.curriculum.ConocimientoPersonal.list()}" multiple="multiple" optionKey="id" size="5" value="${curriculumVitaeInstance?.conocimientos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'cursos', 'error')} ">
	<label for="cursos">
		<g:message code="curriculumVitae.cursos.label" default="Cursos" />
		
	</label>
	<g:select name="cursos" from="${portal.empleos.picco.curriculum.Curso.list()}" multiple="multiple" optionKey="id" size="5" value="${curriculumVitaeInstance?.cursos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'educacion', 'error')} ">
	<label for="educacion">
		<g:message code="curriculumVitae.educacion.label" default="Educacion" />
		
	</label>
	<g:select name="educacion" from="${portal.empleos.picco.curriculum.Educacion.list()}" multiple="multiple" optionKey="id" size="5" value="${curriculumVitaeInstance?.educacion*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'error', 'error')} ">
	<label for="error">
		<g:message code="curriculumVitae.error.label" default="Error" />
		
	</label>
	<g:textField name="error" value="${curriculumVitaeInstance?.error}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'experienciasLaborales', 'error')} ">
	<label for="experienciasLaborales">
		<g:message code="curriculumVitae.experienciasLaborales.label" default="Experiencias Laborales" />
		
	</label>
	<g:select name="experienciasLaborales" from="${portal.empleos.picco.curriculum.Trabajo.list()}" multiple="multiple" optionKey="id" size="5" value="${curriculumVitaeInstance?.experienciasLaborales*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'failures', 'error')} required">
	<label for="failures">
		<g:message code="curriculumVitae.failures.label" default="Failures" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="failures" type="number" value="${curriculumVitaeInstance.failures}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: curriculumVitaeInstance, field: 'jobId', 'error')} ">
	<label for="jobId">
		<g:message code="curriculumVitae.jobId.label" default="Job Id" />
		
	</label>
	<g:textField name="jobId" value="${curriculumVitaeInstance?.jobId}"/>
</div>

