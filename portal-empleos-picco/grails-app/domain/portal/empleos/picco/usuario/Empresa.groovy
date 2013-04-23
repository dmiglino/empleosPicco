package portal.empleos.picco.usuario

import portal.empleos.picco.busqueda.Busqueda
import portal.empleos.picco.enumerations.TipoTrabajo

/**
 * Representa a un usuario de tipo empresa, que creará busquedas y recibirá postulantes.
 * @author Diego Miglino
 */
class Empresa extends Usuario {

	String denominacion, razonSocial
	
	static hasMany = [busquedas : Busqueda, tipoTrabajoOfrecidos : TipoTrabajo]
	
    static constraints = {
		
    }
}
