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
<center><h3>Add server</h3></center>
<%
          

         try
         {
             String domainname=request.getQueryString();
             

           //String a=(String)session.getAttribute("uname2");
 //out.println(a); 
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/dynamic","root","root");
Statement st=conn.createStatement();
PreparedStatement ps=conn.prepareStatement("select * from domainreg where domainname='"+domainname+"' ");
ResultSet rs=ps.executeQuery();

 while(rs.next())
       {
    
   

         %>
<form name="s" action="addser1.jsp" method="post" onSubmit="return valid()">
      <table align="center" cellpadding="10" cellspacing="10" width="400">
        
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>User Name</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="name" class="b" value="<%=rs.getString("username")%>"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Host Site Name</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="dname" class="b" value="<%=rs.getString("domainname")%>"></td>
        </tr>
        
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Service Level Agreement</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="agg" class="b" value="<%=rs.getString("plan")%>"></td>
        </tr>
        <tr> 
          <td><font face="Times New Roman"  size="+1"><strong>Allocated</strong></font></td>
          <td>&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="mem" class="b" value="<%=rs.getString("memory")%>"></td>
        </tr>
     <tr>
        <td width="30"><font color="black" size="+1">Add server:</font></td>
     <td>&nbsp;&nbsp;&nbsp;&nbsp;<select name="add" color="blue" maxlength=30 onchange="">
              <option selected="selected" color="white" value="">------------Select------------</option>
              <option value="serverA" color="white">Server A</option>
              <option value="serverB" color="white">Server B</option>
              <option value="serverC" color="white">Server C</option>

            </select></td></tr>
     <tr>
        <td ><input type="Reset">
        <td ><input type="Submit" value="Submit">
    </tr>
 </table>
    </form>
        <%
}
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
