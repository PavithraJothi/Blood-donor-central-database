<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("welcome.html");
%>