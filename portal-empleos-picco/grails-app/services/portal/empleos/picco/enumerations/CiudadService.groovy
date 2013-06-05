package portal.empleos.picco.enumerations

import java.util.List;
import java.util.Map;

class CiudadService {
	
	/**
	 * Busca ciudades a partir de los parametros pasados desde la vista
	 * @param params
	 * @return
	 */
	List findCiudades(Map params) {
		def ciudadProps = Ciudad.metaClass.properties*.name
		def ciudades = Ciudad.withCriteria {
			and {
				params.each { field, value ->
					if (ciudadProps.grep(field) && value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
		return ciudades
	}

}