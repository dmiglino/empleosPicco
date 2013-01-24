package portal.empleos.picco.busqueda

import portal.empleos.picco.usuario.Empresa


/**
 * Busqueda creada por una Empresa.
 * Cualquier persona podra postularse a ella.
 * @author Diego Miglino
 */
class Busqueda {

	Empresa empresa
	String zona, textoLibre
	Float sueldoOfrecido
	List idiomasSolicitados
	List conocimientosSolicitados
	List postulaciones
	
    static constraints = {
    }
}
