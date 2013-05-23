package portal.empleos.picco.enumerations

class ConocimientoController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		def conocimientos = Conocimiento.findAllByNombre(params.nombre)
		render(view: "list", model: [ conocimientoInstanceList: conocimientos , conocimientoInstanceTotal : conocimientos.size(), fromSearch:true ])
	}

}
