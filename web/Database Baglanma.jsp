<%@page import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<html><head><title>JSP Page</title></head>
<body><%
    try{
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    String url="jdbc:odbc:Kurs";
    Connection con=DriverManager.getConnection(url);
                Statement stmt=con.createStatement();
                ResultSet rs=stmt.executeQuery("select * from Customer");
        %><table border="2"><tr><td>ID</td><td>NAME</td><td>YAS</td></tr><%         
while(rs.next()){
        int id=rs.getInt("CustomerId");        
        int age=rs.getInt("Age");
        String name=rs.getString("Name");
        %>        
<tr><td><%=id%></td><td><%=name%></td><td><%=age%></td></tr><%
      }
    %></table><%
 }catch(Exception e){
    e.printStackTrace();
    }%>
</body></html>
