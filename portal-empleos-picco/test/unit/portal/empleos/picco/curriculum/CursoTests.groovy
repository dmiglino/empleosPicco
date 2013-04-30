package portal.empleos.picco.curriculum

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.enumerations.Institucion

@TestFor(Curso)
class CursoTests {

	void testConstraints() {
		Curso curso = new Curso()
		assertFalse curso.validate()
		assertTrue curso.hasErrors()
		assertNull curso.save()
		assertEquals "nullable", curso.errors["titulo"].code
		assertEquals "nullable", curso.errors["institucion"].code
		assertEquals "nullable", curso.errors["fechaInicio"].code
	}

	void testAtributes() {
		Date ahora = new Date()
		Date despues = new Date()
		Institucion institucion = new Institucion(nombre:"UTN", privada:false)
		Curso curso = new Curso(titulo:"ING", institucion:institucion, fechaInicio:ahora, fechaFin:despues, textoLibre:"no aprendi nada")

		assertTrue curso.validate()
		assertEquals "ING", curso.titulo
		assertEquals institucion, curso.institucion
		assertEquals ahora, curso.fechaInicio
		assertEquals despues, curso.fechaFin
		assertEquals "no aprendi nada", curso.textoLibre
	}

	void testWasIn() {
		Institucion utn = new Institucion(nombre:"UTN", privada:false)
		Institucion uade = new Institucion(nombre:"UADE", privada:true)
		Curso curso = new Curso(titulo:"ING", institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")

		assertTrue curso.wasIn(utn)
		assertFalse curso.wasIn(uade)
	}

	void testToString() {
		Institucion utn = new Institucion(nombre:"UTN", privada:false)
		Curso curso = new Curso(titulo:"LADRI", institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")

		assertEquals "LADRI en UTN", curso.toString()
	}
}
