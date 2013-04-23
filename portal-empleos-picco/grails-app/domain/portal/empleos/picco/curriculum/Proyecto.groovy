package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Representa los proyectos en que trabajo el usuario
 * @author Diego Miglino
 */
class Proyecto extends PortalEmpleosEntity {

	String nombre, herramientasUtilizadas, duracion
	
    static constraints = {
		duracion blank : true
    }
}
