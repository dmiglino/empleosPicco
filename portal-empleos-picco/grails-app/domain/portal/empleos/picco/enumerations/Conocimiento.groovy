package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Conocimiento. <br>
 * JAVA_PROGRAMADOR_SISTEMAS, SPRING_PROGRAMADOR_SISTEMAS, HIBERNATE_PROGRAMADOR_SISTEMAS, etc.
 * @author Diego Miglino
 */
class Conocimiento extends PortalEmpleosEntity {

	private String nombre
	private TipoTrabajo tipo
	
    static constraints = {
    }
}
