<%-- 
    Document   : index
    Created on : Nov 22, 2013, 11:27:00 AM
    Author     : ROHITH
--%>
<%@ page contentType="text/html;" language="java" import="java.sql.*"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
          body {
   background-image: url("images/1.jpg");
 }
        </style>
      <link rel='stylesheet' type='text/css' href='styles.css' />
    </head>
    <body>
         <table align="center">
       <tr>
           <td align="center"><img src="images/2.jpg" hight="500" width="900" ></td></table>
        <div id='cssmenu'>
<ul>
   <li class='active'><a href=' providerhome.jsp'><span>Home</span></a></li>
   <li><a href='request.jsp'><span>Requested Cloud Sites</span></a></li>
   <li><a href='serverstatus.jsp'><span>Server status</span></a></li>
   
  
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
       
    <center><h3>Welcome to Service provider</h3></center>
    <center><h3>Requested Sites</h3></center>
    
    <form name="f1" action="index.jsp" method="post" onSubmit="return valid4()">
<center>
    
        
        <table  cellspacing="10" >
	 
<th class="c1"><font color="black">USER NAME</th>	  
          <th class="c1"><font color="black">HOST SITE NAME</th>
           <th class="c1"><font color="black">SERVICE LEVEL AGREEMENT</th>
          <th class="c1"><font color="black">ALLOCATED </th>
          <th class="c1"><font color="black">ADD SERVER</th>
         
          
         
          
          
	  <%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
//String pwd2=(String)session.getAttribute("pwd1");
String name3=(String)session.getAttribute("name2");
Statement st=con.createStatement();
PreparedStatement ps=con.prepareStatement("select * from domainreg  ");
ResultSet rs=ps.executeQuery();

while(rs.next())
{
    String na1=rs.getString("username");
String do1=rs.getString("domainname");
String pl1=rs.getString("plan");
String memory1=rs.getString("memory");
%>
<tr>
<td class="c2"><font color="black"><%= na1 %></td>
<td class="c2"><font color="black"><%= do1 %></td>
<td class="c2"><font color="black"><%= pl1 %></td>
<td class="c2"><font color="black"><%= memory1%></td> 
    <td class="c2"><font color="white"><a href="addser.jsp?<%= do1 %>">Add Server </a></td>


<%
}
}
catch(Exception e)
{
out.print(e);
}

%>
       