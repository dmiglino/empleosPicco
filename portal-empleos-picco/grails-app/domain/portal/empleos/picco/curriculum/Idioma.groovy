package portal.empleos.picco.curriculum

import groovy.IdiomaEnum

/**
 * Representa los idiomas que posee el usuario
 * @author Diego Miglino
 */
class Idioma {
	
	IdiomaEnum idioma
	String nivel, tiempoEstudio
	CurriculumVitae curriculum
	List instituciones
	
    static constraints = {
    }
}
