package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Tipos de Trabajos. <br>
 * PROGRAMADOR_SISTEMAS, ANALISTA_SISTEMAS, TESTER_SISTEMAS, etc.
 * @author Diego Miglino
 */
class TipoTrabajo extends PortalEmpleosEntity {
	
	String nombre
	String rubro
	
    static constraints = {
		nombre blank: false
		rubro blank: false
    }
	
	@Override
	String toString() {
		"${nombre} (rubro: ${rubro})";
	}
}
