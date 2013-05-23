package portal.empleos.picco.enumerations

class TipoTrabajoController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		def tiposTrabajo = TipoTrabajo.findAllByNombre(params.nombre)
		render(view: "list", model: [ tipoTrabajoInstanceList: tiposTrabajo , tipoTrabajoInstanceTotal : tiposTrabajo.size(), fromSearch:true ])
	}

}
