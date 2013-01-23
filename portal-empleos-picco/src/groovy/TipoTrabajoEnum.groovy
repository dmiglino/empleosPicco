package groovy

/**
 * Enum de Tipos de Trabajos. <br>
 * PROGRAMADOR_SISTEMAS, ANALISTA_SISTEMAS, TESTER_SISTEMAS, etc.
 * @author Diego Miglino
 */
enum TipoTrabajoEnum {
	
	PROGRAMADOR_SISTEMAS("PROGRAMADOR","SISTEMAS"), ANALISTA_SISTEMAS("ANALISTA","SISTEMAS"), TESTER_SISTEMAS("TESTER","SISTEMAS"), ARQUITECTO_SISTEMAS("ARQUITECTO","SISTEMAS"), 
	
	private String nombre
	private String rubro
	
	TipoTrabajoEnum(String nombre, String rubro) {
		this.nombre = nombre
		this.rubro = rubro
	}
}
