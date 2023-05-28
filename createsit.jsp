<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.*"%>
<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>
<html>
<head>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String username1=null,email1=null,date1=null,filename1=null;
String country1=null,file1=null,fileid1=null,id1=null,filekey1=null;

try
{
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
PreparedStatement ps=conn.prepareStatement ("insert into sitereg (sitename,file) values (?,?)");

username1=request.getParameter("sname");
file1=request.getParameter("file");

ps.setString(1,username1);

ps.setString(2,file1);


int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("register.jsp?message=success");}
            else
                {
			%>
			
                <h1>Successfully Registered</h1>
				<%
				
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
        
%>
<jsp:forward page="success.jsp" />

</body>
</html>
