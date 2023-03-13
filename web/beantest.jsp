<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<html>
<head><title>JavaBean Test</title></head>
<body>
            <h1><jsp:getProperty name="mesajBean"
            property="mesaj"/></h1>
            <jsp:setProperty name="mesajBean" property="mesaj"value="Mesaj Test Yaptım"/>
            <h1><jsp:getProperty name="mesajBean" property="mesaj"/></h1>
            
<%-- <jsp:useBean id="beanInstanceName" scope="session" class="beanPackage.BeanClassName" /> --%>
<%-- <jsp:getProperty name="beanInstanceName"  property="propertyName" /> --%>

</body>
</html>
