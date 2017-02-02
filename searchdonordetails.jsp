<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
<style>
table {
    width: 100%;
    margin-left: auto;
    margin-right: auto;
}
</style>
</head>
<body>
<form method="post">

<table border="2" >
<tr>
<td>FirstName</td>
<td>LastName</td>
<td>Gender</td>
<td>Address</td>
<td>City</td>
<td>State</td>
<td>PhoneNumber</td>
<td>BloodGroup</td>
<td>Email</td>
</tr>
<%

try
{
	PreparedStatement ps = null; 
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/donordetails",
	        "root", "mysql");
	ps = con.prepareStatement("select * from dsp as d,feedback  as f where address=? and (DATE(dateofblooddonation)<=DATE(NOW()-INTERVAL 3 MONTH)) and d.phoneno=f.phoneno");   
	String saddress= request.getParameter("area");     
	ps.setString(1,saddress);   
	rs=ps.executeQuery();   
	
		
	while(rs.next())
{
 
	%>
   <tr><td> <%=rs.getString("fname") %></td>
   <td><%=rs.getString("lname") %></td>
       <td><%=rs.getString("gender") %></td>
       <td><%=rs.getString("address") %></td>
       <td><%=rs.getString("city") %></td>
   		<td><%=rs.getString("state") %></td>
   		<td><%=rs.getString("phoneno") %></td>
        <td><%=rs.getString("bloodgroup") %></td>
        <td><%=rs.getString("email") %></td>
        </tr>
  
  <%
}
%>

    </table> 
    <br/>
    <br/>
    <br/>
    <center><a href='logout.jsp'><b>LOGOUT</b></a></center>
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