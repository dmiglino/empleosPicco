<%@ page import="portal.empleos.picco.busqueda.Postulacion" %>



<div class="fieldcontain ${hasErrors(bean: postulacionInstance, field: 'remuneracionPretendida', 'error')} required">
	<label for="remuneracionPretendida">
		<g:message code="postulacion.remuneracionPretendida.label" default="Remuneracion Pretendida" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="remuneracionPretendida" value="${fieldValue(bean: postulacionInstance, field: 'remuneracionPretendida')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: postulacionInstance, field: 'textoPresentacionPostulante', 'error')} ">
	<label for="textoPresentacionPostulante">
		<g:message code="postulacion.textoPresentacionPostulante.label" default="Texto Presentacion Postulante" />
		
	</label>
	<g:textField name="textoPresentacionPostulante" value="${postulacionInstance?.textoPresentacionPostulante}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postulacionInstance, field: 'busqueda', 'error')} required">
	<label for="busqueda">
		<g:message code="postulacion.busqueda.label" default="Busqueda" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="busqueda" name="busqueda.id" from="${portal.empleos.picco.busqueda.Busqueda.list()}" optionKey="id" required="" value="${postulacionInstance?.busqueda?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postulacionInstance, field: 'persona', 'error')} required">
	<label for="persona">
		<g:message code="postulacion.persona.label" default="Persona" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="persona" name="persona.id" from="${portal.empleos.picco.usuario.Persona.list()}" optionKey="id" required="" value="${postulacionInstance?.persona?.id}" class="many-to-one"/>
</div>

