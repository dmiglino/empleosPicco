package portal.empleos.picco.usuario

import portal.empleos.picco.PortalEmpleosEntity

abstract class Usuario extends PortalEmpleosEntity {

	String direccion, telefono, mail, mailAlternativo, presentacion
	
    static constraints = {
    }
}
