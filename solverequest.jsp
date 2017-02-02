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
</style>
</head>
<body bgcolor="pink">
<form method="post">

<table border="2" >
<tr>
<td>PhoneNo</td>
<td>ReasonForRequest</td>
<td>BloodGroupRequired</td>
<td>LocationToBeSearched</td>

</tr>
<%

try
{
	String query="select * from otherblooddonor";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/donordetails",
	        "root", "mysql");
	Statement ps=con.createStatement();
	ResultSet rs=ps.executeQuery(query);
	

while(rs.next())
{
 
	%>
   <tr><td> <%=rs.getString("phoneno") %></td>
       <td><%=rs.getString("reasonforrequest") %></td>
       <td><%=rs.getString("bloodgroupreq") %></td>
       <td><%=rs.getString("locsearch") %></td>
       
   </tr>
  
  <%
}
%>

    </table> 
    <br/>
    <br/>
    <br/>
    <center><a href="responseview.html">SEARCH DETAILS OF THE REQUEST</a></center>
    
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