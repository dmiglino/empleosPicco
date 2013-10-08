package portal.empleos.picco.usuario

class PersonaController {
	
	PersonaService personaService
	def scaffold = true
	
	def results = {
		def personas = personaService.findPersona(params)
		render(view: "list", model: [ personaInstanceList: personas , personaInstanceTotal : personas.size(), fromSearch:true ])
	}

}