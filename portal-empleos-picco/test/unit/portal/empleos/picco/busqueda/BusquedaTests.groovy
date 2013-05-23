package portal.empleos.picco.busqueda

import grails.test.mixin.*

import org.junit.*

import portal.empleos.picco.enumerations.Conocimiento
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum
import portal.empleos.picco.enumerations.TipoTrabajo
import portal.empleos.picco.usuario.Empresa

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Busqueda)
class BusquedaTests {

    void testConstraints() {
		Busqueda busqueda = new Busqueda()
		assertFalse busqueda.validate()
		assertTrue busqueda.hasErrors()
		assertNull busqueda.save()
		assertEquals "nullable", busqueda.errors["titulo"].code
		assertEquals "nullable", busqueda.errors["zona"].code
		assertEquals "nullable", busqueda.errors["empresa"].code
    }
	
	void testAtributes() {
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java", textoLibre:"Hola..", empresa:empresa)
		
		assertTrue busqueda.validate()
		assertEquals "capital", busqueda.zona
		assertEquals "la busqueda de java", busqueda.titulo
		assertEquals 5000f, busqueda.sueldoOfrecido
		assertEquals "Hola..", busqueda.textoLibre
		assertEquals "MELI", busqueda.empresa.denominacion
		assertEquals "PYME", busqueda.empresa.razonSocial
		assertEquals "meli@meli.com", busqueda.empresa.email
		assertEquals "meliAlt@meli.com", busqueda.empresa.emailAlternativo
		assertEquals "Arias 123", busqueda.empresa.domicilio
	} 
	
	void testToString() {
		Empresa empresa = new Empresa(denominacion:"MELI", razonSocial: "PYME", email:"meli@meli.com", emailAlternativo:"meliAlt@meli.com", direccion:"Arias 123", telefono:123456, presentacion:"hola hola")
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java", empresa:empresa)
		assertEquals "la busqueda de java en capital de la empresa MELI (Razon Social: PYME)", busqueda.toString()
	}
	
	void testHasIdioma() {
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java")
		busqueda.addToIdiomasSolicitados(new IdiomaBusqueda(idioma:IdiomaEnum.CHINO_ESCRITO, nivel:NivelDeConocimientoEnum.BASICO))
		busqueda.addToIdiomasSolicitados(new IdiomaBusqueda(idioma:IdiomaEnum.CHINO_LECUTRA, nivel:NivelDeConocimientoEnum.INTERMEDIO))
		assertTrue busqueda.hasIdioma(IdiomaEnum.CHINO_ESCRITO)
		assertTrue busqueda.hasIdioma(IdiomaEnum.CHINO_LECUTRA)
		assertFalse busqueda.hasIdioma(IdiomaEnum.CHINO_ORAL)
	}
	
	void testHasConocimiento() {
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java")
		TipoTrabajo ttps = new TipoTrabajo(nombre:"PROGRAMADOR", rubro:"SISTEMAS")
		Conocimiento conoc1 = new Conocimiento(nombre:"JAVA", tipo:ttps)
		Conocimiento conoc2 = new Conocimiento(nombre:"COBOL", tipo:ttps)
		Conocimiento conoc3 = new Conocimiento(nombre:"ASSEMBLER", tipo:ttps)
		busqueda.addToConocimientosSolicitados(new ConocimientoBusqueda(conocimiento:conoc1, nivel:NivelDeConocimientoEnum.SR))
		busqueda.addToConocimientosSolicitados(new ConocimientoBusqueda(conocimiento:conoc2, nivel:NivelDeConocimientoEnum.SEMISR))
		assertTrue busqueda.hasConocimiento(conoc1)
		assertTrue busqueda.hasConocimiento(conoc2)
		assertFalse busqueda.hasConocimiento(conoc3)
	}
	
	void testCountPostulaciones() {
		Busqueda busqueda = new Busqueda(sueldoOfrecido:5000f, zona:"capital", titulo:"la busqueda de java")
		Postulacion postulacion1 = new Postulacion(remuneracionPretendida:5000f, textoPresentacionPostulante:"Hola..", busqueda:busqueda)
		Postulacion postulacion2 = new Postulacion(remuneracionPretendida:3000f, textoPresentacionPostulante:"Hola....", busqueda:busqueda)
		busqueda.addToPostulaciones(postulacion1)
		busqueda.addToPostulaciones(postulacion2)
		assertEquals 2, busqueda.countPostulaciones()
	}
	
}