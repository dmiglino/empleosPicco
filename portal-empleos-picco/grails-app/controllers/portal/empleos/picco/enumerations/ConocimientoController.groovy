package portal.empleos.picco.enumerations

class ConocimientoController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		def conocimientos = Conocimiento.findAllByNombre(params.conocimientosNombre)
		return [ conocimientos: conocimientos, term : params.conocimientosNombre ]
	}

}
