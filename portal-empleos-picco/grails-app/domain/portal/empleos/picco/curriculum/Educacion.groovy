package portal.empleos.picco.curriculum

import portal.empleos.picco.enumerations.Institucion

/**
 * Representa las instituciones donde estudio el usuario
 * @author Diego Miglino
 */
class Educacion extends ExperienciaPersonal {
	
	String titulo
	Double promedio
	
    static constraints = {
		titulo blank : false
		promedio nullable : true
    }
	
	@Override
	String toString() {
		"${titulo} en ${institucion}";
	}
	
	Boolean hasPromedioMayorA(Double prom) {
		promedio > prom
	}
}