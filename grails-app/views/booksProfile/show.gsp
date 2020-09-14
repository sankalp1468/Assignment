
<%@ page import="BookMetaData.BooksProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'booksProfile.label', default: 'BooksProfile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-booksProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-booksProfile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list booksProfile">
			
				<g:if test="${booksProfileInstance?.bookDescription}">
				<li class="fieldcontain">
					<span id="bookDescription-label" class="property-label"><g:message code="booksProfile.bookDescription.label" default="Book Description" /></span>
					
						<span class="property-value" aria-labelledby="bookDescription-label"><g:fieldValue bean="${booksProfileInstance}" field="bookDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksProfileInstance?.bookName}">
				<li class="fieldcontain">
					<span id="bookName-label" class="property-label"><g:message code="booksProfile.bookName.label" default="Book Name" /></span>
					
						<span class="property-value" aria-labelledby="bookName-label"><g:fieldValue bean="${booksProfileInstance}" field="bookName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksProfileInstance?.bookId}">
				<li class="fieldcontain">
					<span id="bookId-label" class="property-label"><g:message code="booksProfile.bookId.label" default="Book Id" /></span>
					
						<span class="property-value" aria-labelledby="bookId-label"><g:fieldValue bean="${booksProfileInstance}" field="bookId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksProfileInstance?.dateAddedOn}">
				<li class="fieldcontain">
					<span id="dateAddedOn-label" class="property-label"><g:message code="booksProfile.dateAddedOn.label" default="Date Added On" /></span>
					
						<span class="property-value" aria-labelledby="dateAddedOn-label"><g:formatDate date="${booksProfileInstance?.dateAddedOn}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksProfileInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="booksProfile.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:link controller="users" action="show" id="${booksProfileInstance?.userId?.id}">${booksProfileInstance?.userId?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${booksProfileInstance?.currentReadersCount}">
				<li class="fieldcontain">
					<span id="currentReadersCount-label" class="property-label"><g:message code="booksProfile.currentReadersCount.label" default="Current Readers Count" /></span>
					
						<span class="property-value" aria-labelledby="currentReadersCount-label"><g:fieldValue bean="${booksProfileInstance}" field="currentReadersCount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${booksProfileInstance?.id}" />
					<g:link class="edit" action="edit" id="${booksProfileInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
