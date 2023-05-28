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
   <li class='active'><a href='index.jsp'><span>Home</span></a></li>
   <li><a href='userlogin.jsp'><span>Cloud Users Login</span></a></li>
   <li><a href='providerlogin.jsp'><span>Cloud Service Provider</span></a></li>
   <li class='last'><a href='registration.jsp'><span>Registration</span></a></li>
</ul>
</div>
          <table align="left">
       <tr>
           <td align="center"><img src="images/5.jpg" hight="300" width="300" ></td></table>
    <center><h1>Cloud User registration</h1></center>
     <form name="myForm" method="get" action="ureg.jsp"  onSubmit="return validate();">
              <table width="40" align="center">
                  <tr>
                  <td width="30"><font color="blue">Id:</font><br/></td>
        <td><input type="text" size=30 maxlength=30  name="id" value="<%= (int) (Math.random() * 100) %>"></td>
    </tr>
                  <tr>
                  <td width="30"><font color="blue">Name:</font><br/></td>
        <td><input type="text" size=30 maxlength=30  name="name"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Password:</font><br/></td>
        <td><input type="password" size=30 maxlength=30  name="pwd"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Confirm Password:</font><br/></td>
        <td><input type="password" size=30 maxlength=30  name="cpwd"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Email-id:</font><br/></td>
        <td><input type="email" size=30 maxlength=30  name="email"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Phone no:</font><br/></td>
        <td><input type="text" size=30 maxlength=30  name="phoneno"></td>
    </tr>
    <tr>
        <td ><input type="Reset">
        <td ><input type="Submit" value="Submit">
    </tr>
 </table>
    </form>
</body>
</html>