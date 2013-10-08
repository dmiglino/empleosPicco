package portal.empleos.picco.enumerations

class TipoTrabajoController {

	TipoTrabajoService tipoTrabajoService
	def scaffold = true

	def search = {
	}
	
	def results = {
		def tiposTrabajo = tipoTrabajoService.findAllByNombre(params.nombre)
		render(view: "list", model: [ tipoTrabajoInstanceList: tiposTrabajo , tipoTrabajoInstanceTotal : tiposTrabajo.size(), fromSearch:true ])
	}

}
