package portal.empleos.picco.usuario

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Ciudad

abstract class Usuario extends PortalEmpleosEntity {

	String domicilio, email, emailAlternativo, presentacion
	Integer telefono
	Ciudad ciudad
	
    static constraints = {
		domicilio nullable : true
		telefono nullable : true
		ciudad nullable : false
		email blank : false
		email email : true
		emailAlternativo nullable : true
		emailAlternativo email : true
		presentacion nullable : true
    }

}