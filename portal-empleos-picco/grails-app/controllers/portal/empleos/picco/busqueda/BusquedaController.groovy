package portal.empleos.picco.busqueda

import org.springframework.dao.DataIntegrityViolationException

class BusquedaController {

	BusquedaService BbusquedaService
    def scaffold = true
	
    def index() {
        redirect(action: "list", params: params)
    }

    def save() {
		println "hola nueva busquedaaaa"
        def busquedaInstance = new Busqueda(params)
        if (!busquedaInstance.save(flush: true)) {
            render(view: "create", model: [busquedaInstance: busquedaInstance])
            return
        }
		
        flash.message = message(code: 'default.created.message', args: [message(code: 'busqueda.label', default: 'Busqueda'), busquedaInstance.id])
        redirect(action: "show", id: busquedaInstance.id)
    }
	
	def search = {
	}
	
	def results(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		render(view: "list", model: [ busquedaInstanceList: Busqueda.list(params), busquedaInstanceTotal: Busqueda.count(), fromSearch:true ] )
	}
}