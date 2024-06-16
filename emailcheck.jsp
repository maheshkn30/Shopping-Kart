<%-- 
    Document   : emailcheck
    Created on : 19 Aug, 2022, 6:45:34 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>email</title>
    </head>
    <body>
          <%
        
        String email= request.getParameter("email");
     
       
        
        stmt.executeUpdate("insert into offer values('" + email +"')");
         response.sendRedirect("homepage.jsp?msg=success");
                      
        %>
    </body>
</html>
