package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Representa los conocimientos que posee el usuario
 * @author Diego Miglino
 */
class ConocimientoPersonal extends PortalEmpleosEntity {
	
	String nivel, tiempoExperiencia
	ConocimientoPersonal conocimiento
	
	static belongsTo = [ CurriculumVitae curriculum ]
	
    static constraints = {
    }
}
