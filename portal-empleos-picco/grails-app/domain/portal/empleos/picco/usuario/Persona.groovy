package portal.empleos.picco.usuario

import portal.empleos.picco.busqueda.Postulacion
import portal.empleos.picco.curriculum.CurriculumVitae
import portal.empleos.picco.enumerations.TipoTrabajo

/**
 * Representa a un usuario de tipo persona, que cargará su CV y aplicara a busquedas.
 * @author Diego Miglino
 */
class Persona extends Usuario {

	String nombre, apellido, intereses, cuil
	Integer celular, dni
	CurriculumVitae curriculum
	
	static hasMany = [postulaciones : Postulacion, interesesTipoTrabajos : TipoTrabajo]
	
    static constraints = {
		nombre blank:false
		apellido blank:false
		dni blank:false
		cuil nullable:true
		intereses nullable:true
		celular nullable:true
		curriculum nullable:true
    }
	
	@Override
	String toString() {
		"${nombre} ${apellido}"
	}
	
	Integer getInteresesTipoTrabajosCount() {
		interesesTipoTrabajos.size()
	}
	
	Integer getPostulacionesCount() {
		postulaciones.size()
	}
	
	Boolean hasInterestIn(TipoTrabajo tt) {
		interesesTipoTrabajos.contains(tt)
	}
	
	Boolean isPostulatedTo(Postulacion postulation) {
		postulaciones.contains(postulation)
	}

}