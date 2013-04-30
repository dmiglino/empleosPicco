package portal.empleos.picco.curriculum

class Trabajo extends ExperienciaPersonal {

	String puesto, funcion
	
	static hasMany = [ proyectos : Proyecto ]
	
    static constraints = {
		puesto nullable:false
		funcion blank:true
    }
	
	@Override
	String toString() {
		"${puesto} en ${institucion}";
	}
}
