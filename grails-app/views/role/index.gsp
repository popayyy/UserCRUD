<%@ page import="crud.Role" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-role" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>
<g:render template="/general/navigation"/>
<div id="list-role" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'role.name.label', default: 'Name')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'role.description.label', default: 'Description')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${roleInstanceList}" status="i" var="roleInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "name")}</g:link></td>

                <td>${fieldValue(bean: roleInstance, field: "description")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${roleInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
