<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signup</title>
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
ps = conn.prepareStatement("insert into nonmember1 values (?,?,?,?,?,?,?)");
String sname = request.getParameter("name");
String saddress = request.getParameter("address");
String scity = request.getParameter("city");
String sstate = request.getParameter("state");
String sphoneno = request.getParameter("phoneno");
String susername = request.getParameter("username");
String spassword = request.getParameter("password");
ps.setString(1, sname);
ps.setString(2, saddress);
ps.setString(3, scity);
ps.setString(4, sstate);
ps.setString(5, sphoneno);
ps.setString(6, susername);
ps.setString(7, spassword);
ps.executeUpdate();
out.println("<center><h3>SUCCESSFULLY REGISTERED!!!</h3><a href='nonmemberslogin.html'><b>GO BACK</b></a></center>");

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