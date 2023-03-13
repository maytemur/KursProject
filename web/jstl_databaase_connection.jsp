<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
<head><title>Test SQL JSTL Tags</title></head>
<body>
  <sql:setDataSource var="ds"
                     dataSource="jdbc:odbc:Kurs,sun.jdbc.odbc.JdbcOdbcDriver"/>
  <sql:query dataSource="${ds}" 
             sql="Select * From Customer;" 
             var="result"/>
  <table border="1">
    <thead><tr>
    <c:forEach var="colTitle" items="${result.columnNames}">
      <th>${colTitle}</th>
    </c:forEach>
    </tr></thead>
    <tbody>
    <c:forEach var="row" items="${result.rowsByIndex}" varStatus="rStat">
      <tr>
      <c:forEach var="col" items="${row}" varStatus="cStat">
        <td>${col}</td>
      </c:forEach>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</body>
</html>

