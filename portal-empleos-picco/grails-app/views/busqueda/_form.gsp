<%@ page import="portal.empleos.picco.busqueda.Busqueda" %>



<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="busqueda.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${busquedaInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'zona', 'error')} required">
	<label for="zona">
		<g:message code="busqueda.zona.label" default="Zona" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="zona" required="" value="${busquedaInstance?.zona}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'textoLibre', 'error')} ">
	<label for="textoLibre">
		<g:message code="busqueda.textoLibre.label" default="Texto Libre" />
		
	</label>
	<g:textField name="textoLibre" value="${busquedaInstance?.textoLibre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'sueldoOfrecido', 'error')} ">
	<label for="sueldoOfrecido">
		<g:message code="busqueda.sueldoOfrecido.label" default="Sueldo Ofrecido" />
		
	</label>
	<g:field name="sueldoOfrecido" value="${fieldValue(bean: busquedaInstance, field: 'sueldoOfrecido')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'idiomasSolicitados', 'error')} ">
	<label for="idiomasSolicitados">
		<g:message code="busqueda.idiomasSolicitados.label" default="Idiomas Solicitados" />
		
	</label>
	<g:select name="idiomasSolicitados" from="${portal.empleos.picco.busqueda.IdiomaBusqueda.list()}" multiple="multiple" optionKey="id" size="5" value="${busquedaInstance?.idiomasSolicitados*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'conocimientosSolicitados', 'error')} ">
	<label for="conocimientosSolicitados">
		<g:message code="busqueda.conocimientosSolicitados.label" default="Conocimientos Solicitados" />
		
	</label>
	<g:select name="conocimientosSolicitados" from="${portal.empleos.picco.busqueda.ConocimientoBusqueda.list()}" multiple="multiple" optionKey="id" size="5" value="${busquedaInstance?.conocimientosSolicitados*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="busqueda.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${portal.empleos.picco.usuario.Empresa.list()}" optionKey="id" required="" value="${busquedaInstance?.empresa?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: busquedaInstance, field: 'postulaciones', 'error')} ">
	<label for="postulaciones">
		<g:message code="busqueda.postulaciones.label" default="Postulaciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${busquedaInstance?.postulaciones?}" var="p">
    <li><g:link controller="postulacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="postulacion" action="create" params="['busqueda.id': busquedaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'postulacion.label', default: 'Postulacion')])}</g:link>
</li>
</ul>

</div>

