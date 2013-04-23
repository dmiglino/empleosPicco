package portal.empleos.picco.utils

import java.util.List;

import portal.empleos.picco.exception.InvalidEntityException;

/**
 * Metodos utiles para persistencia
 * @author Diego Miglino
 *
 */
class DBUtils {

	/**
	 * Valida la entidad antes de persistirla.
	 * @param flushValue
	 */
	static void validateAndSave(def entity, boolean flushValue) {
		if(entity.validate())
			entity.save(flush:flushValue)
		else
			throw new InvalidEntityException(entity.errors)
	}
	
	static void validateAndSave(def entity) {
		validateAndSave(entity, true)
	}
	
	static void validateAndSave(List entities) {
		validateAndSave(entities, true)
	}
	
	static void validateAndSave(List entities, boolean flushValue) {
		entities.each {
			validateAndSave(it, flushValue)
		}
	}

}
