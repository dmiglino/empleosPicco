package portal.empleos.picco.usuario

import static org.junit.Assert.*

import org.junit.*

import portal.empleos.picco.busqueda.Postulacion
import portal.empleos.picco.enumerations.TipoTrabajo


class PersonaIntegrationTests {

	void testSaveAndDeletePersonaWithPostulaciones() {
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com").save()
		Postulacion postulacion1 = new Postulacion(remuneracionPretendida:5000f, textoPresentacionPostulante:"Hola.")
		Postulacion postulacion2 = new Postulacion(remuneracionPretendida:6000f, textoPresentacionPostulante:"Hola..")
		Postulacion postulacion3 = new Postulacion(remuneracionPretendida:7000f, textoPresentacionPostulante:"Hola...")
		
		persona.addToPostulaciones(postulacion1)
		persona.addToPostulaciones(postulacion2)
		persona.addToPostulaciones(postulacion3)
		
		persona = Persona.get(persona.id)
		assertEquals 3, persona.getPostulacionesCount()
		
		def postus = Postulacion.findAll()
		assertEquals 3, postus.size()
		
		persona.delete()
		
		postus = Postulacion.findAll()
		assertEquals 0, postus.size()
	}
	
	void testSaveAndDeletePersonaWithTiposTrabajo() {
		TipoTrabajo tipoTrabajo1 = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo2 = new TipoTrabajo(nombre:"TESTER", rubro:"SISTEMAS")
		TipoTrabajo tipoTrabajo3 = new TipoTrabajo(nombre:"CIRUJANO", rubro:"MEDICINA")
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com").save()
		
		persona.addToInteresesTipoTrabajos(tipoTrabajo1)
		persona.addToInteresesTipoTrabajos(tipoTrabajo2)
		persona.addToInteresesTipoTrabajos(tipoTrabajo3)
		
		persona = Persona.get(persona.id)
		assertEquals 3, persona.getInteresesTipoTrabajosCount()
		
		def tipos = TipoTrabajo.findAll()
		assertEquals 3, tipos.size()
		
		persona.delete()
		
		tipos = TipoTrabajo.findAll()
		assertEquals 3, tipos.size()
	}

}