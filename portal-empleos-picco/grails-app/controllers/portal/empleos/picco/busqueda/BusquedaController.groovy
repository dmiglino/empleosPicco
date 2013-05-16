package portal.empleos.picco.busqueda

import portal.empleos.picco.usuario.Empresa

class BusquedaController {
	def scaffold = true
	
	def search() { }
	
	def searchResults = {
		def empresa = Empresa.findById(params.empresaId)
		def busquedas = Busqueda.withCriteria {
			and {
				eq('empresa', empresa)
				between('dateCreated', new Date()-30, new Date())
				conocimientosSolicitados { 
					conocimiento {
						eq('nombre', params.nombreConocimientoBuscado) 
					}
				}
			}
			maxResults(10)
			order("dateCreated", "desc")
		}
		return [ busquedas: busquedas, term : params.nombreConocimientoBuscado ]
	}
	
}