package portal.empleos.picco.busqueda

import grails.test.mixin.TestFor
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum

@TestFor(IdiomaBusqueda)
class IdiomaBusquedaTests {

	void testConstraints() {
		IdiomaBusqueda ib = new IdiomaBusqueda()
		assertFalse ib.validate()
		assertTrue ib.hasErrors()
		assertNull ib.save()
		assertEquals "nullable", ib.errors["idioma"].code
		assertEquals "nullable", ib.errors["nivel"].code
	}

	void testAtributes() {
		IdiomaBusqueda ib = new IdiomaBusqueda(idioma:IdiomaEnum.CHINO_ORAL, nivel:NivelDeConocimientoEnum.INTERMEDIO, tiempoExperiencia:"2 años")
		assertTrue ib.validate()
		assertEquals "2 años", ib.tiempoExperiencia
		assertEquals IdiomaEnum.CHINO_ORAL, ib.idioma
		assertEquals NivelDeConocimientoEnum.INTERMEDIO, ib.nivel
	}

	void testToString() {
		IdiomaBusqueda ib = new IdiomaBusqueda(idioma:IdiomaEnum.CHINO_ORAL, nivel:NivelDeConocimientoEnum.INTERMEDIO, tiempoExperiencia:"2 años")
		assertEquals "CHINO_ORAL con nivel INTERMEDIO", ib.toString()
	}

	void testIsConocimiento() {
		IdiomaBusqueda ib = new IdiomaBusqueda(idioma:IdiomaEnum.CHINO_ORAL, nivel:NivelDeConocimientoEnum.INTERMEDIO, tiempoExperiencia:"2 años")
		assertTrue ib.isIdioma(IdiomaEnum.CHINO_ORAL)
		assertFalse ib.isIdioma(IdiomaEnum.INGLES_ESCRITO)
	}
}