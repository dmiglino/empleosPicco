<%@ page import="portal.empleos.picco.usuario.Persona" %>



<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'domicilio', 'error')} ">
	<label for="domicilio">
		<g:message code="persona.domicilio.label" default="Domicilio" />
		
	</label>
	<g:textField name="domicilio" value="${personaInstance?.domicilio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="persona.telefono.label" default="Telefono" />
		
	</label>
	<g:field name="telefono" type="number" value="${personaInstance.telefono}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="persona.ciudad.label" default="Ciudad" />
		
	</label>
	<g:select id="ciudad" name="ciudad.id" from="${portal.empleos.picco.enumerations.Ciudad.list()}" optionKey="id" value="${personaInstance?.ciudad?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="persona.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${personaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'emailAlternativo', 'error')} ">
	<label for="emailAlternativo">
		<g:message code="persona.emailAlternativo.label" default="Email Alternativo" />
		
	</label>
	<g:field type="email" name="emailAlternativo" value="${personaInstance?.emailAlternativo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'presentacion', 'error')} ">
	<label for="presentacion">
		<g:message code="persona.presentacion.label" default="Presentacion" />
		
	</label>
	<g:textField name="presentacion" value="${personaInstance?.presentacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'foto', 'error')} ">
	<label for="foto">
		<g:message code="persona.foto.label" default="Foto" />
		
	</label>
	<input type="file" id="foto" name="foto" />
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="persona.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${personaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="persona.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${personaInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="persona.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dni" type="number" value="${personaInstance.dni}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'cuil', 'error')} ">
	<label for="cuil">
		<g:message code="persona.cuil.label" default="Cuil" />
		
	</label>
	<g:textField name="cuil" value="${personaInstance?.cuil}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'intereses', 'error')} ">
	<label for="intereses">
		<g:message code="persona.intereses.label" default="Intereses" />
		
	</label>
	<g:textField name="intereses" value="${personaInstance?.intereses}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'celular', 'error')} ">
	<label for="celular">
		<g:message code="persona.celular.label" default="Celular" />
		
	</label>
	<g:field name="celular" type="number" value="${personaInstance.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'curriculum', 'error')} ">
	<label for="curriculum">
		<g:message code="persona.curriculum.label" default="Curriculum" />
		
	</label>
	<g:select id="curriculum" name="curriculum.id" from="${portal.empleos.picco.curriculum.CurriculumVitae.list()}" optionKey="id" value="${personaInstance?.curriculum?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'interesesTipoTrabajos', 'error')} ">
	<label for="interesesTipoTrabajos">
		<g:message code="persona.interesesTipoTrabajos.label" default="Intereses Tipo Trabajos" />
		
	</label>
	<g:select name="interesesTipoTrabajos" from="${portal.empleos.picco.enumerations.TipoTrabajo.list()}" multiple="multiple" optionKey="id" size="5" value="${personaInstance?.interesesTipoTrabajos*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personaInstance, field: 'postulaciones', 'error')} ">
	<label for="postulaciones">
		<g:message code="persona.postulaciones.label" default="Postulaciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${personaInstance?.postulaciones?}" var="p">
    <li><g:link controller="postulacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="postulacion" action="create" params="['persona.id': personaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'postulacion.label', default: 'Postulacion')])}</g:link>
</li>
</ul>

</div>

