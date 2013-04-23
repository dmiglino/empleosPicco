package portal.empleos.picco.exception

import org.apache.commons.logging.LogFactory

abstract class PortalEmpleosException extends RuntimeException {

	boolean saveAlarm = false
	def internalCause
	def error
	def status
	def log = LogFactory.getLog(getClass())
	
	PortalEmpleosException(String message) {
		super(message)
		setDefaultValues()
		log.error(message, this)
	}

	Map getResponseMap() {
		["message":message, "error":error, "cause":internalCause, "status":status]
	}
	
	static String getNameForClass(String fullName) {
		int lastIndex = fullName?.lastIndexOf(".")
		int length = fullName?.size()
		fullName?.substring(lastIndex+1, length)
	}
	
	static String getNameForClass(def errors) {
		String fullName = errors?.target?.getClass()?.getName()
		getNameForClass(fullName)
	}
	
	abstract void setDefaultValues()
}