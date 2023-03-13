<jsp:useBean id="GirisBean" class="com.dt.GirisBean" scope="session"/>
<jsp:setProperty name="GirisBean" property="*" />
<html>
<head><title>Bean Giris</title></head>
<body>
Hosgeldiniz <jsp:getProperty name="GirisBean"  property="kullanici" />
<br>Sifreniz:<jsp:getProperty name="GirisBean" property="sifre"/>

</body>
</html>
