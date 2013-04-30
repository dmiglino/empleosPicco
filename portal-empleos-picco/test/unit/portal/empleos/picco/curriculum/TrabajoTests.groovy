package portal.empleos.picco.curriculum

import grails.test.mixin.TestFor
import portal.empleos.picco.enumerations.Institucion

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Trabajo)
class TrabajoTests {

    void testConstraints() {
		Trabajo trabajo = new Trabajo()
		assertFalse trabajo.validate()
		assertTrue trabajo.hasErrors()
		assertNull trabajo.save()
		assertEquals "nullable", trabajo.errors["puesto"].code
		assertEquals "nullable", trabajo.errors["funcion"].code
		assertEquals "nullable", trabajo.errors["institucion"].code
		assertEquals "nullable", trabajo.errors["fechaInicio"].code
    }
	
	void testAtributes() {
		Date ahora = new Date()
		Date despues = new Date()
		Institucion institucion = new Institucion(nombre:"EVERIS", privada:false)
		Trabajo trabajo = new Trabajo(puesto:"PROGRAMADOR", funcion:"tirar lineas", institucion:institucion, fechaInicio:ahora, fechaFin:despues, textoLibre:"no aprendi nada")
		
		assertTrue trabajo.validate()
		assertEquals "PROGRAMADOR", trabajo.puesto
		assertEquals "tirar lineas", trabajo.funcion
		assertEquals institucion, trabajo.institucion
		assertEquals ahora, trabajo.fechaInicio
		assertEquals despues, trabajo.fechaFin
		assertEquals "no aprendi nada", trabajo.textoLibre
	} 
	
	void testWasIn() {
		Institucion meli = new Institucion(nombre:"MELI", privada:false)
		Institucion vostu = new Institucion(nombre:"VOSTU", privada:true)
		Trabajo trabajo = new Trabajo(puesto:"DEV", funcion:"chorear", institucion:meli, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		
		assertTrue trabajo.wasIn(meli)
		assertFalse trabajo.wasIn(vostu)
	}
	
	void testToString() {
		Institucion utn = new Institucion(nombre:"MOST", privada:false)
		Trabajo trabajo = new Trabajo(puesto:"DEV", funcion:25/10, institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		
		assertEquals "DEV en MOST", trabajo.toString()
	}
	
}
