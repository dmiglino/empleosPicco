package portal.empleos.picco.curriculum

class Trabajo extends ExperienciaPersonal {

	String puesto, funcion
	
    static constraints = {
		funcion blank:true
    }
}
