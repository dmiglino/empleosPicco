package portal.empleos.picco.busqueda

import grails.test.mixin.TestFor
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.usuario.Persona


@TestFor(Postulacion)
class PostulacionTests {

    void testConstraints() {
		Postulacion postulacion = new Postulacion()
		assertFalse postulacion.validate()
		assertTrue postulacion.hasErrors()
		assertNull postulacion.save()
		assertEquals "nullable", postulacion.errors["persona"].code
		assertEquals "nullable", postulacion.errors["busqueda"].code
    }
	
	void testAtributes() {
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java")
		Postulacion postulacion = new Postulacion(remuneracionPretendida:5000f, textoPresentacionPostulante:"Hola..", persona:persona, busqueda:busqueda)
		
		assertTrue postulacion.validate()
		assertEquals "Diego", postulacion.persona.nombre
		assertEquals "Martin", postulacion.persona.apellido
		assertEquals 30303303, postulacion.persona.dni
		assertEquals "meli@meli.com", postulacion.persona.email
		assertEquals 5000f, postulacion.busqueda.sueldoOfrecido
		assertEquals "capital", postulacion.busqueda.zona
		assertEquals "la busqueda de java", postulacion.busqueda.titulo
		assertEquals 5000f, postulacion.remuneracionPretendida
		assertEquals "Hola..", postulacion.textoPresentacionPostulante
	} 
	
	void testToString() {
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java")
		Postulacion postulacion = new Postulacion(remuneracionPretendida:5000f, textoPresentacionPostulante:"Hola..", persona:persona, busqueda:busqueda)
		assertEquals "Postulacion de Diego Martin a la busqueda de java en capital", postulacion.toString()
	}
	
}