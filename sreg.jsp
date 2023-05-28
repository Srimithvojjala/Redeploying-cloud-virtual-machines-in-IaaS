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
PreparedStatement ps=conn.prepareStatement ("insert into servicreg (email,providername,password,cpwd,phoneno,question,answer) values (?,?,?,?,?,?,?)");

String email1=request.getParameter("email");
String username1=request.getParameter("name");
String password1=request.getParameter("pwd");
String confirmpassword1=request.getParameter("cpwd");
String phoneno1=request.getParameter("phoneno");
String que1=request.getParameter("que");
String answer1=request.getParameter("answer");
ps.setString(1,email1);
ps.setString(2,username1);
ps.setString(3,password1);
ps.setString(4,confirmpassword1);
ps.setString(5,phoneno1);
ps.setString(6,que1);
ps.setString(7,answer1);

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
<jsp:forward page="index.jsp" />

</body>
</html>
