package portal.empleos.picco.enumerations

class InstitucionController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		def instituciones = Institucion.findAllByNombre(params.institucionNombre)
		return [ instituciones: instituciones, term : params.institucionNombre ]
	}
	
}