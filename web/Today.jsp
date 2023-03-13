<%! String name; %>
<%
name = request.getParameter("name");
java.util.Date today = new java.util.Date();
out.println("Got: "+name);
out.println("Date&time: "+today);
%>