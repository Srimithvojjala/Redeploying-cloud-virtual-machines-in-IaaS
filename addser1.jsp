<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>
<html>
<head>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
//String username1=null,email1=null,password1=null,confirmpassword1=null,address1=null;
//String country1=null,gender1=null,phoneno1=null;

try
{
    Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
PreparedStatement ps=conn.prepareStatement ("insert into addserver (username,sitename,aggrement,allocated,server) values (?,?,?,?,?)");


String username1=request.getParameter("name");
String dname1=request.getParameter("dname");
String agg1=request.getParameter("agg");
String mem1=request.getParameter("mem");
String add1=request.getParameter("add");

ps.setString(1,username1);
ps.setString(2,dname1);
ps.setString(3,agg1);
ps.setString(4,mem1);
ps.setString(5,add1);


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
<jsp:forward page="sucalo.jsp" />

</body>
</html>
