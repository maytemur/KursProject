<html>
<body>
<%
    String isim=request.getParameter("isim");
    String soyad=request.getParameter("pazar");%>
                <h2><%=isim%></h2>
                <h2><%=soyad%></h2>
    <h2>gecersizdir ,tekrar giris yapiniz</h2>
    <a href="ProfilLoginForm.jsp">Tiklayiniz</a>
        </body>
    
</html>
