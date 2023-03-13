<%@page import="com.dt.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
<head><title>JSP Page</title></head>
<body>
<% 
    int no=Integer.parseInt(request.getParameter("no"));
    String isim=request.getParameter("isim");
    int yas=Integer.parseInt(request.getParameter("yas"));
    UserManager m=new UserManager();
    m.ekle(no,isim,yas);
%><h1>Eklenme islemi yapildi</h1>
</body>
</html>
