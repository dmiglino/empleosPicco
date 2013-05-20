<%@ page import="portal.empleos.picco.curriculum.IdiomaPersonal" %>



<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="idiomaPersonal.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivel" from="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum?.values()}" keys="${portal.empleos.picco.enumerations.NivelDeConocimientoEnum.values()*.name()}" required="" value="${idiomaPersonalInstance?.nivel?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'idioma', 'error')} required">
	<label for="idioma">
		<g:message code="idiomaPersonal.idioma.label" default="Idioma" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="idioma" from="${portal.empleos.picco.enumerations.IdiomaEnum?.values()}" keys="${portal.empleos.picco.enumerations.IdiomaEnum.values()*.name()}" required="" value="${idiomaPersonalInstance?.idioma?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'tiempoExperiencia', 'error')} ">
	<label for="tiempoExperiencia">
		<g:message code="idiomaPersonal.tiempoExperiencia.label" default="Tiempo Experiencia" />
		
	</label>
	<g:textField name="tiempoExperiencia" value="${idiomaPersonalInstance?.tiempoExperiencia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'error', 'error')} ">
	<label for="error">
		<g:message code="idiomaPersonal.error.label" default="Error" />
		
	</label>
	<g:textField name="error" value="${idiomaPersonalInstance?.error}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'failures', 'error')} required">
	<label for="failures">
		<g:message code="idiomaPersonal.failures.label" default="Failures" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="failures" type="number" value="${idiomaPersonalInstance.failures}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'instituciones', 'error')} ">
	<label for="instituciones">
		<g:message code="idiomaPersonal.instituciones.label" default="Instituciones" />
		
	</label>
	<g:select name="instituciones" from="${portal.empleos.picco.enumerations.Institucion.list()}" multiple="multiple" optionKey="id" size="5" value="${idiomaPersonalInstance?.instituciones*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: idiomaPersonalInstance, field: 'jobId', 'error')} ">
	<label for="jobId">
		<g:message code="idiomaPersonal.jobId.label" default="Job Id" />
		
	</label>
	<g:textField name="jobId" value="${idiomaPersonalInstance?.jobId}"/>
</div>

