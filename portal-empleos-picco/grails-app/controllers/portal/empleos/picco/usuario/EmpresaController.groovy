package portal.empleos.picco.usuario

class EmpresaController {
	
	EmpresaService empresaService
	def scaffold = true
	
	def results = {
		def empresas = empresaService.findEmpresa(params)
		render(view: "list", model: [ empresaInstanceList: empresas , empresaInstanceTotal : empresas.size(), fromSearch:true ])
	}

}