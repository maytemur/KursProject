<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8"%>
<c:set var="str" value="Cumle iceriginde kelime olup olmadigini bulan fonksiyon"/>
boy : ${fn:length(str)}<br>
Cumle  icerigini bulan fonksiyon ? : ${fn:contains(str,"Java")}
<html>
<head><title>JSP Page</title></head>
<body>
</body>
</html>
