@artifact.package@class @artifact.name@ {
    static scaffold = true
	
	def search = {
	}
	
	def results(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[${propertyName}List: ${className}.list(params), ${propertyName}Total: ${className}.count()]
	}
}
