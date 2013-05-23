package portal.empleos.picco.usuario

class PersonaController {
	
	def scaffold = true
	
	def results = {
		def personaProps = Persona.metaClass.properties*.name
		def personas = Persona.withCriteria {
//			"${params.queryType}" {
			and {
				params.each { field, value ->
					if (personaProps.grep(field) && value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
		render(view: "list", model: [ personaInstanceList: personas , personaInstanceTotal : personas.size(), fromSearch:true ])
	}

}