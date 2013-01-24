package portal.empleos.picco.enumerations

enum ConocimientoEnum {
	
	JAVA_PROGRAMADOR_SISTEMAS("JAVA",TipoTrabajoEnum.PROGRAMADOR_SISTEMAS),
	SPRING_PROGRAMADOR_SISTEMAS("SPRING",TipoTrabajoEnum.PROGRAMADOR_SISTEMAS),
	HIBERNATE_PROGRAMADOR_SISTEMAS("HIBERNATE",TipoTrabajoEnum.PROGRAMADOR_SISTEMAS),
	
	private String nombre
	private TipoTrabajoEnum tipo
	
	ConocimientoEnum(String nombre, TipoTrabajoEnum tipo) {
		this.nombre = nombre
		this.tipo = tipo
	}
}
