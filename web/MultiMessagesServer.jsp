<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>    <body>
        <h1>JSP Page</h1>    
        <%!
            static String lastMessage="";
        %>
        <%
            String message=request.getParameter("message");
            String req=request.getParameter("req");
            String nick=request.getParameter("nick");
            if(req.equals("GET")){
        %><%=lastMessage%><%
            }else{
                lastMessage=nick+">"+message;
        %>OK<%
            }
        %>    
    </body>
</html>