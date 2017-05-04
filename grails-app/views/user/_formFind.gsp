<%@ page import="crud.User" %>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')}">
    <label for="name">
        <g:message code="user.name.label" default="Name"/>
    </label>
    <g:textField name="name" value="${userInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'login', 'error')}">
    <label for="login">
        <g:message code="user.login.label" default="Login"/>
    </label>
    <g:textField name="login" value="${userInstance?.login}"/>
</div>