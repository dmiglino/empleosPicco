package portal.empleos.picco.usuario

import java.util.List;
import java.util.Map;

class EmpresaService {

	/**
	 * Busca empresas a partir de los parametros pasados desde la vista
	 * @param params
	 * @return
	 */
	List findEmpresa(Map params) {
		def empresaProps = Empresa.metaClass.properties*.name
		def empresas = Empresa.withCriteria {
			and {
				params.each { field, value ->
					if (empresaProps.grep(field) && value) {
						eq(field, value)
					}
				}
			}
			order("ciudad", "asc")
		}
		return empresas
	}

}