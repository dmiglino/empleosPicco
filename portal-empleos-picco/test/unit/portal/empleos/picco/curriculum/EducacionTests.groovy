package portal.empleos.picco.curriculum

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.Institucion
import portal.empleos.picco.enumerations.TipoTrabajo

@TestFor(Educacion)
class EducacionTests {

    void testConstraints() {
		Educacion educacion = new Educacion()
		assertFalse educacion.validate()
		assertTrue educacion.hasErrors()
		assertNull educacion.save()
		assertEquals "nullable", educacion.errors["titulo"].code
		assertEquals "nullable", educacion.errors["institucion"].code
		assertEquals "nullable", educacion.errors["fechaInicio"].code
    }
	
	void testAtributes() {
		Date ahora = new Date()
		Date despues = new Date()
		Institucion institucion = new Institucion(nombre:"UTN", privada:false)
		Educacion educacion = new Educacion(titulo:"ING", promedio:new Double(25/10), institucion:institucion, fechaInicio:ahora, fechaFin:despues, textoLibre:"no aprendi nada")
		
		assertTrue educacion.validate()
		assertEquals "ING", educacion.titulo
		assertEquals new Double(25/10), educacion.promedio
		assertEquals institucion, educacion.institucion
		assertEquals ahora, educacion.fechaInicio
		assertEquals despues, educacion.fechaFin
		assertEquals "no aprendi nada", educacion.textoLibre
	} 
	
	void testWasIn() {
		Institucion utn = new Institucion(nombre:"UTN", privada:false)
		Institucion uade = new Institucion(nombre:"UADE", privada:true)
		Educacion educacion = new Educacion(titulo:"ING", promedio:new Double(25/10), institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		
		assertTrue educacion.wasIn(utn)
		assertFalse educacion.wasIn(uade)
	}
	
	void testHasPromedioMayorA() {
		Institucion utn = new Institucion(nombre:"UTN", privada:false)
		Educacion educacionOk = new Educacion(titulo:"ING", promedio:new Double(6/10), institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		Educacion educacionMal = new Educacion(titulo:"ING", promedio:new Double(2/10), institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		
		assertTrue educacionOk.hasPromedioMayorA(new Double(4/10))
		assertFalse educacionMal.hasPromedioMayorA(new Double(4/10))
	}
	
	void testToString() {
		Institucion utn = new Institucion(nombre:"UTN", privada:false)
		Educacion educacion = new Educacion(titulo:"ING", promedio:new Double(25/10), institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		
		assertEquals "ING en UTN", educacion.toString()
	}
	
}