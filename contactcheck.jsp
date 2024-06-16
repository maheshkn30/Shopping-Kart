<%-- 
    Document   : contactcheck
    Created on : 20 Aug, 2022, 8:23:50 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sign up check</title>
    </head>
    <body>
          <%
        String name= request.getParameter("name");
          String email= request.getParameter("email");
        String msg= request.getParameter("msg");
       
        
        stmt.executeUpdate("insert into contact values('" + name + "','" + email +"','" + msg +"')");
        response.sendRedirect("contact.jsp?msg=success");
                      
        %>
    </body>
</html>