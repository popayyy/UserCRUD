<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}"/>
    <title><g:message code="default.find.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>
<g:render template="/general/navigation"/>

<div id="create-role" class="content scaffold-create" role="main">
    <h1><g:message code="default.find.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${roleInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${roleInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: roleInstance, action: 'findRole']">
        <fieldset class="form">
            <g:render template="formFind"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="find" class="find"
                            value="${message(code: 'default.button.find.label', default: 'Find')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
