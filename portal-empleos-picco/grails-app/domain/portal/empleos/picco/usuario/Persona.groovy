package portal.empleos.picco.usuario

import portal.empleos.picco.curriculum.CurriculumVitae

/**
 * Representa a un usuario de tipo persona, que cargará su CV y aplicara a busquedas.
 * @author Diego Miglino
 */
class Persona extends Usuario {

	String nombre, apellido, celular, intereses
	CurriculumVitae curriculum
	List postulaciones
	List interesesTrabajos
	
    static constraints = {
    }
}
