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
PreparedStatement ps=conn.prepareStatement ("insert into payment (webhostingplan,domainname,paymenttype,cardno,cardexpiration,cvv) values (?,?,?,?,?,?)");


String wplan1=request.getParameter("wplan");
String dname1=request.getParameter("dname");
String ptype1=request.getParameter("ptype");
String cno1=request.getParameter("cno");
String cexp1=request.getParameter("cexp");
String cvv1=request.getParameter("cvv");
ps.setString(1,wplan1);
ps.setString(2,dname1);
ps.setString(3,ptype1);
ps.setString(4,cno1);
ps.setString(5,cexp1);
ps.setString(6,cvv1);


int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("register.jsp?message=success");}
            else
                {
			%>
			
                <h1>Successfully Registered Your Domain</h1>
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
