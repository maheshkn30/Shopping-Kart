<%-- 
    Document   : sellerdelete
    Created on : 20 Aug, 2022, 8:47:47 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>seller delete check</title>
    </head>
    <body>
          <%
        String name= request.getParameter("name");
       
       
        stmt.executeUpdate("delete from slsign where name='" + name + "'");
        response.sendRedirect("sellerview.jsp?msg=success");
                      
        %>
    </body>
</html>
