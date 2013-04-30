package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Conocimiento. <br>
 * JAVA_PROGRAMADOR_SISTEMAS, SPRING_PROGRAMADOR_SISTEMAS, HIBERNATE_PROGRAMADOR_SISTEMAS, etc.
 * @author Diego Miglino
 */
class Conocimiento extends PortalEmpleosEntity {

	String nombre
	TipoTrabajo tipo
	
    static constraints = {
		nombre blank: false
		tipo nullable: false
    }
	
	@Override
	String toString() {
		"${nombre} (${tipo.nombre} - ${tipo.rubro})";
	}
	
	Boolean isTipo(String nombreTipo, String rubroTipo) {
		tipo.equals(new TipoTrabajo(nombre:nombreTipo, rubro:rubroTipo))
	}
	
	Boolean isTipo(TipoTrabajo tipo) {
		isTipo(tipo.nombre, tipo.rubro)
	}
	
	@Override
	boolean equals(Object obj) {
		if (!(obj instanceof Conocimiento)) {
			return false
		}
		Conocimiento otroConocimiento = (Conocimiento) obj
		return this.nombre.equals(otroConocimiento.nombre) && this.isTipo(otroConocimiento.tipo)
	}
	
	@Override
	public int hashCode() {
		return (this.nombre && this.tipo) ? this.nombre.hashCode() + this.tipo.hashCode() : super.hashCode();
	}
	
}