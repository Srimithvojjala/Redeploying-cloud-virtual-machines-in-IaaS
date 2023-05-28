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
PreparedStatement ps=conn.prepareStatement ("insert into domainreg (username,domainname,plan,memory,address,city,country,phoneno) values (?,?,?,?,?,?,?,?)");


String username1=request.getParameter("uname");
String dname1=request.getParameter("dname");
String plan1=request.getParameter("plan");
String memory1=request.getParameter("memory");
String address1=request.getParameter("address");
String city1=request.getParameter("city");
String country1=request.getParameter("country");
String phoneno1=request.getParameter("phoneno");
session.setAttribute("dname2",dname1);
ps.setString(1,username1);
ps.setString(2,dname1);
ps.setString(3,plan1);
ps.setString(4,memory1);
ps.setString(5,address1);
ps.setString(6,city1);
ps.setString(7,country1);
ps.setString(8,phoneno1);


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
<jsp:forward page="payment.jsp" />

</body>
</html>
