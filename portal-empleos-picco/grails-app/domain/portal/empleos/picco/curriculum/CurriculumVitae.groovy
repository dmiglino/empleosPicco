package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.usuario.Persona

/**
 * Representa el CV del usuario
 * @author Diego Miglino
 */
class CurriculumVitae extends PortalEmpleosEntity {

	byte[] archivo
	String textoLibre, presentacion
	
	static hasMany = [ conocimientos : ConocimientoPersonal, experienciasLaborales : Trabajo, educacion : Educacion, cursos : Curso ]
	
	static belongsTo = Persona
		
    static constraints = {
		archivo nullable:true
		textoLibre nullable:true
		presentacion nullable:true
    }
}
