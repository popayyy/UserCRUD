<%@ page import="crud.UserRole" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-userRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<g:render template="/general/navigation"/>

<div id="list-userRole" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <th><g:message code="userRole.role.label" default="Role"/></th>

            <th><g:message code="userRole.user.label" default="User"/></th>

            <th></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${userRoleInstanceList}" status="i" var="userRoleInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>${fieldValue(bean: userRoleInstance, field: "user.name")}</td>

                <td>${fieldValue(bean: userRoleInstance, field: "role.name")}</td>

                <td><g:link action="show"
                            id="${userRoleInstance.id}">Edit</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${userRoleInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
