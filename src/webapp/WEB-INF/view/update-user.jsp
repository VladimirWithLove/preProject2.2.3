<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update user</title>
</head>
<body>
<div>
    <h2>Update user</h2>
    <form:form action="updateUser" method="post" modelAttribute="user">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID: </td>
                <td>
                    ${user.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><form:input path="name"/></td >
                <td><form:errors path="name"/></td >
            </tr>
            <tr>
                <td>Surname: </td>
                <td><form:input path="surname"/></td >
                <td><form:errors path="surname"/></td >
            </tr>
            <tr>
                <td>Age: </td>
                <td><form:input path="age"/></td >
                <td><form:errors path="age"/></td >
            </tr>
            <tr>
                <td>Profession: </td>
                <td><form:input path="profession"/></td >
                <td><form:errors path="profession"/></td >
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Accept update">
                    <input type="button" value="Cancel update"
                           onclick="window.location.href= '/users'">
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
