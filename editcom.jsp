<%-- 
    Document   : editcom
    Created on : 21 Jul, 2022, 9:55:25 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDIT COMPLETE</title>
    </head>
    <body>
          <%
         
        String name= request.getParameter("name");
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        String email= request.getParameter("email");
          String phone= request.getParameter("phone");
       
        
       stmt.executeUpdate("update signup set name='" + name + "',password='" + password + "',email='" + email + "',phone='" + phone + "' where username='"+ username +"'");
       response.sendRedirect("profileview.jsp?msg=success");
                      
        %>
    </body>
</html>
