<%-- 
    Document   : billcheck
    Created on : 22 Aug, 2022, 7:21:45 PM
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
        String username= request.getParameter("username");
        String date1= request.getParameter("date1");
        String address= request.getParameter("address");
        String city= request.getParameter("city");
        String totalamt= request.getParameter("totalamt");
       
        
        stmt.executeUpdate("insert into bill values('" + username + "','" + date1 + "','" + address + "','" + city +"','" + totalamt  +"')");
        response.sendRedirect("homepage.jsp?msg=success");
                      
        %>
    </body>
</html>
