package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Conocimiento. <br>
 * JAVA_PROGRAMADOR_SISTEMAS, SPRING_PROGRAMADOR_SISTEMAS, HIBERNATE_PROGRAMADOR_SISTEMAS, etc.
 * @author Diego Miglino
 */
class Conocimiento extends PortalEmpleosEntity {

	String nombre
	TipoTrabajo tipo
	
    static constraints = {
		nombre blank: false
		tipo nullable: false
    }
	
	@Override
	String toString() {
		"${nombre} (${tipo.nombre} - ${tipo.rubro})";
	}
	
	Boolean isTipo(String nombreTipo, String rubroTipo) {
		tipo.equals(new TipoTrabajo(nombre:nombreTipo, rubro:rubroTipo))
	}
	
}