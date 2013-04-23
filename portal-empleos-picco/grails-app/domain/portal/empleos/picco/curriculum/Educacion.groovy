package portal.empleos.picco.curriculum

/**
 * Representa las instituciones donde estudio el usuario
 * @author Diego Miglino
 */
class Educacion extends ExperienciaPersonal {
	
	String titulo, promedio

    static constraints = {
		promedio blank:true
    }
}
