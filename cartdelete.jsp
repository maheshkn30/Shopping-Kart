<%-- 
    Document   : cartdelete
    Created on : 21 Aug, 2022, 1:34:17 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> cart delete</title>
    </head>
    <body>
          <%
        String proname= request.getParameter("name");
       
       
        stmt.executeUpdate("delete from cart where proname='" + proname + "'");
        response.sendRedirect("cart.jsp?msg=success");
                      
        %>
    </body>
</html>
