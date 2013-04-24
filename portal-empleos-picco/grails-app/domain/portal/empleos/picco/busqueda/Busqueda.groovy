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

	String zona, textoLibre
	Float sueldoOfrecido
	
	static belongsTo = [empresa : Empresa]

	static hasMany = [idiomasSolicitados : IdiomaEnum, conocimientosSolicitados : Conocimiento, postulaciones : Postulacion]
	
    static constraints = {
		zona nullable:true
		textoLibre nullable:true
		sueldoOfrecido nullable:true
    }
}
