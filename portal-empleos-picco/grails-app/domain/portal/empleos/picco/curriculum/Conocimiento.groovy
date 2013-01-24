package portal.empleos.picco.curriculum

import portal.empleos.picco.enumerations.ConocimientoEnum;

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
