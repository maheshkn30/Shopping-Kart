<%-- 
    Document   : contactdelete
    Created on : 20 Aug, 2022, 8:35:24 PM
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
       
       
        stmt.executeUpdate("delete from contact where name='" + name + "'");
        response.sendRedirect("contactview.jsp?msg=success");
                      
        %>
    </body>
</html>
