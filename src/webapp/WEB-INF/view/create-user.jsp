<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New user</title>
</head>
<body>
<div>
    <h2>New user</h2>
    <form:form action="save" method="post" modelAttribute="user">
        <table border="0" cellpadding="5">
            <tr>
                <td>Name: </td>
                <td><form:input path="name"/></td>
                <td><form:errors path="name"/></td>
            </tr>
            <tr>
                <td>Surname: </td>
                <td><form:input path="surname"/></td>
                <td><form:errors path="surname"/></td>
            </tr>
            <tr>
                <td>Age: </td>
                <td><form:input path="age"/></td>
                <td><form:errors path="age"/></td>
            </tr>
            <tr>
                <td>Profession: </td>
                <td><form:input path="profession"/></td >
                <td><form:errors path="profession"/></td >
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Add">
                    <input type="button" value="Cancel"
                           onclick="window.location.href= '/users'">
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
