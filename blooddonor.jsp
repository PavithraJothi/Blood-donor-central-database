<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signup</title>
</head>
<body>
<%
Connection conn = null;
PreparedStatement ps = null;
Class.forName("com.mysql.jdbc.Driver");
String URL = "jdbc:mysql://localhost:3306/donordetails";
try
{
conn = DriverManager.getConnection(URL, "root", "mysql");
ps = conn.prepareStatement("insert into dsp values (?,?,?,?,?,?,?,?,?,?,?)");
String sfname = request.getParameter("fname");
String slname = request.getParameter("lname");
String sgender = request.getParameter("gender");
String saddress = request.getParameter("address");
String scity = request.getParameter("city");
String sstate = request.getParameter("state");
String sphoneno = request.getParameter("phoneno");
String sbloodgroup = request.getParameter("bloodgroup");
String semail = request.getParameter("email");
String susername = request.getParameter("username");
String spassword = request.getParameter("password");
ps.setString(1, sfname);
ps.setString(2, slname);
ps.setString(3, sgender);
ps.setString(4, saddress);
ps.setString(5, scity);
ps.setString(6, sstate);
ps.setString(7, sphoneno);
ps.setString(8, sbloodgroup);
ps.setString(9, semail);
ps.setString(10, susername);
ps.setString(11, spassword);
ps.executeUpdate();
out.println("<center><h3>REGISTRATION SUCCESSFUL!!</h3><a href='blooddonorlogin.html'>GO BACK</b></a></center>");
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