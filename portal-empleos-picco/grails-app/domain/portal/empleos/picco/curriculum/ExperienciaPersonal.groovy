package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Institucion;


/**
 * Abarca ExperienciaLaboral, Cursos y Educacion
 * @author Diego Miglino
 */
abstract class ExperienciaPersonal extends PortalEmpleosEntity {

	String textoLibre
	Date fechaInicio, fechaFin
	Institucion institucion
	
	static belongsTo = CurriculumVitae
	
    static constraints = {
		institucion nullable:false
		textoLibre blank:true
		fechaInicio nullable:false
		fechaFin nullable:true
    }

	Boolean wasIn(Institucion institucion) {
		this.institucion.equals(institucion)
	}

}