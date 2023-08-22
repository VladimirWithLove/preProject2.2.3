<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <title>Users List</title>
    <link rel="stylesheet" type="text/css" th:href="@{/css/style.css}"/>
</head>
<body>
<h1>Users List</h1>
<div>
    <table border="1" cellpadding="5">
        <tr>
            <td>ID</td>
            <th>Name</th>
            <th>Surname</th>
            <th>age</th>
            <th>Profession</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${allUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.surname}</td>
                <td>${user.age}</td>
                <td>${user.profession}</td>
                <td>
                    <a href="/users/update?id=${user.id}">Update</a>
                    &nbsp;&nbsp;&nbsp;
                    <a href="/users/delete?id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h3><a href="/users/create">New user</a></h3>
</div>
</body>
</html>