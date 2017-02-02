<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>donor request</title>
</head>
<body bgcolor="pink">
<%
Connection conn = null;
PreparedStatement ps = null;
Class.forName("com.mysql.jdbc.Driver");
String URL = "jdbc:mysql://localhost:3306/donordetails";
try
{
conn = DriverManager.getConnection(URL, "root", "mysql");
ps = conn.prepareStatement("insert into otherblooddonor1 values (?,?,?,?)");
String sphoneno = request.getParameter("phoneno");
String sreasonforrequest = request.getParameter("reasonforrequest");
String sbloodgroupreq=request.getParameter("bloodgroupreq");
String slocsearch=request.getParameter("locsearch");

ps.setString(1, sphoneno);
ps.setString(2, sreasonforrequest);
ps.setString(3, sbloodgroupreq);
ps.setString(4, slocsearch);

ps.executeUpdate();
out.println("<center><h3>REQUEST SUBMITTED</h3><a href='nonmembersearch.html'>GO BACK</b></a></center>");
ps.close();
conn.close();
}
catch(Exception e)
{
out.println(e);
}
%>
</body>
</html>