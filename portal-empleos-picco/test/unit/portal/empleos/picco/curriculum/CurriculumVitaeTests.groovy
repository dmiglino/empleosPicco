package portal.empleos.picco.curriculum

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.Institucion
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.usuario.Persona

@TestFor(CurriculumVitae)
class CurriculumVitaeTests {

    void testConstraints() {
		CurriculumVitae cv = new CurriculumVitae()
		assertTrue cv.validate()
		assertFalse cv.hasErrors()
		assertNotNull cv.save()
    }
	
	void testAtributes() {
		CurriculumVitae cv = new CurriculumVitae(presentacion:"hola soy diego", textoLibre:"este es mi cv")
		assertTrue cv.validate()
		assertEquals "hola soy diego", cv.presentacion
		assertEquals "este es mi cv", cv.textoLibre
	}
	
//	void testPersonaCV() {
//		Persona persona = new Persona(nombre:"Diego", apellido:"Martin", dni:30303303, email:"meli@meli.com")
//		CurriculumVitae cv = new CurriculumVitae(presentacion:"hola soy diego", textoLibre:"este es mi cv")
//		persona.curriculum = cv
//		persona.save()
//		assertEquals 1, CurriculumVitae.list().size()
//		persona.delete()
//		assertEquals 0, CurriculumVitae.list().size()
//	}
	
	void testListasDelCV() {
		CurriculumVitae cv = new CurriculumVitae(presentacion:"hola soy diego", textoLibre:"este es mi cv")
		
		TipoTrabajo tipoTrabajo = new TipoTrabajo(nombre:"DESARROLLO", rubro:"SISTEMAS")
		Conocimiento conocimiento = new Conocimiento(nombre:"JAVA", tipo:tipoTrabajo)
		ConocimientoPersonal cp = new ConocimientoPersonal(conocimiento:conocimiento, nivel:NivelDeConocimientoEnum.SR)
		cv.addToConocimientos(cp)
		
		Institucion everis = new Institucion(nombre:"EVERIS", privada:false)
		Trabajo trabajo = new Trabajo(puesto:"PROGRAMADOR", funcion:"tirar lineas", institucion:everis, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		cv.addToExperienciasLaborales(trabajo)
		
		Institucion utn = new Institucion(nombre:"UTN", privada:false)
		Educacion educacion = new Educacion(titulo:"ING", promedio:new Double(25/10), institucion:utn, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		cv.addToEducacion(educacion)
		
		Institucion uade = new Institucion(nombre:"UADE", privada:true)
		Curso curso = new Curso(titulo:"DEV", institucion:uade, fechaInicio:new Date(), fechaFin:new Date(), textoLibre:"no aprendi nada")
		cv.addToCursos(curso)
		
		assertEquals 1, cv.conocimientos.size()
		assertEquals 1, cv.experienciasLaborales.size()
		assertEquals 1, cv.educacion.size()
		assertEquals 1, cv.cursos.size()
		
		cv.removeFromConocimientos(cp)
		cv.removeFromExperienciasLaborales(trabajo)
		cv.removeFromEducacion(educacion)
		cv.removeFromCursos(curso)
		
		assertEquals 0, cv.conocimientos.size()
		assertEquals 0, cv.experienciasLaborales.size()
		assertEquals 0, cv.educacion.size()
		assertEquals 0, cv.cursos.size()
		
	}
}