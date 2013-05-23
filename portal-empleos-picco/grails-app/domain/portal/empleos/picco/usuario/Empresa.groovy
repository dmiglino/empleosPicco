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
		denominacion blank:false
		razonSocial nullable:true
    }
	
	@Override
	String toString() {
		"${denominacion} (Razon Social: ${razonSocial})"
	}
	
	Integer getTipoTrabajoOfrecidosCount() {
		tipoTrabajoOfrecidos.size()
	}
	
	Integer getBusquedasCount() {
		busquedas.size()
	}
	
	Boolean hasBusqueda(Busqueda busqueda) {
		busquedas.contains(busqueda)
	}
	
	Boolean offersTipoTrabajo(TipoTrabajo tt) {
		tipoTrabajoOfrecidos.contains(tt)
	}

}