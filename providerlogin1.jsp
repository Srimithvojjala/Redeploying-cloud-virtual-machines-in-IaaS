<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>
<%-- 
    Document   : adminlogin
    Created on : Oct 29, 2013, 3:20:25 PM
    Author     : rajesh
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
String email1=request.getParameter("email");
//session.setAttribute("name2",name1);
String password1=request.getParameter("pwd");
//session.setAttribute("pwd1",password1);
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from servicreg where email='"+email1+"' and password='"+password1+"'");
		if(rs.next())
		{
	 %>
   
    <jsp:forward page="providerhome.jsp" />
       
    <%
	
}
}
catch(Exception e)
           {
    e.printStackTrace();
}
%>

