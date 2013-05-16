package portal.empleos.picco.busqueda

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.IdiomaEnum;
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum

/**
 * Representa los conocimientos que solicita la busqueda
 * @author Diego Miglino
 */
class ConocimientoBusqueda extends PortalEmpleosEntity {
	
	Conocimiento conocimiento
	String tiempoExperiencia
	NivelDeConocimientoEnum nivel
	
	static belongsTo = [ Busqueda busqueda ]
	
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
	
	String getNombre() {
		conocimiento?.nombre
	}
}