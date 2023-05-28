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
           <td align="center"><img src="images/9.jpg" hight="200" width="200" ></td></table>
        		<form name="myForm" method="post" action="providerlogin1.jsp"  onSubmit="return validate();">
              <table width="40" align="center">
                  <center><h1>Service Provider login</h1></center>
       <tr>
                  <td width="30"><font color="blue">Enter Email:</font><br/></td>
                  <td><input type="email" size=30 maxlength=30  name="email" placeholder="enter email"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Password:</font><br/></td>
        <td><input type="password" size=30 maxlength=30  name="pwd" placeholder="password"></td>
    </tr>
     <tr>
        <td ><input type="Reset">
        <td ><input type="Submit" value="Submit">
    </tr>
 </table>
    </form>
</body>
</html>