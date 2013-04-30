package portal.empleos.picco.curriculum

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.TipoTrabajo


@TestFor(Proyecto)
class ProyectoTests {

    void testConstraints() {
		Proyecto proyecto = new Proyecto(nombre:"", tipo:"")
		assertFalse proyecto.validate()
		assertTrue proyecto.hasErrors()
		assertNull proyecto.save()
		assertEquals "blank", proyecto.errors["nombre"].code
		assertEquals "nullable", proyecto.errors["duracion"].code
		
		proyecto = new Proyecto()
		assertFalse proyecto.validate()
		assertTrue proyecto.hasErrors()
		assertNull proyecto.save()
		assertEquals "nullable", proyecto.errors["nombre"].code
		assertEquals "nullable", proyecto.errors["duracion"].code
    }
	
	void testAtributes() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Conocimiento conocNo = new Conocimiento(nombre:"COBOL", tipo:tipoTrabajo)
		Proyecto proyecto = new Proyecto(nombre:"CRMMOD", duracion:"1 año")
		proyecto.addToHerramientasUtilizadas(conocimiento)
		
		assertTrue proyecto.validate()
		assertEquals "CRMMOD", proyecto.nombre
		assertEquals "1 año", proyecto.duracion
		assertEquals 1, proyecto.herramientasUtilizadas.size()
	} 
	
	void testHasConocimiento() {
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		Conocimiento conocNo = new Conocimiento(nombre:"COBOL", tipo:tipoTrabajo)
		Proyecto proyecto = new Proyecto(nombre:"CRMMOD", duracion:"1 año")
		proyecto.addToHerramientasUtilizadas(conocimiento)
		
		assertTrue proyecto.hasConocimiento(conocimiento)
		assertFalse proyecto.hasConocimiento(conocNo)
	}
	
	void testToString() {
		Proyecto proyecto = new Proyecto(nombre:"CRMMOD", duracion:"1 año")
		assertEquals "CRMMOD (1 año)", proyecto.toString()
	}
	
}