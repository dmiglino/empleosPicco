package portal.empleos.picco.curriculum

/**
 * Representa los cursos que posee el usuario
 * @author Diego Miglino
 */
class Curso extends ExperienciaPersonal {

	String titulo
	
    static constraints = {
		titulo blank:false
    }
	
	@Override
	String toString() {
		"${titulo} en ${institucion}";
	}
}
