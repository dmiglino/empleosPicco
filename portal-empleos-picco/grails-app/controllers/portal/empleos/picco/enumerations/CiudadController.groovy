package portal.empleos.picco.enumerations

class CiudadController {

	CiudadService ciudadService
	def scaffold = true

	def search = {
	}
	
	def results = {
		def ciudades = ciudadService.findCiudades(params)
		render(view: "list", model: [ ciudadInstanceList: ciudades , ciudadInstanceTotal : ciudades.size(), fromSearch:true ])
	}

}