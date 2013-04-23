package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity



/**
 * Abarca ExperienciaLaboral, Cursos y Educacion
 * @author Diego Miglino
 */
abstract class ExperienciaPersonal extends PortalEmpleosEntity {

	String nombreInstitucion, textoLibre
	Date fechaInicio, fechaFin
	
	static hasMany = [ proyectos : Proyecto ]
	
	static belongsTo = CurriculumVitae
	
    static constraints = {
		textoLibre blank:true
		fechaFin nullable:true
    }

}
