package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Instituciones. <br>
 * UTN, UBA, UADE, ITBA, etc.
 * @author Diego Miglino
 */
class Institucion extends PortalEmpleosEntity {
	
	String nombre
	Boolean privada
	
    static constraints = {
		nombre blank: false
		privada nullable: false
    }
	
	@Override
	String toString() {
		"${nombre}"
	}

}