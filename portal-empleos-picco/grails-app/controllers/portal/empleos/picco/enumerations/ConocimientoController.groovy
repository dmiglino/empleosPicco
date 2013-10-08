package portal.empleos.picco.enumerations

class ConocimientoController {

	ConocimientoService conocimientoService
	def scaffold = true

	def search = {
	}
	
	def results = {
		def conocimientos = conocimientoService.findAllByNombre(params.nombre)
		render(view: "list", model: [ conocimientoInstanceList: conocimientos , conocimientoInstanceTotal : conocimientos.size(), fromSearch:true ])
	}

}