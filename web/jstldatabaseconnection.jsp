<html>
<head><title></title></head>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8"%>
<sql:setDataSource var="kaynak" dataSource="jdbc:odbc:Kurs,sun.jdbc.odbc.JdbcOdbcDriver"/>
<sql:query var="al" dataSource="${kaynak}">select * from Customer</sql:query>

<c:forEach var="row" items="${al.rows}">
<li>ID: <c:out value="${row.CustomerId}"/>    
Age: <c:out value="${row.Age}"/>
Name : <c:out value="${row.Name}"/>
</li><br>
</c:forEach>
</body>
</html>

