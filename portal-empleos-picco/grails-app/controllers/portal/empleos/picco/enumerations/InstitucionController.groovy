package portal.empleos.picco.enumerations

class InstitucionController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		def instituciones = Institucion.findAllByNombre(params.nombre)
		render(view: "list", model: [ institucionInstanceList: instituciones , institucionInstanceTotal : instituciones.size(), fromSearch:true ])
	}
	
}