package portal.empleos.picco.curriculum

import groovy.ConocimientoEnum

/**
 * Representa los conocimientos que posee el usuario
 * @author Diego Miglino
 */
class Conocimiento {
	
	ConocimientoEnum conocimiento
	String nivel, tiempoExperiencia
	CurriculumVitae curriculum
	
    static constraints = {
    }
}
