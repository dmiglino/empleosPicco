package portal.empleos.picco.curriculum

import grails.test.mixin.TestFor
import portal.empleos.picco.enumerations.IdiomaEnum
import portal.empleos.picco.enumerations.NivelDeConocimientoEnum

@TestFor(IdiomaPersonal)
class IdiomaPersonalTests {

	void testConstraints() {
		IdiomaPersonal ib = new IdiomaPersonal()
		assertFalse ib.validate()
		assertTrue ib.hasErrors()
		assertNull ib.save()
		assertEquals "nullable", ib.errors["idioma"].code
		assertEquals "nullable", ib.errors["nivel"].code
	}

	void testAtributes() {
		IdiomaPersonal ip = new IdiomaPersonal(idioma:IdiomaEnum.CHINO_ORAL, nivel:NivelDeConocimientoEnum.INTERMEDIO, tiempoExperiencia:"2 años")
		assertTrue ip.validate()
		assertEquals "2 años", ip.tiempoExperiencia
		assertEquals IdiomaEnum.CHINO_ORAL, ip.idioma
		assertEquals NivelDeConocimientoEnum.INTERMEDIO, ip.nivel
	}

	void testToString() {
		IdiomaPersonal ip = new IdiomaPersonal(idioma:IdiomaEnum.CHINO_ORAL, nivel:NivelDeConocimientoEnum.INTERMEDIO, tiempoExperiencia:"2 años")
		assertEquals "CHINO_ORAL con nivel INTERMEDIO", ip.toString()
	}

	void testIsConocimiento() {
		IdiomaPersonal ip = new IdiomaPersonal(idioma:IdiomaEnum.CHINO_ORAL, nivel:NivelDeConocimientoEnum.INTERMEDIO, tiempoExperiencia:"2 años")
		assertTrue ip.isIdioma(IdiomaEnum.CHINO_ORAL)
		assertFalse ip.isIdioma(IdiomaEnum.INGLES_ESCRITO)
	}
}
