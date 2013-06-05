package portal.empleos.picco.enumerations

import java.util.List;

class InstitucionService {

	List findAllByNombre(def nombre) {
		Institucion.findAllByNombre(nombre)
	}

}