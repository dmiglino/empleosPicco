<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<g:set var="entityPluralName" value="\${message(code: '${domainClass.propertyName}es.label', default: '${className}es')}" />
		<title><g:message code="default.search.label" args="[entityPluralName]" /></title>
	</head>
	<body>
		<a href="#search-${domainClass.propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="search-${domainClass.propertyName}" class="content scaffold-list" role="main">
			<h1><g:message code="default.search.text" args="[entityPluralName]" /></h1>
			<g:form action="results">
				<div class="dialog">
					<table>
						<tbody>
							<tr class="prop">
						<%  excludedProps = Event.allEvents.toList() << 'id' << 'version' << 'error' << 'jobId' << 'failures' << 'lastUpdated'
							allowedNames = domainClass.persistentProperties*.name << 'dateCreated'
							props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
							Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
							props.eachWithIndex { p, i ->
							if (i < 6) { 
								if( props.size() > 3 && (i==2 || i==4) ) { %>
									</tr>
									<tr class="prop">
								<% } %>
								<td valign="top" class="name">
									<label for="${p.name}" >\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}</label>
									<g:textField name="${p.name}" />
								</td>
							<% } } %>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="buttons">
					<span class="button"><input class="search" name="search" type="submit" value="Search" /></span>
				</div>
			</g:form> 
		</div>
	</body>
</html>