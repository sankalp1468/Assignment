<%@ page import="BookMetaData.BooksProfile" %>



<div class="fieldcontain ${hasErrors(bean: booksProfileInstance, field: 'bookDescription', 'error')} ">
	<label for="bookDescription">
		<g:message code="booksProfile.bookDescription.label" default="Book Description" />
		
	</label>
	<g:textArea name="bookDescription" cols="40" rows="5" maxlength="255" value="${booksProfileInstance?.bookDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: booksProfileInstance, field: 'bookName', 'error')} ">
	<label for="bookName">
		<g:message code="booksProfile.bookName.label" default="Book Name" />
		
	</label>
	<g:textField name="bookName" value="${booksProfileInstance?.bookName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: booksProfileInstance, field: 'bookId', 'error')} ">
	<label for="bookId">
		<g:message code="booksProfile.bookId.label" default="Book Id" />
		
	</label>
	<g:field name="bookId" type="number" value="${booksProfileInstance.bookId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: booksProfileInstance, field: 'dateAddedOn', 'error')} ">
	<label for="dateAddedOn">
		<g:message code="booksProfile.dateAddedOn.label" default="Date Added On" />
		
	</label>
	<g:datePicker name="dateAddedOn" precision="day"  value="${booksProfileInstance?.dateAddedOn}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: booksProfileInstance, field: 'userId', 'error')} ">
	<label for="userId">
		<g:message code="booksProfile.userId.label" default="User Id" />
		
	</label>
	<g:select id="userId" name="userId.id" from="${UserMetaData.Users.list()}" optionKey="id" value="${booksProfileInstance?.userId?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: booksProfileInstance, field: 'currentReadersCount', 'error')} required">
	<label for="currentReadersCount">
		<g:message code="booksProfile.currentReadersCount.label" default="Current Readers Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentReadersCount" type="number" value="${booksProfileInstance.currentReadersCount}" required=""/>
</div>

