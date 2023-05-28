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
        <h1>Hello World!</h1>
    </body>
</html>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
String name1=request.getParameter("name");
session.setAttribute("name2",name1);
String password1=request.getParameter("pwd");
session.setAttribute("pwd1",password1);
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from userreg where username='"+name1+"' and password='"+password1+"'");
		if(rs.next())
		{
	 %>
   
    <jsp:forward page="userhome.jsp" />
       
    <%
	
}
}
catch(Exception e)
           {
    e.printStackTrace();
}
%>

