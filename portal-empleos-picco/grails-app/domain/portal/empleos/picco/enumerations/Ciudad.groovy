package portal.empleos.picco.enumerations

class Ciudad {
	
	String ciudad, provincia, pais
	
    static constraints = {
		ciudad nullable:false
		provincia nullable:false
		pais nullable:false
    }
	
	@Override
	String toString() {
		"${ciudad} - (${provincia} / ${pais})"
	}

}