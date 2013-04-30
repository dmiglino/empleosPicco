package portal.empleos.picco.usuario

import static org.junit.Assert.*

import org.junit.*

import portal.empleos.picco.busqueda.Busqueda
import portal.empleos.picco.busqueda.Postulacion
import portal.empleos.picco.curriculum.CurriculumVitae
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.exception.InvalidEntityException
import portal.empleos.picco.utils.DBUtils


class PersonaIntegrationTests extends GroovyTestCase {

	void testSaveAndDeletePersonaWithPostulaciones() {
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com").save()
		Empresa empresa = new Empresa(denominacion:"MELI", email:"meli@meli.com", razonSocial: "PYME").save()
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"Hola.", titulo:"busqueda 1", empresa:empresa).save()
		empresa.addToBusquedas(busqueda)

		Postulacion postulacion1 = new Postulacion(remuneracionPretendida:5000f, textoPresentacionPostulante:"Hola.", persona:persona, busqueda:busqueda).save()
		Postulacion postulacion2 = new Postulacion(remuneracionPretendida:6000f, textoPresentacionPostulante:"Hola..", persona:persona, busqueda:busqueda).save()
		Postulacion postulacion3 = new Postulacion(remuneracionPretendida:7000f, textoPresentacionPostulante:"Hola...", persona:persona, busqueda:busqueda).save()
		
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
	
	void testPersonaCV() {
		CurriculumVitae cv = new CurriculumVitae(presentacion:"hola soy diego", textoLibre:"este es mi cv")
		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com", curriculum:cv)
		persona.save()
		assertEquals 1, CurriculumVitae.list().size()
		persona.delete()
		assertEquals 0, CurriculumVitae.list().size()
	}
	
	void testSave() {
		Persona persona1 = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
		Persona persona2 = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
		Persona persona3 = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
		Persona personaPersistida = DBUtils.validateAndSave(persona1)
		DBUtils.validateAndSave([persona2,persona3])
		assertEquals persona1, personaPersistida
		assertEquals 3, Persona.findAll().size()
	}
	
	void testFailSave() {
		Persona persona = new Persona()
		shouldFail(InvalidEntityException) {
			DBUtils.validateAndSave(persona)
		}
	}

}