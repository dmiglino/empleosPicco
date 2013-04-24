package portal.empleos.picco.busqueda

import portal.empleos.picco.PortalEmpleosEntity
import portal.empleos.picco.usuario.Persona

/**
 * Refleja la aplicacion de una Persona a una Busqueda
 * @author Diego Miglino
 */
class Postulacion extends PortalEmpleosEntity {

	Float remuneracionPretendida
	String textoPresentacionPostulante

	static belongsTo = [ persona : Persona , busqueda : Busqueda ]
	
    static constraints = {
		remuneracionPretendida blank:true
		textoPresentacionPostulante blank:true
    }
}
