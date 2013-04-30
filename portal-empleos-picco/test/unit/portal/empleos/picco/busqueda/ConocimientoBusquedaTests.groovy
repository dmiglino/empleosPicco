package portal.empleos.picco.busqueda

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum;
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.usuario.Empresa

@TestFor(ConocimientoBusqueda)
class ConocimientoBusquedaTests {

	void testConstraints() {
		ConocimientoBusqueda cb = new ConocimientoBusqueda()
		assertFalse cb.validate()
		assertTrue cb.hasErrors()
		assertNull cb.save()
		assertEquals "nullable", cb.errors["conocimiento"].code
		assertEquals "nullable", cb.errors["nivel"].code
	}

	void testAtributes() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java", textoLibre:"Hola..", empresa:empresa)

		ConocimientoBusqueda cb = new ConocimientoBusqueda(conocimiento:conocimiento, nivel:NivelDeConocimientoEnum.SR, tiempoExperiencia:"2 años", busqueda:busqueda)

		assertTrue cb.validate()
		assertEquals "2 años", cb.tiempoExperiencia
		assertEquals "JAVA (DESARROLLO - SISTEMAS)", cb.conocimiento.toString()
		assertEquals NivelDeConocimientoEnum.SR, cb.nivel
	}

	void testToString() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java", textoLibre:"Hola..", empresa:empresa)

		ConocimientoBusqueda cb = new ConocimientoBusqueda(conocimiento:conocimiento, nivel:NivelDeConocimientoEnum.SR)

		assertEquals "JAVA (DESARROLLO - SISTEMAS) con nivel SR", cb.toString()
	}

	void testIsConocimiento() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento1 = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Conocimiento conocimiento2 = new Conocimiento(nombre:"COBOL", tipo:tipoTrabajo)
		ConocimientoBusqueda cb = new ConocimientoBusqueda(conocimiento:conocimiento1, nivel:NivelDeConocimientoEnum.SR)
		assertTrue cb.isConocimiento(conocimiento1)
		assertFalse cb.isConocimiento(conocimiento2)
	}
}