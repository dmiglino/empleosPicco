package portal.empleos.picco.enumerations

import grails.test.mixin.*
import org.junit.*

@TestFor(TipoTrabajo)
class TipoTrabajoTests {

    void testConstraints() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"", rubro:"")
		assertFalse tipoTrabajo.validate()
		assertEquals "blank", tipoTrabajo.errors["nombre"].code
		assertEquals "blank", tipoTrabajo.errors["rubro"].code
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
}