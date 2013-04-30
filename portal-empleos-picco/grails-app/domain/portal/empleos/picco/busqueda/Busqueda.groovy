package portal.empleos.picco.busqueda

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.usuario.Empresa

/**
 * Busqueda creada por una Empresa.
 * Cualquier persona podra postularse a ella.
 * @author Diego Miglino
 */
class Busqueda extends PortalEmpleosEntity {

	String zona, titulo, textoLibre
	Float sueldoOfrecido
	
	static belongsTo = [empresa : Empresa]

	static hasMany = [idiomasSolicitados : IdiomaBusqueda, conocimientosSolicitados : ConocimientoBusqueda, postulaciones : Postulacion]
	
    static constraints = {
		titulo blank:false
		zona blank:false
		textoLibre nullable:true
		sueldoOfrecido nullable:true
    }
	
	@Override
	String toString() {
		String empresaTxt = ""
		if(empresa)
			empresaTxt = " de la empresa ${empresa}"
		"${titulo} en ${zona}${empresaTxt}"
	}
	
	Boolean hasIdioma(IdiomaEnum idioma) {
		Boolean resultado
		for (IdiomaBusqueda unIdioma : idiomasSolicitados) {
			resultado = unIdioma.isIdioma(idioma)
			if(resultado)
				break
		}
		resultado
	}
	
	Boolean hasConocimiento(Conocimiento conocimiento) {
		Boolean resultado
		for (ConocimientoBusqueda unConocimiento : conocimientosSolicitados) {
			resultado = unConocimiento.isConocimiento(conocimiento)
			if(resultado)
				break
		}
		resultado
	}
	
	Integer countPostulaciones() {
		postulaciones.size()
	}

}