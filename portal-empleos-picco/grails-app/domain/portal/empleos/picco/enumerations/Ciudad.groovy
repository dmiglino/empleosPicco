package portal.empleos.picco.enumerations

class Ciudad {
	
	String ciudad, provincia, pais
	
    static constraints = {
		provincia nullable:false
		ciudad nullable:false
		pais nullable:false
    }
	
	@Override
	String toString() {
		"${ciudad} - (${provincia} / ${pais})"
	}

}