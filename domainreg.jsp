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
    <h2>Domain Registration </h2>
     <form name="myForm" method="get" action="domainreg1.jsp"  onSubmit="return validate();">
              <table width="40" align="center">
                  <tr>
                  <td width="30"><font color="blue">User Name:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="uname" value="<%=(String)session.getAttribute("name2")%>"></td>
    </tr>
                  <tr>
                  <td width="30"><font color="blue">Domain Name:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="dname"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">SLR Plan:</font></td>
     <td><select name="plan" color="blue" maxlength=30 onchange="">
              <option selected="selected" color="white" value="">------------Select------------</option>
              <option value="3months" color="white">3 months</option>
              <option value="6months" color="white">6 months</option>
              <option value="1year" color="white">1 year</option>

            </select></td></tr>
            <tr>
        <td width="30"><font color="blue">Chose Memory:</font></td>
     <td><select name="memory" color="blue" maxlength=30 onchange="">
              <option selected="selected" color="white" value="">------------Select------------</option>
              <option value="10KB" color="white">10 KB</option>
              <option value="20KB" color="white">20 KB</option>
              <option value="30KB" color="white">30 KB</option>

            </select></td></tr>
    <tr>
    
    <tr>
        <td width="30"><font color="blue">Address:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="address"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">City:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="city"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Country:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="country"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Phone No:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="phoneno"></td>
    </tr>
    <tr>
        <td ><input type="Reset">
        <td ><input type="Submit" value="Submit">
    </tr>
 </table>
    </form>
</body>
</html>
