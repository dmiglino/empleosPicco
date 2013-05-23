package portal.empleos.picco.usuario

class EmpresaController {
	def scaffold = true
	def results = {
		def empresaProps = Empresa.metaClass.properties*.name
		def empresas = Empresa.withCriteria {
//			"${params.queryType}" {
			and {
				params.each { field, value ->
					if (empresaProps.grep(field) && value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
		render(view: "list", model: [ empresaInstanceList: empresas , empresaInstanceTotal : empresas.size(), fromSearch:true ])
	}

}