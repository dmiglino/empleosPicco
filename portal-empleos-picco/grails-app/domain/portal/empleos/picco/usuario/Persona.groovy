package portal.empleos.picco.usuario

import portal.empleos.picco.busqueda.Postulacion
import portal.empleos.picco.curriculum.CurriculumVitae
import portal.empleos.picco.enumerations.TipoTrabajo

/**
 * Representa a un usuario de tipo persona, que cargará su CV y aplicara a busquedas.
 * @author Diego Miglino
 */
class Persona extends Usuario {

	String nombre, apellido, celular, intereses
	CurriculumVitae curriculum
	
	static hasMany = [postulaciones : Postulacion, interesesTrabajos : TipoTrabajo]
	
    static constraints = {
		intereses blank:true
		curriculum nullable:true
    }
}
