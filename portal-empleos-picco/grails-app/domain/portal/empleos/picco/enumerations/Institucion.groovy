package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Instituciones. <br>
 * UTN, UBA, UADE, ITBA, etc.
 * @author Diego Miglino
 */
class Institucion extends PortalEmpleosEntity {
	
	private String nombre
	private Boolean privada
	
    static constraints = {
    }
}
