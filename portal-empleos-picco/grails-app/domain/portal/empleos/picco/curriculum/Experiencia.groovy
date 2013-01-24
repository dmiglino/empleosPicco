package portal.empleos.picco.curriculum

import java.util.List;

/**
 * Abarca ExperienciaLaboral, Cursos y Educacion
 * @author Diego Miglino
 */
abstract class Experiencia {

	String nombreInstitucion, textoLibre
	Date fechaInicio, fechaFin
	List proyectos
	
    static constraints = {
    }

}
