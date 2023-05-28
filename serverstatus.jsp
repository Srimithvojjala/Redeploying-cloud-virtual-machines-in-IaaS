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
   <li class='active'><a href=' providerhome.jsp'><span>Home</span></a></li>
   <li><a href='request.jsp'><span>Requested Cloud Sites</span></a></li>
   <li><a href='serverstatus.jsp'><span>Server status</span></a></li>
   
  
   <li class='last'><a href='index.jsp'><span>Logout</span></a></li>
</ul>
</div>
       
    <center><h3>Welcome to Service provider</h3></center>
    <center><h3>Server Status</h3></center>
 <center><table  cellspacing="10" align="center">
	 
        <tr> <th class="c1"><font color="black">SERVER NAME</th>&nbsp;&nbsp;&nbsp;&nbsp;

          <th class="c1"><font color="black">MEMORY</th>
        <th class="c1"><font color="black">RESOURCE USED</th></tr>
        <tr>
          <td>ServerA</td>
          <td>500 KB</td>
          <td>60 KB</td>
          </tr>
          <tr>
          <td>ServerB</td>
          <td>500 KB</td>
          <td>60 KB</td>
          </tr>
          <tr>
          <td>ServerC</td>
          <td>500 KB</td>
          <td>80 KB</td>
          </tr>
          </center>
           