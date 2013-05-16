package portal.empleos.picco.enumerations

class CiudadController {

	def scaffold = true

	def search = {
	}
	
	def results = {
//		def ciudades = Ciudad.withCriteria {
//			and {
//				eq('ciudad', params.ciudad)
//				eq('provincia', params.provincia)
//				eq('pais', params.pais)
//			}
//			order("ciudad", "asc")
//		}
		
		def ciudadProps = Ciudad.metaClass.properties*.name
		def ciudades = Ciudad.withCriteria {
//			"${params.queryType}" {
			and {
				params.each { field, value ->
					if (ciudadProps.grep(field)
					&& value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
		println ciudades
		return [ ciudadInstanceList: ciudades ]
	}

}