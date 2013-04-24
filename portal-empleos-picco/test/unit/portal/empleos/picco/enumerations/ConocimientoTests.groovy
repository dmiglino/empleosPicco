package portal.empleos.picco.enumerations

import grails.test.mixin.*
import org.junit.*

@TestFor(Conocimiento)
class ConocimientoTests {

    void testConstraints() {
		Conocimiento conocimiento = new Conocimiento(nombre:"", tipo:"")
		assertFalse conocimiento.validate()
		assertTrue conocimiento.hasErrors()
		assertNull conocimiento.save()
		assertEquals "blank", conocimiento.errors["nombre"].code
		assertEquals "nullable", conocimiento.errors["tipo"].code
		
		conocimiento = new Conocimiento()
		assertFalse conocimiento.validate()
		assertTrue conocimiento.hasErrors()
		assertNull conocimiento.save()
		assertEquals "nullable", conocimiento.errors["nombre"].code
		assertEquals "nullable", conocimiento.errors["tipo"].code
    }
	
	void testAtributes() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		assertTrue conocimiento.validate()
		assertEquals "JAVA", conocimiento.nombre
		assertEquals "DESARROLLO", conocimiento.tipo.nombre
		assertEquals "SISTEMAS", conocimiento.tipo.rubro
		assertTrue conocimiento.isTipo("DESARROLLO","SISTEMAS")
		assertFalse conocimiento.isTipo("CIRUJANO","MEDICINA")
	} 
	
	void testIsTipo() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		assertTrue conocimiento.isTipo("DESARROLLO","SISTEMAS")
		assertFalse conocimiento.isTipo("CIRUJANO","MEDICINA")
	}
	
	void testToString() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		assertEquals "JAVA (DESARROLLO - SISTEMAS)", conocimiento.toString()
		assertEquals "DESARROLLO (rubro: SISTEMAS)", conocimiento.tipo.toString()
	}
	
}