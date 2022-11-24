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
      <li class="active"><a href="ViewUserDetails.jsp"><strong><font color="lightgreen">View Users Details</font></strong></a></li>
      <li><a href="AddGOVTHSP.jsp"><strong><font color="lightgreen">Add Govt_Hsp</font></strong></a></li>
      <li><a href="AddDoctors.jsp"><strong><font color="lightgreen">Add Doctors</font></strong></a></li>
      
         <li><a href="AddMedicine.jsp"><strong><font color="lightgreen">Add Medicine</font></strong></a></li>
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
 <div id="homepage" class="clear">
       <center>
        
          
         
            
            <h1 style="color:red;">View All Registered Users Details</h1>
            <table>
                <tr>
                    <th style="width:200px;">Name</th>
                      <th style="width:200px;">Email</th>
                        <th style="width:200px;">Mobile</th>
                          <th style="width:200px;">Location</th>
                           <th style="width:200px;">Register Date</th>
                          
                </tr>
                <%
                try{
                    ResultSet r=Queries.getExecuteQuery("select * from user");
                    while(r.next()){
                        %>
                        <tr>
                            <td><%=r.getString("name")%></tD>
                            <td><%=r.getString("email")%></tD>
                            <td><%=r.getString("mobile")%></tD>
                            <td><%=r.getString("address")%></tD>
                            <td><%=r.getString("date")%></tD>
                        </tr>
                        
                        <%
                    }
                    
                }catch(Exception e){
                   out.println(e); 
                }
                
                %>
            </table>
            
         
            
        </center>
        
        
        
    </div>
       </div>
</div>


</body>
</html>