package portal.empleos.picco.busqueda

import portal.empleos.picco.usuario.Persona

/**
 * Refleja la aplicacion de una Persona a una Busqueda
 * @author Diego Miglino
 */
class Postulacion {

	Float remuneracionPretendida
	String textoPresentacionPostulante
	Persona persona
	Busqueda busqueda
	
    static constraints = {
    }
}
