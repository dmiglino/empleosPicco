package portal.empleos.picco.enumerations

import grails.test.mixin.*
import org.junit.*


@TestFor(TipoTrabajo)
class TipoTrabajoTests {

    void testConstraints() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"", rubro:"")
		assertFalse tipoTrabajo.validate()
		assertTrue tipoTrabajo.hasErrors()
		assertNull tipoTrabajo.save()
		assertEquals "blank", tipoTrabajo.errors["nombre"].code
		assertEquals "blank", tipoTrabajo.errors["rubro"].code
		
		tipoTrabajo = new TipoTrabajo()
		assertFalse tipoTrabajo.validate()
		assertTrue tipoTrabajo.hasErrors()
		assertNull tipoTrabajo.save()
		assertEquals "nullable", tipoTrabajo.errors["nombre"].code
		assertEquals "nullable", tipoTrabajo.errors["rubro"].code
    }
	
	void testAtributes() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"programador", rubro:"sistemas")
		assertTrue tipoTrabajo.validate()
		assertEquals "programador", tipoTrabajo.nombre
		assertEquals "sistemas", tipoTrabajo.rubro
	} 
	
	void testToString() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"programador", rubro:"sistemas")
		assertEquals "programador (rubro: sistemas)", tipoTrabajo.toString()
	}
	
	void testEquals() {
		TipoTrabajo tipoTrabajo1 = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo2 = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo3 = new TipoTrabajo(nombre:"CIRUJANO", rubro:"MEDICINA")
		
		assertTrue tipoTrabajo1.equals(tipoTrabajo2)
		assertTrue tipoTrabajo2.equals(tipoTrabajo1)
		assertFalse tipoTrabajo1.equals(tipoTrabajo3)
		assertFalse tipoTrabajo3.equals(tipoTrabajo2)
	}
}