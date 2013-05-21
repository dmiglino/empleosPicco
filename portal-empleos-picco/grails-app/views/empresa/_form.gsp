<%@ page import="portal.empleos.picco.usuario.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="empresa.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" value="${empresaInstance?.domicilio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="empresa.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${empresaInstance.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="empresa.ciudad.label" default="Ciudad" />
		
	</label>
	<g:select id="ciudad" name="ciudad.id" from="${portal.empleos.picco.enumerations.Ciudad.list()}" optionKey="id" value="${empresaInstance?.ciudad?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="empresa.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${empresaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'emailAlternativo', 'error')} ">
	<label for="emailAlternativo">
		<g:message code="empresa.emailAlternativo.label" default="Email Alternativo" />
		
	</label>
	<g:field type="email" name="emailAlternativo" value="${empresaInstance?.emailAlternativo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'presentacion', 'error')} ">
	<label for="presentacion">
		<g:message code="empresa.presentacion.label" default="Presentacion" />
		
	</label>
	<g:textField name="presentacion" value="${empresaInstance?.presentacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="empresa.foto.label" default="Foto" />
		
	</label>
	<input type="file" id="foto" name="foto" />
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'denominacion', 'error')} required">
	<label for="denominacion">
		<g:message code="empresa.denominacion.label" default="Denominacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="denominacion" required="" value="${empresaInstance?.denominacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'razonSocial', 'error')} ">
	<label for="razonSocial">
		<g:message code="empresa.razonSocial.label" default="Razon Social" />
		
	</label>
	<g:textField name="razonSocial" value="${empresaInstance?.razonSocial}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'busquedas', 'error')} ">
	<label for="busquedas">
		<g:message code="empresa.busquedas.label" default="Busquedas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.busquedas?}" var="b">
    <li><g:link controller="busqueda" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="busqueda" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'busqueda.label', default: 'Busqueda')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'tipoTrabajoOfrecidos', 'error')} ">
	<label for="tipoTrabajoOfrecidos">
		<g:message code="empresa.tipoTrabajoOfrecidos.label" default="Tipo Trabajo Ofrecidos" />
		
	</label>
	<g:select name="tipoTrabajoOfrecidos" from="${portal.empleos.picco.enumerations.TipoTrabajo.list()}" multiple="multiple" optionKey="id" size="5" value="${empresaInstance?.tipoTrabajoOfrecidos*.id}" class="many-to-many"/>
</div>

