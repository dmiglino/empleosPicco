package portal.empleos.picco.usuario

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.busqueda.Busqueda
import portal.empleos.picco.enumerations.TipoTrabajo

@TestFor(Empresa)
class EmpresaTests {

    void testConstraints() {
		Empresa empresa = new Empresa()
		assertFalse empresa.validate()
		assertTrue empresa.hasErrors()
		assertNull empresa.save()
		assertEquals "nullable", empresa.errors["denominacion"].code
		assertEquals "nullable", empresa.errors["email"].code
		
		Empresa empresaConMailMalo = new Empresa(denominacion:"", email:"asd", emailAlternativo:"meli")
		assertFalse empresaConMailMalo.validate()
		assertEquals "blank", empresaConMailMalo.errors["denominacion"].code
		assertEquals "email.invalid", empresaConMailMalo.errors["email"].code
		assertEquals "email.invalid", empresaConMailMalo.errors["emailAlternativo"].code
    }
	
	void testAtributes() {
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		assertTrue empresa.validate()
		assertEquals "MELI", empresa.denominacion
		assertEquals "PYME", empresa.razonSocial
		assertEquals "meli@meli.com", empresa.email
		assertEquals "meliAlt@meli.com", empresa.emailAlternativo
		assertEquals "Arias 123", empresa.direccion
		assertEquals 123456, empresa.telefono
		assertEquals "hola hola", empresa.presentacion
	} 
	
	void testToString() {
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME")
		assertEquals "MELI (Razon Social: PYME)", empresa.toString()
	}
	
	void testTipoTrabajoList() {
		TipoTrabajo tipoTrabajo1 = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo2 = new TipoTrabajo(nombre:"TESTER", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo3 = new TipoTrabajo(nombre:"CIRUJANO", rubro:"MEDICINA")
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME")
		
		empresa.addToTipoTrabajoOfrecidos(tipoTrabajo1)
		empresa.addToTipoTrabajoOfrecidos(tipoTrabajo2)
		empresa.addToTipoTrabajoOfrecidos(tipoTrabajo3)
		
		assertEquals 3, empresa.getTipoTrabajoOfrecidosCount()
		assertTrue empresa.offersTipoTrabajo(tipoTrabajo1)
		assertTrue empresa.offersTipoTrabajo(tipoTrabajo2)
		assertTrue empresa.offersTipoTrabajo(tipoTrabajo3)
		
		empresa.removeFromTipoTrabajoOfrecidos(tipoTrabajo2)
		empresa.removeFromTipoTrabajoOfrecidos(tipoTrabajo3)
		
		assertEquals 1, empresa.getTipoTrabajoOfrecidosCount()
		assertTrue empresa.offersTipoTrabajo(tipoTrabajo1)
		assertFalse empresa.offersTipoTrabajo(tipoTrabajo2)
		assertFalse empresa.offersTipoTrabajo(tipoTrabajo3)
	}
	
	void testBusquedaList() {
		Busqueda busqueda1 = new Busqueda(sueldoOfrecido:5000f, zona:"Hola.")
		Busqueda busqueda2 = new Busqueda(sueldoOfrecido:6000f, zona:"Hola..")
		Busqueda busqueda3 = new Busqueda(sueldoOfrecido:7000f, zona:"Hola...")
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME")
		
		empresa.addToBusquedas(busqueda1)
		empresa.addToBusquedas(busqueda2)
		empresa.addToBusquedas(busqueda3)
		
		assertEquals 3, empresa.getBusquedasCount()
		assertTrue empresa.hasBusqueda(busqueda1)
		assertTrue empresa.hasBusqueda(busqueda2)
		assertTrue empresa.hasBusqueda(busqueda3)
		
		empresa.removeFromBusquedas(busqueda2)
		empresa.removeFromBusquedas(busqueda3)
		
		assertEquals 1, empresa.getBusquedasCount()
		assertTrue empresa.hasBusqueda(busqueda1)
		assertFalse empresa.hasBusqueda(busqueda2)
		assertFalse empresa.hasBusqueda(busqueda3)
		
		assertEquals empresa, busqueda1.empresa
		assertNull busqueda2.empresa
		assertNull busqueda3.empresa
	}
	
}