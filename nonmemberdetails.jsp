<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
<style>
table {
    width: 100%;
    margin-left: auto;
    margin-right: auto;
}
body
{
background-color:pink;
}
</style>
</head>
<body bgcolor="pink">
<form method="post">

<table border="2" >
<tr>
<td><b>NAME</b></td>
<td><b>ADDRESS</b></td>
<td><b>CITY</b></td>
<td><b>STATE</b></td>
<td><b>PHONE NUMBER</b></td>
</tr>
<%

try
{
	String query="select * from nonmember1";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/donordetails",
	        "root", "mysql");
	Statement ps=con.createStatement();
	ResultSet rs=ps.executeQuery(query);
	

while(rs.next())
{
 
	%>
   <tr><td> <%=rs.getString("name") %></td>
       <td><%=rs.getString("address") %></td>
       <td><%=rs.getString("city") %></td>
   		<td><%=rs.getString("state") %></td>
   		<td><%=rs.getString("phoneno") %></td>
   </tr>
  
  <%
}
%>

    </table> 
    <br/>
    <br/>
    <br/>
    
    <center><a href="view.html"><b>GO BACK</b></a></center>
    <% 
    
    rs.close();
    ps.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>
</form>
</body>
</html> 