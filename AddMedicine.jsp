<%-- 
    Document   : Admin
    Created on : 9 Feb, 2021, 10:18:25 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Admin Home</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
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
      <li><a href="AdminHome.jsp"><strong><font color="lightgreen">Home</font></strong></a></li>
      <li><a href="ViewUserDetails.jsp"><strong><font color="lightgreen">View Users Details</font></strong></a></li>
      <li><a href="AddGOVTHSP.jsp"><strong><font color="lightgreen">Add Govt_Hsp</font></strong></a></li>
      <li><a href="AddDoctors.jsp"><strong><font color="lightgreen">Add Doctors</font></strong></a></li>
       <li class="active"><a href="AddMedicine.jsp"><strong><font color="lightgreen">Add Medicine</font></strong></a></li>
       <li><a href="Admin.jsp"><strong><font color="lightgreen">LOGOUT</font></strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
        <h1><a href="#" ><font color="lightgreen">ANALYSIS ON MEDICINE AND DOCTOR AVAILABILITY IN GOVERNMENT HOSPITAL</font></a></h1>
      
    </div>
    
  </div>
</div>
<center>
 <div id="homepage" class="clear" style="width:600px;">
       <center>
        
          
         
            
            <h1 style="color:red;">Add Medicines Here</h1>
          
               <form action="MedicineAction.jsp" method="post">
                <table>
                  <tr><th>Select Hospital</th><td><select name="hsp" required="">
                                            <option></option>
                                            <%try{
                                             ResultSet r=Queries.getExecuteQuery("select * from hsp");
                                             while(r.next()){
                                              String name=r.getString("name"); 
                                              %>
                                              <option value="<%=name%>"><%=name%></option>
                                              <%
                                             }
                                             }catch(Exception e){
                                                out.println(e);                                               
                                                }%>
                            </select></td></tr>
                  
                 
                  <tr><th>Medicine Name</th><td><input type="text" name="mname" required=""></td></tr>
                    <tr><th>No.of Availability</th><td><input type="text" name="availability" required=""></td></tr>
                       <tr><th></th><td><input type="submit" value="Add Medicine" required=""></td></tr>
                   
                </table>
            
            </form>  
           
            
         
            
        </center>
        
        
        
    </div>
</center>
       </div>
</div>


</body>
</html>