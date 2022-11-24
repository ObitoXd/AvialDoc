<%-- 
    Document   : Admin
    Created on : 9 Feb, 2021, 10:18:25 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>UserHome</title>

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
      <li><a href="UserHome.jsp"><strong><font color="lightgreen">Home</font></strong></a></li>
      <li><a href="ViewProfile.jsp"><strong><font color="lightgreen">View Profile</font></strong></a></li>
      <li class="active"><a href="SearchHospital.jsp"><strong><font color="lightgreen">Search Hospital</font></strong></a></li>

      <li><a href="user.jsp"><strong><font color="lightgreen">LOGOUT</font></strong></a></li>
      
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
 <div id="homepage" class="clear" style="width:500px;">
       <center>
            <%String username=(String)session.getAttribute("username");
            String hname=request.getParameter("hname");
            
            %>
            <h1 style="color:red;"> Doctor Details <a href="SearchDetails.jsp?hname=<%=hname%>">Back</a></h1>
            <table>
                <tr>
                    <th>Hospital Name</th><th>Medicine Name</th><th>Availability(packs)</th>
                </tr>
            <%
            try{
            ResultSet r=Queries.getExecuteQuery("select * from medicine where hspname='"+hname+"'");
            while(r.next()){
                String hhname=r.getString("hspname");
                String medicine=r.getString("medicine");
                 String availability=r.getString("availability");
              
             %>
             <tr>
                 <td>
                     <%=hhname%>
                 </td>
                 <td>
                     <%=medicine%>
                 </td>
                 <td>
                     <%=availability%>
                 </td>
                 
             </tr>
             
             <%
            }
            
            }catch(Exception e){
                out.println();
            }
            %>
            </table>
        </center>
        
        
        
    </div>
</center>
       </div>
</div>


</body>
</html>