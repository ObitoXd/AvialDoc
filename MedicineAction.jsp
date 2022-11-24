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
    String mname=request.getParameter("mname");
    String availability=request.getParameter("availability");
  
   ResultSet r=Queries.getExecuteQuery("select count(*) from medicine where hspname='"+hsp+"'and medicine='"+mname+"'and availability='"+availability+"'");
   int c=0;
   while(r.next()){
       c=r.getInt(1);
   }
   if(c==0){
    String query="insert into medicine values(null,'"+hsp+"','"+mname+"','"+availability+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddMedicine.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddMedicine.jsp";
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