<% import grails.persistence.Event %>
<%=packageName%>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<g:set var="entityName" value="${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<g:set var="entityPluralName" value="${message(code: '${domainClass.propertyName}es.label', default: '${className}es')}" />
		<title><g:message code="default.results.label" args="[entityPluralName]" /></title>
	</head>
	<body>		
		<a href="#results-${domainClass.propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="search" action="search"><g:message code="default.search.again.label" /></g:link></li>
			</ul>
		</div>
		<div id="results-${domainClass.propertyName}" class="content scaffold-list" role="main">
		
			<g:set var="total" value="${portal.empleos.picco.enumerations.Ciudad.count()}" />
			<g:set var="encontradas" value="${ciudades.size()}" />
		
			<h1><g:message code="default.results.label" args="[total,encontradas,entityPluralName]" /></h1>
			<table>
				<thead>
					<tr>
						<%  excludedProps = Event.allEvents.toList() << 'id' << 'version' << 'error' << 'jobId'
							allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
							props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
							Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
							props.eachWithIndex { p, i ->
								if (i < 6) {
									if (p.isAssociation()) { %>
										<th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></th>
						<%     		} else { %>
										<g:sortableColumn property="${p.name}" title="\${message(code: '${domainClass.propertyName}.${p.name}.label', default: '${p.naturalName}')}" />
						<%  }   }   } %>
					</tr>
				</thead>
				<tbody>
					<g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
					<tr class="\${(i % 2) == 0 ? 'even' : 'odd'}">
						<%  props.eachWithIndex { p, i ->
								if (i == 0) { %>
							<td><g:link action="edit" id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
						<%      } else if (i < 6) {
									if (p.type == Boolean || p.type == boolean) { %>
							<td><g:formatBoolean boolean="\${${propertyName}.${p.name}}" /></td>
						<%          } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
							<td><g:formatDate date="\${${propertyName}.${p.name}}" /></td>
						<%          } else { %>
							<td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
						<%  }   }   } %>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${total}" />
			</div>
		</div>
	</body>
</html>