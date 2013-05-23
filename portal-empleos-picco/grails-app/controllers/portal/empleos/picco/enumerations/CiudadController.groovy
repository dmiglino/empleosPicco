package portal.empleos.picco.enumerations

class CiudadController {

	def scaffold = true

	def search = {
	}
	
	def results = {
		
		def ciudadProps = Ciudad.metaClass.properties*.name
		def ciudades = Ciudad.withCriteria {
//			"${params.queryType}" {
			and {
				params.each { field, value ->
					if (ciudadProps.grep(field) && value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
//		return [ ciudadInstanceList: ciudades ]
		render(view: "list", model: [ ciudadInstanceList: ciudades , ciudadInstanceTotal : ciudades.size(), fromSearch:true ])
	}

}