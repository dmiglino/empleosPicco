package portal.empleos.picco

abstract class PortalEmpleosEntity {

	String jobId = ""
	Date dateCreated
	Date lastUpdated
	Long failures = 0
	String error = ""
	
	static constraints = {
		jobId nullable:false
		error nullable:false
	}
}
