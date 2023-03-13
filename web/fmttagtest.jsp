<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page pageEncoding="UTF-8"%>
<jsp:useBean id="now" class="java.util.Date"/>
<html>
<head><title>JSP Page</title></head>
<body>
<h1><fmt:setLocale value="TR"/></h1>
date: <fmt:formatDate value="${now}"/>
<fmt:formatDate value="${now}" type="date" dateStyle="short"/>
</body>
</html>
