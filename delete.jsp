<%-- 
    Document   : delete
    Created on : 21 Jul, 2022, 9:57:19 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> delete check</title>
    </head>
    <body>
          <%
        String name= request.getParameter("name");
       
       
        stmt.executeUpdate("delete from signup where name='" + name + "'");
        response.sendRedirect("database.jsp?msg=success");
                      
        %>
    </body>
</html>
