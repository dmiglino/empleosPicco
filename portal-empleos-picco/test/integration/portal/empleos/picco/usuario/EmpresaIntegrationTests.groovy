package portal.empleos.picco.usuario

import static org.junit.Assert.*
import groovy.util.GroovyTestCase;

import org.junit.*

import portal.empleos.picco.busqueda.Busqueda
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.exception.InvalidEntityException
import portal.empleos.picco.utils.DBUtils


class EmpresaIntegrationTests extends GroovyTestCase {

	void testSaveAndDeleteEmpresaWithPostulaciones() {
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME").save()
		Busqueda busqueda1 = new Busqueda(sueldoOfrecido:5000f, zona:"Hola.")
		Busqueda busqueda2 = new Busqueda(sueldoOfrecido:6000f, zona:"Hola..")
		Busqueda busqueda3 = new Busqueda(sueldoOfrecido:7000f, zona:"Hola...")
		
		empresa.addToBusquedas(busqueda1)
		empresa.addToBusquedas(busqueda2)
		empresa.addToBusquedas(busqueda3)
		
		empresa = Empresa.get(empresa.id)
		assertEquals 3, empresa.getBusquedasCount()
		
		def postus = Busqueda.findAll()
		assertEquals 3, postus.size()
		
		empresa.delete()
		
		postus = Busqueda.findAll()
		assertEquals 0, postus.size()
	}
	
	void testSaveAndDeleteEmpresaWithTiposTrabajo() {
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME").save()
		TipoTrabajo tipoTrabajo1 = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo2 = new TipoTrabajo(nombre:"TESTER", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo3 = new TipoTrabajo(nombre:"CIRUJANO", rubro:"MEDICINA")
		
		empresa.addToTipoTrabajoOfrecidos(tipoTrabajo1)
		empresa.addToTipoTrabajoOfrecidos(tipoTrabajo2)
		empresa.addToTipoTrabajoOfrecidos(tipoTrabajo3)
		
		empresa = Empresa.get(empresa.id)
		assertEquals 3, empresa.getTipoTrabajoOfrecidosCount()
		
		def tipos = TipoTrabajo.findAll()
		assertEquals 3, tipos.size()
		
		empresa.delete()
		
		tipos = TipoTrabajo.findAll()
		assertEquals 3, tipos.size()
	}
	
	void testSave() {
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME")
		Empresa empresaPersistida = DBUtils.validateAndSave(empresa)
		assertEquals empresa, empresaPersistida
	}
	
	void testFailSave() {
		Empresa empresa = new Empresa()
		shouldFail(InvalidEntityException) {
			DBUtils.validateAndSave(empresa)
		}
	}
}