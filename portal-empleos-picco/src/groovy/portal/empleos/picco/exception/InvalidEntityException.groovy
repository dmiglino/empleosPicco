package portal.empleos.picco.exception

import grails.validation.ValidationErrors

class InvalidEntityException extends PortalEmpleosException {
	
	def entity
	
	InvalidEntityException(String className, def json) {
		super("El JSON ["+json+"] para la entidad ["+className+"] es invalido.");
	}
	
	InvalidEntityException(def errors) {
		super("El/La [" + PortalEmpleosException.getNameForClass(errors) + " " + errors?.target + "] es invalido/a. Errors: " + errors);
		internalCause = errors
		this.entity = errors?.target
	}
	
	void setDefaultValues() {
		error = "invalid_entity_error"
		status = 400
	}
}