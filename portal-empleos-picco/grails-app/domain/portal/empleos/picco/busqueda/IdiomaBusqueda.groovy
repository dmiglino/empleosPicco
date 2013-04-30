package portal.empleos.picco.busqueda

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.enumerations.Institucion
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum;

/**
 * Representa los idiomas que solicita la busqueda
 * @author Diego Miglino
 */
class IdiomaBusqueda extends PortalEmpleosEntity {
	
	IdiomaEnum idioma
	String tiempoExperiencia
	NivelDeConocimientoEnum nivel

	static belongsTo = [ Busqueda busqueda ]
	
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