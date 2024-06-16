<%-- 
    Document   : emaildelete
    Created on : 20 Aug, 2022, 7:23:35 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>email check</title>
    </head>
    <body>
          <%
        String email= request.getParameter("email");
       
       
        stmt.executeUpdate("delete from offer where email='" + email + "'");
        response.sendRedirect("emailoffer.jsp?msg=success");
                      
        %>
    </body>
</html>