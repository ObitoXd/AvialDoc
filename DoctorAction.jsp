<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String hsp=request.getParameter("hsp");
    String special=request.getParameter("special");
      String name=request.getParameter("name");
    String Experience=request.getParameter("Experience");
      String days=request.getParameter("days");
    String time=request.getParameter("time");
      String contact=request.getParameter("contact");
   
  
   
    String query="insert into doctor values(null,'"+hsp+"','"+special+"','"+name+"','"+Experience+"','"+days+"','"+time+"','"+contact+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddDoctors.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddDoctors.jsp";
      </script>
      <%
}

}catch(Exception e){
    out.println(e);
}



%>