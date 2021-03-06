package portal.empleos.picco.curriculum

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.IdiomaEnum;
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum

/**
 * Representa los conocimientos que posee el usuario
 * @author Diego Miglino
 */
class ConocimientoPersonal extends PortalEmpleosEntity {
	
	Conocimiento conocimiento
	String tiempoExperiencia
	NivelDeConocimientoEnum nivel
	
	static belongsTo = [ CurriculumVitae curriculum ]
	
    static constraints = {
		nivel nullable:false
		conocimiento nullable:false
		tiempoExperiencia nullable:true
    }
	
	@Override
	String toString() {
		"${conocimiento} con nivel ${nivel}"
	}
	
	Boolean isConocimiento(Conocimiento conocimiento) {
		this.conocimiento.equals(conocimiento)
	}
	
}