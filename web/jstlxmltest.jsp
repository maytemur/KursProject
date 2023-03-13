<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page pageEncoding="UTF-8"%>
<c:import url="http://localhost:8084/WEB/student.xml" var="xml"/>
<x:parse xml="${xml}" var="doc"/>
<x:out select="$doc/class/@name"/><br>
<x:out select="$doc/class/student[1]/name/text()"/>
<x:out select="$doc/class/student[1]/surname/text()"/>
<x:out select="$doc/class/student[1]/@telefonno"/><br>
<x:out select="$doc/class/student[2]/name/text()"/>
<x:out select="$doc/class/student[2]/surname/text()"/>
<x:out select="$doc/class/student[2]/@telefonno"/>
<html>
<head><title>JSP Page</title></head>
<body>

</body>
</html>
