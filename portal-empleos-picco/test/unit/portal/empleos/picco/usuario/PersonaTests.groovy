package portal.empleos.picco.usuario

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.busqueda.Postulacion
import portal.empleos.picco.enumerations.TipoTrabajo

@TestFor(Persona)
class PersonaTests {

    void testConstraints() {
		Persona persona = new Persona()
		assertFalse persona.validate()
		assertTrue persona.hasErrors()
		assertNull persona.save()
		assertEquals "nullable", persona.errors["nombre"].code
		assertEquals "nullable", persona.errors["apellido"].code
		assertEquals "nullable", persona.errors["dni"].code
		assertEquals "nullable", persona.errors["email"].code
		
		Persona personaConMailMalo = new Persona(nombre:"", apellido:"", dni:"", email:"asd", emailAlternativo:"meli")
		assertFalse personaConMailMalo.validate()
		assertEquals "blank", personaConMailMalo.errors["nombre"].code
		assertEquals "blank", personaConMailMalo.errors["apellido"].code
		assertEquals "nullable", personaConMailMalo.errors["dni"].code
		assertEquals "email.invalid", personaConMailMalo.errors["email"].code
		assertEquals "email.invalid", personaConMailMalo.errors["emailAlternativo"].code
    }
	
	void testAtributes() {
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", intereses:"Futbol", dni:30303303, cuil:"30-30303303-3", celular: 654321, email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		assertTrue persona.validate()
		assertEquals "Diego", persona.nombre
		assertEquals "Martin", persona.apellido
		assertEquals "Futbol", persona.intereses
		assertEquals 30303303, persona.dni
		assertEquals "30-30303303-3", persona.cuil
		assertEquals "meli@meli.com", persona.email
		assertEquals "meliAlt@meli.com", persona.emailAlternativo
		assertEquals "Arias 123", persona.direccion
		assertEquals 123456, persona.telefono
		assertEquals 654321, persona.celular
		assertEquals "hola hola", persona.presentacion
	} 
	
	void testToString() {
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin")
		assertEquals "Diego Martin", persona.toString()
	}
	
	void testTipoTrabajoList() {
		TipoTrabajo tipoTrabajo1 = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo2 = new TipoTrabajo(nombre:"TESTER", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo3 = new TipoTrabajo(nombre:"CIRUJANO", rubro:"MEDICINA")
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
		
		persona.addToInteresesTipoTrabajos(tipoTrabajo1)
		persona.addToInteresesTipoTrabajos(tipoTrabajo2)
		persona.addToInteresesTipoTrabajos(tipoTrabajo3)
		
		assertEquals 3, persona.getInteresesTipoTrabajosCount()
		assertTrue persona.hasInterestIn(tipoTrabajo1)
		assertTrue persona.hasInterestIn(tipoTrabajo2)
		assertTrue persona.hasInterestIn(tipoTrabajo3)
		
		persona.removeFromInteresesTipoTrabajos(tipoTrabajo2)
		persona.removeFromInteresesTipoTrabajos(tipoTrabajo3)
		
		assertEquals 1, persona.getInteresesTipoTrabajosCount()
		assertTrue persona.hasInterestIn(tipoTrabajo1)
		assertFalse persona.hasInterestIn(tipoTrabajo2)
		assertFalse persona.hasInterestIn(tipoTrabajo3)
	}
	
	void testPostulacionList() {
		Postulacion postulacion1 = new Postulacion(remuneracionPretendida:5000f, textoPresentacionPostulante:"Hola.")
		Postulacion postulacion2 = new Postulacion(remuneracionPretendida:6000f, textoPresentacionPostulante:"Hola..")
		Postulacion postulacion3 = new Postulacion(remuneracionPretendida:7000f, textoPresentacionPostulante:"Hola...")
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
		
		persona.addToPostulaciones(postulacion1)
		persona.addToPostulaciones(postulacion2)
		persona.addToPostulaciones(postulacion3)
		
		assertEquals 3, persona.getPostulacionesCount()
		assertTrue persona.isPostulatedTo(postulacion1)
		assertTrue persona.isPostulatedTo(postulacion2)
		assertTrue persona.isPostulatedTo(postulacion3)
		
		persona.removeFromPostulaciones(postulacion2)
		persona.removeFromPostulaciones(postulacion3)
		
		assertEquals 1, persona.getPostulacionesCount()
		assertTrue persona.isPostulatedTo(postulacion1)
		assertFalse persona.isPostulatedTo(postulacion2)
		assertFalse persona.isPostulatedTo(postulacion3)
		
		assertEquals persona, postulacion1.persona
		assertNull postulacion2.persona
		assertNull postulacion3.persona
	}
}