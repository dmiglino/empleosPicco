package portal.empleos.picco.enumerations

import java.util.List;

class TipoTrabajoService {

 	List findAllByNombre(def nombre) {
		TipoTrabajo.findAllByNombre(nombre)
	}

}