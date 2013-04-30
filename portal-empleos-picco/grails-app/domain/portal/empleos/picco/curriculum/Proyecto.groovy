package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.TipoTrabajo;

/**
 * Representa los proyectos en que trabajo el usuario
 * @author Diego Miglino
 */
class Proyecto extends PortalEmpleosEntity {

	String nombre, duracion
	static hasMany = [ herramientasUtilizadas : Conocimiento ]
	
    static constraints = {
		nombre blank : false
		duracion blank : false
    }
	
	@Override
	String toString() {
		"${nombre} (${duracion})";
	}
	
	Boolean hasConocimiento(Conocimiento conoc) {
		herramientasUtilizadas.contains(conoc)
	}
	
}