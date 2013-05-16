package portal.empleos.picco.enumerations

class TipoTrabajoController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		def tiposTrabajo = TipoTrabajo.findAllByNombre(params.nombreTipo)
		return [ tiposTrabajo: tiposTrabajo, term : params.nombreTipo ]
	}

}
