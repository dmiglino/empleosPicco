package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.enumerations.Institucion
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum;

/**
 * Representa los idiomas que posee el usuario
 * @author Diego Miglino
 */
class IdiomaPersonal extends PortalEmpleosEntity {
	
	IdiomaEnum idioma
	String tiempoExperiencia
	NivelDeConocimientoEnum nivel

	static hasMany = [ instituciones : Institucion ]
	static belongsTo = [ CurriculumVitae curriculum ]
	
    static constraints = {
		nivel nullable:false
		idioma nullable:false
		tiempoExperiencia nullable:true
    }
	
	@Override
	String toString() {
		"${idioma} con nivel ${nivel}"
	}
	
	Boolean isIdioma(IdiomaEnum idioma) {
		this.idioma.equals(idioma)
	}

}