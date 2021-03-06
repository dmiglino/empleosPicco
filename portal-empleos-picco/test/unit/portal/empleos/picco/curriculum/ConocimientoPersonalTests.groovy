package portal.empleos.picco.curriculum

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.busqueda.Busqueda
import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.usuario.Empresa

@TestFor(ConocimientoPersonal)
class ConocimientoPersonalTests {

	void testConstraints() {
		ConocimientoPersonal cp = new ConocimientoPersonal()
		assertFalse cp.validate()
		assertTrue cp.hasErrors()
		assertNull cp.save()
		assertEquals "nullable", cp.errors["conocimiento"].code
		assertEquals "nullable", cp.errors["nivel"].code
	}

	void testAtributes() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java", textoLibre:"Hola..", empresa:empresa)

		ConocimientoPersonal cp = new ConocimientoPersonal(conocimiento:conocimiento, nivel:NivelDeConocimientoEnum.SR, tiempoExperiencia:"2 años", busqueda:busqueda)

		assertTrue cp.validate()
		assertEquals "2 años", cp.tiempoExperiencia
		assertEquals "JAVA (DESARROLLO - SISTEMAS)", cp.conocimiento.toString()
		assertEquals NivelDeConocimientoEnum.SR, cp.nivel
	}

	void testToString() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java", textoLibre:"Hola..", empresa:empresa)

		ConocimientoPersonal cp = new ConocimientoPersonal(conocimiento:conocimiento, nivel:NivelDeConocimientoEnum.SR)

		assertEquals "JAVA (DESARROLLO - SISTEMAS) con nivel SR", cp.toString()
	}

	void testIsConocimiento() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento1 = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Conocimiento conocimiento2 = new Conocimiento(nombre:"COBOL", tipo:tipoTrabajo)
		ConocimientoPersonal cp = new ConocimientoPersonal(conocimiento:conocimiento1, nivel:NivelDeConocimientoEnum.SR)
		assertTrue cp.isConocimiento(conocimiento1)
		assertFalse cp.isConocimiento(conocimiento2)
	}
}
