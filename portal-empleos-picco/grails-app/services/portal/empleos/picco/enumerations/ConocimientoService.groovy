package portal.empleos.picco.enumerations

class ConocimientoService {

	List findAllByNombre(def nombre) {
		Conocimiento.findAllByNombre(nombre)
	}
	
}