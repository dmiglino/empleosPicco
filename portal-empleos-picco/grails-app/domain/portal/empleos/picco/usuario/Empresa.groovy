package portal.empleos.picco.usuario

/**
 * Representa a un usuario de tipo empresa, que creará busquedas y recibirá postulantes.
 * @author Diego Miglino
 */
class Empresa extends Usuario {

	String denominacion, razonSocial
	List busquedas
	List tipoTrabajoOfrecidos
	
    static constraints = {
    }
}
