package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.enumerations.Institucion

/**
 * Representa los idiomas que posee el usuario
 * @author Diego Miglino
 */
class IdiomaPersonal extends PortalEmpleosEntity {
	
	IdiomaEnum idioma
	String nivel, tiempoEstudio

	static hasMany = [ instituciones : Institucion ]
	static belongsTo = [ CurriculumVitae curriculum ]
	
    static constraints = {
    }
}
