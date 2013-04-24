package portal.empleos.picco.enumerations

import grails.test.mixin.*

import org.junit.*

@TestFor(Institucion)
class InstitucionTests {

    void testConstraints() {
		Institucion institucion = new Institucion(nombre:"", privada:null)
		assertFalse institucion.validate()
		assertTrue institucion.hasErrors()
		assertNull institucion.save()
		assertEquals "blank", institucion.errors["nombre"].code
		assertEquals "nullable", institucion.errors["privada"].code
		
		institucion = new Institucion()
		assertFalse institucion.validate()
		assertTrue institucion.hasErrors()
		assertNull institucion.save()
		assertEquals "nullable", institucion.errors["nombre"].code
		assertEquals "nullable", institucion.errors["privada"].code
		
    }
	
	void testAtributes() {
		Institucion institucion = new Institucion(nombre:"UADE", privada:true)
		assertTrue institucion.validate()
		assertEquals "UADE", institucion.nombre
		assertTrue institucion.privada
	} 
	
	void testToString() {
		Institucion institucion = new Institucion(nombre:"UTN", privada:false)
		assertFalse institucion.privada
		assertEquals "UTN", institucion.toString()
	}
}