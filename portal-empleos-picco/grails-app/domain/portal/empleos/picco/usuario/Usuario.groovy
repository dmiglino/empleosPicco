package portal.empleos.picco.usuario

import portal.empleos.picco.PortalEmpleosEntity

abstract class Usuario extends PortalEmpleosEntity {

	String direccion, email, emailAlternativo, presentacion
	Integer telefono
	
    static constraints = {
		direccion nullable : true
		telefono nullable : true
		presentacion nullable : true
		email blank : false
		email email : true
		emailAlternativo nullable : true
		emailAlternativo email : true
    }

}