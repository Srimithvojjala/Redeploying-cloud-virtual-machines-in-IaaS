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
    <h2>Make a payMent Domain Registration </h2>
     <form name="myForm" method="get" action="payment1.jsp"  onSubmit="return validate();">
              <table width="40" align="center">
                  <tr>
        <td width="30"><font color="blue">Web Hosting Plan:</font></td>
     <td><select name="wplan" color="blue" maxlength=30 onchange="">
              <option selected="selected" color="white" value="">------------Select------------</option>
              <option value="sch" color="white">Rupees 5000</option>
              <option value="pet" color="white">Rupees 7000</option>
              <option value="mot" color="white">Rupees 9000</option>

            </select></td></tr>
            <tr>
                  <tr>
                  <td width="30"><font color="blue">Domain Name:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="dname" value="<%=(String)session.getAttribute("dname2")%>"></td>
    </tr>
                  
        <td width="30"><font color="blue">Payment Type:</font></td>
     <td><select name="ptype" color="blue" maxlength=30 onchange="">
              <option selected="selected" color="white" value="">------------Select------------</option>
              <option value="sch" color="white">Visa</option>
              <option value="pet" color="white">Master Card</option>
              <option value="mot" color="white">American Express</option>

            </select></td></tr>
    <tr>
    
    <tr>
        <td width="30"><font color="blue">Card NO:</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="cno"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">Card Expiration(MM/YY):</font><br/></td>
        <td><input type="text" size=20 maxlength=30  name="cexp"></td>
    </tr>
    <tr>
        <td width="30"><font color="blue">CVV2/CID:</font><br/></td>
        <td><input type="password" size=20 maxlength=30  name="cvv"></td>
    </tr>
    
    <tr>
        <td ><input type="Reset">
        <td ><input type="Submit" value="Submit">
    </tr>
 </table>
    </form>
</body>
</html>
