<%@ page import="UserMetaData.Users" %>



<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'apiAccessToken', 'error')} ">
	<label for="apiAccessToken">
		<g:message code="users.apiAccessToken.label" default="Api Access Token" />
		
	</label>
	<g:textArea name="apiAccessToken" cols="40" rows="5" maxlength="255" value="${usersInstance?.apiAccessToken}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="users.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${usersInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="users.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${usersInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="users.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${usersInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'createdOn', 'error')} ">
	<label for="createdOn">
		<g:message code="users.createdOn.label" default="Created On" />
		
	</label>
	<g:datePicker name="createdOn" precision="day"  value="${usersInstance?.createdOn}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'userLogs', 'error')} ">
	<label for="userLogs">
		<g:message code="users.userLogs.label" default="User Logs" />
		
	</label>
	<g:textField name="userLogs" value="${usersInstance?.userLogs}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usersInstance, field: 'userPref', 'error')} ">
	<label for="userPref">
		<g:message code="users.userPref.label" default="User Pref" />
		
	</label>
	<g:textField name="userPref" value="${usersInstance?.userPref}"/>
</div>

