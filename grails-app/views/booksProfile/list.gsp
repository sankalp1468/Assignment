
<%@ page import="BookMetaData.BooksProfile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'booksProfile.label', default: 'BooksProfile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-booksProfile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-booksProfile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="bookDescription" title="${message(code: 'booksProfile.bookDescription.label', default: 'Book Description')}" />
					
						<g:sortableColumn property="bookName" title="${message(code: 'booksProfile.bookName.label', default: 'Book Name')}" />
					
						<g:sortableColumn property="bookId" title="${message(code: 'booksProfile.bookId.label', default: 'Book Id')}" />
					
						<g:sortableColumn property="dateAddedOn" title="${message(code: 'booksProfile.dateAddedOn.label', default: 'Date Added On')}" />
					
						<th><g:message code="booksProfile.userId.label" default="User Id" /></th>
					
						<g:sortableColumn property="currentReadersCount" title="${message(code: 'booksProfile.currentReadersCount.label', default: 'Current Readers Count')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${booksProfileInstanceList}" status="i" var="booksProfileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${booksProfileInstance.id}">${fieldValue(bean: booksProfileInstance, field: "bookDescription")}</g:link></td>
					
						<td>${fieldValue(bean: booksProfileInstance, field: "bookName")}</td>
					
						<td>${fieldValue(bean: booksProfileInstance, field: "bookId")}</td>
					
						<td><g:formatDate date="${booksProfileInstance.dateAddedOn}" /></td>
					
						<td>${fieldValue(bean: booksProfileInstance, field: "userId")}</td>
					
						<td>${fieldValue(bean: booksProfileInstance, field: "currentReadersCount")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${booksProfileInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
