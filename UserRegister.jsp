<%-- 
    Document   : user
    Created on : 15 Apr, 2021, 6:23:45 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>index</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:10000 
	});
});
</script>
<!-- / Featured Slider -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="topnav">
    <ul>
      <li><a href="index.html"><strong>Home</strong></a></li>
      <li><a href="Admin.jsp"><strong>ADMIN</strong></a></li>
      <li class="active"><a href="user.jsp"><strong>USER</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">ANALYSIS ON MEDICINE AND DOCTOR AVAILABILITY IN GOVERNMENT HOSPITAL</a></h1>
    
    </div>
    
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="images/sadar-hospital-2019.png" alt="" /></a>
      
      </li>
      
      
      <li class="clear featured_slide_Image"><!-- Important - Leave This Empty --></li>
    </ul>
  </div>
  
</div>
<div class="wrapper row5">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
        <center>
          
            <h2>USER REGISTRATION</h2>
            <%String msg=request.getParameter("msg");
            if(msg!=null){
                %>
                <%=msg%>
                <%
}%>
           <form action="UserRegAction" method="post">
          <table>
            
               <tr><th>Name</th><td><input type="text" name="name" required=""></tD></tr>
              <tr><th>Email</th><td><input type="email" name="email" required=""></tD></tr>
              <tr><th>Mobile</th><td><input type="number" name="mobile" required=""></tD></tr>
              <tr><th>Location</th><td><input type="text" name="location" required=""></tD></tr>
               <tr><th>UserName</th><td><input type="text" name="uname" required=""></tD></tr>
              <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
               <tr><th></th><td><input type="submit" value="Register">
                  
                      <a href="user.jsp">Login</a>
                  </tD></tr>
          </table>
      </form>
            
            
            
            
        </center>
        
        
    </div>
       </div>
</div>


</body>
</html>