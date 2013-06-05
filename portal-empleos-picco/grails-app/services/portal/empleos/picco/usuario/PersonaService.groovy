package portal.empleos.picco.usuario

import java.util.List;
import java.util.Map;

class PersonaService {
	
	/**
	 * Busca personas a partir de los parametros pasados desde la vista
	 * @param params
	 * @return
	 */
	List findPersona(Map params) {
		def personaProps = Persona.metaClass.properties*.name
		def personas = Persona.withCriteria {
			and {
				params.each { field, value ->
					if (personaProps.grep(field) && value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
		return personas
	}

}