<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Records</title>
</head>
<body>
<sql:setDataSource
		var="myUsers"
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/webApplication1"
		user="root"
	/>

	<sql:query var="listUser" dataSource="${myUsers}">
	SELECT * FROM users;
	</sql:query>

	<div align="center">
		<table border="1" cellpadding="3">
			<caption><h2> List of Users</h2></caption>
			<tr>
				<th>Name</th>
				<th>State</th>
				<th>Age</th>
				<th>Favorite Color</th>
			</tr>
			<c:forEach var="user" items="${listUser.rows}">
			<tr>

				<td align="center"><c:out value="${user.Name}" /></td>
				<td align="center"><c:out value="${user.State}" /></td>
				<td align="center"><c:out value="${user.Age}" /></td>
				<td align="center"><c:out value="${user.Favorite_Color}" /></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>