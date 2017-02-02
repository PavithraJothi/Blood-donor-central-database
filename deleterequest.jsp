<%@ page import ="java.sql.*" %>


<%
String phoneno = request.getParameter("phoneno"); 


    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/donordetails",
            "root", "mysql");
    Statement st = con.createStatement();
    
    PreparedStatement ps = con.prepareStatement("select phoneno from otherblooddonor where phoneno=?");
    ps.setString(1,phoneno);
    ResultSet rs = ps.executeQuery();
     
 if(rs.next())   
 {
 
	 PreparedStatement pst = con.prepareStatement("delete from otherblooddonor where phoneno =?");
     pst.setString(1,phoneno);

     pst.executeUpdate();
     
		   session.setAttribute("phoneno", phoneno);

		   
	response.sendRedirect("deleterequest1.jsp");
	   
	}
   
   else {
	   
	  out.println("The phoneno "+phoneno+"  not found");
		
		
	   out.println("<a href='view.html'>GO BACK</a>");
	   }
   
%>

