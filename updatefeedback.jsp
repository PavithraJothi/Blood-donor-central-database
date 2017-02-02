<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>donor feedback</title>
</head>
<body background-color="pink">
<%
Connection conn = null;
PreparedStatement ps = null;
Class.forName("com.mysql.jdbc.Driver");
String URL = "jdbc:mysql://localhost:3306/donordetails";
try
{
conn = DriverManager.getConnection(URL, "root", "mysql");
ps = conn.prepareStatement("update feedback set dateofblooddonation=?, healthreport=? where phoneno=?");
String sdateofblooddonation = request.getParameter("dateofblooddonation");
String shealthreport = request.getParameter("healthreport");
String sphoneno=request.getParameter("phoneno");

ps.setString(1, sdateofblooddonation);
ps.setString(2, shealthreport);
ps.setString(3, sphoneno);

ps.executeUpdate();
out.println("<center><h3>FEEDBACK SUBMITTED</h3><a href='donorlist.html'>GO BACK</b></a></center>");
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