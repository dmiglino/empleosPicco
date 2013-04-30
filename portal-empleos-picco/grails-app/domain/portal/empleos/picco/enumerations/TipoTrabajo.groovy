package portal.empleos.picco.enumerations

import portal.empleos.picco.PortalEmpleosEntity

/**
 * Enum de Tipos de Trabajos. <br>
 * PROGRAMADOR_SISTEMAS, ANALISTA_SISTEMAS, TESTER_SISTEMAS, etc.
 * @author Diego Miglino
 */
class TipoTrabajo extends PortalEmpleosEntity {
	
	String nombre
	String rubro
	
    static constraints = {
		nombre blank: false
		rubro blank: false
    }
	
	@Override
	String toString() {
		"${nombre} (rubro: ${rubro})"
	}
	
	@Override
	boolean equals(Object obj) {
		if (!(obj instanceof TipoTrabajo)) {
			return false
		}
		TipoTrabajo otroTipo = (TipoTrabajo) obj
		return this.nombre.equals(otroTipo.nombre) && this.rubro.equals(otroTipo.rubro)
	}
	
	@Override
	public int hashCode() {
		return (this.nombre && this.rubro) ? this.nombre.hashCode() + this.rubro.hashCode() : super.hashCode();
	}
}
