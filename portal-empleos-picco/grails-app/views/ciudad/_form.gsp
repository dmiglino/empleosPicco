<%@ page import="portal.empleos.picco.enumerations.Ciudad" %>


<div class="fieldcontain ${hasErrors(bean: ciudadInstance, field: 'ciudad', 'error')} ">
	<label for="ciudad">
		<g:message code="ciudad.ciudad.label" default="Ciudad" />
		
	</label>
	<g:textField name="ciudad" value="${ciudadInstance?.ciudad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ciudadInstance, field: 'provincia', 'error')} ">
	<label for="provincia">
		<g:message code="ciudad.provincia.label" default="Provincia" />
		
	</label>
	<g:textField name="provincia" value="${ciudadInstance?.provincia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ciudadInstance, field: 'pais', 'error')} ">
	<label for="pais">
		<g:message code="ciudad.pais.label" default="Pais" />
		
	</label>
	<g:textField name="pais" value="${ciudadInstance?.pais}"/>
</div>

