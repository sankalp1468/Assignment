
<%@ page import="UserMetaData.Users" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'users.label', default: 'Users')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-users" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-users" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list users">
			
				<g:if test="${usersInstance?.apiAccessToken}">
				<li class="fieldcontain">
					<span id="apiAccessToken-label" class="property-label"><g:message code="users.apiAccessToken.label" default="Api Access Token" /></span>
					
						<span class="property-value" aria-labelledby="apiAccessToken-label"><g:fieldValue bean="${usersInstance}" field="apiAccessToken"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usersInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="users.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${usersInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usersInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="users.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usersInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usersInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="users.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usersInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usersInstance?.createdOn}">
				<li class="fieldcontain">
					<span id="createdOn-label" class="property-label"><g:message code="users.createdOn.label" default="Created On" /></span>
					
						<span class="property-value" aria-labelledby="createdOn-label"><g:formatDate date="${usersInstance?.createdOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usersInstance?.userLogs}">
				<li class="fieldcontain">
					<span id="userLogs-label" class="property-label"><g:message code="users.userLogs.label" default="User Logs" /></span>
					
						<span class="property-value" aria-labelledby="userLogs-label"><g:fieldValue bean="${usersInstance}" field="userLogs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usersInstance?.userPref}">
				<li class="fieldcontain">
					<span id="userPref-label" class="property-label"><g:message code="users.userPref.label" default="User Pref" /></span>
					
						<span class="property-value" aria-labelledby="userPref-label"><g:fieldValue bean="${usersInstance}" field="userPref"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usersInstance?.id}" />
					<g:link class="edit" action="edit" id="${usersInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
