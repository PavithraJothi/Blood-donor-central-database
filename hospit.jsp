<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
String URL="jdbc:mysql://localhost:3306/donordetails";
try
{ 
	con=DriverManager.getConnection(URL,"root","mysql");
	ps=con.prepareStatement("select * from hospital where username=? and password=?");
	String  susername=request.getParameter("username");
	String  spassword=request.getParameter("password");
	ps.setString(1,susername);
	ps.setString(2,spassword);
	rs=ps.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("search.html");
		
	}
	else
	{
		 out.println("<b>INVALID LOGIN <br/><a href='hospitallogin.html'>TRY AGAIN</b></a>");
	}
	ps.close();
	con.close();
}	
catch(Exception e)
{
	out.println(e);
}	
%>
</body>
</html>