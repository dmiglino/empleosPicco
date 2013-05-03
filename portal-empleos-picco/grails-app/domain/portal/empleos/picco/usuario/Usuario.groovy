package portal.empleos.picco.usuario

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Ciudad


abstract class Usuario extends PortalEmpleosEntity {

	String domicilio, email, emailAlternativo, presentacion
	Integer telefono
	Ciudad ciudad
	byte[] foto
	
    static constraints = {
		domicilio nullable : true
		telefono nullable : true
		ciudad nullable : true
		email (email: true, nullable: false)
		emailAlternativo (email: true, nullable: true)
		presentacion nullable : true
		foto nullable : true
    }

}