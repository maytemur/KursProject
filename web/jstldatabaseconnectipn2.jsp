<html><body>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8"%>
<sql:setDataSource var="kaynak" dataSource="jdbc:odbc:Kurs,sun.jdbc.odbc.JdbcOdbcDriver"/>
<sql:query var="deejays" dataSource="${kaynak}">  SELECT * FROM Customer</sql:query>

<%-- Get the column names for the header of the table --%>
<c:forEach var="columnName" items="${deejays.columnNames}">  
<th><c:out value="${columnName}"/></th></c:forEach>

<%-- Get the value of each column while iterating over rows --%>
<c:forEach var="row" items="${deejays.rows}">  <tr> 
   <c:forEach var="column" items="${row}">    
       <td><c:out value="${column.value}"/></td>  
   </c:forEach>  </tr></c:forEach>
</body></html>