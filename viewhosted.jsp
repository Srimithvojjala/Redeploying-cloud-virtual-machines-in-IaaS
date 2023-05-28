<%-- 
    Document   : index
    Created on : Nov 22, 2013, 11:27:00 AM
    Author     : ROHITH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
   <li class='active'><a href='userhome.jsp'><span>Home</span></a></li>
   <li><a href='domainreg.jsp'><span>Domain Register</span></a></li>
   <li><a href='userdetails.jsp'><span>View Cloud User Details</span></a></li>
   <li class='last'><a href='domaindetails.jsp'><span>View Domain Details</span></a></li>
   <li class='last'><a href='createsite.jsp'><span>Create Site</span></a></li>
   <li class='last'><a href='status.jsp'><span>View Site Status</span></a></li>
   <li class='last'><a href='viewhosted.jsp'><span>View Hosted Sites</span></a></li>
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
         <%String s1=(String)session.getAttribute("name2");%>
    <center><h3>Welcome to Cloud User <%= s1%></h3></center>
    <h2>Hosted Sites Search </h2>
    <form name="myForm" method="get" action="search2.jsp"  onSubmit="return validate();">
 <table align="center">
     <center> <h3>View Site </h3></center>
     <tr>
                  <td width="30"><font color="black">Enter site Name</font><br/></td>
        <td><input type="text" size=30 maxlength=30  name="name"></td>
    <tr>
        <td ><input type="Reset">
        <td ><input type="Submit" value="Search domain">
    </tr>
    </table>
        
    </form>
           