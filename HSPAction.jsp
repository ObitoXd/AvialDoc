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

   
    String hname=request.getParameter("hname");
    String description=request.getParameter("description");
  
   ResultSet r=Queries.getExecuteQuery("select count(*) from hsp where name='"+hname+"'");
   int c=0;
   while(r.next()){
       c=r.getInt(1);
   }
   if(c==0){
    String query="insert into hsp values(null,'"+hname+"','"+description+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddGOVTHSP.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddGOVTHSP.jsp";
      </script>
      <%
}
}else{
%>
      <script type='text/javascript'>
          window.alert("Already Exist..!!");
          window.location="AddGOVTHSP.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>