package portal.empleos.picco.enumerations

class InstitucionController {

	InstitucionService institucionService
	def scaffold = true

	def search = {
	}
	
	def results = {
		def instituciones = institucionService.findAllByNombre(params.nombre)
		render(view: "list", model: [ institucionInstanceList: instituciones , institucionInstanceTotal : instituciones.size(), fromSearch:true ])
	}
	
}