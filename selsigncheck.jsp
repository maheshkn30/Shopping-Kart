<%-- 
    Document   : selsigncheck
    Created on : 29 Jul, 2022, 10:27:16 PM
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
        String password= request.getParameter("password");
         String phone= request.getParameter("phone");
        String email= request.getParameter("email");
         rst=stmt.executeQuery("select * from slsign where name='"+name+"'");
     if(rst.next())
{          
response.sendRedirect("sellersignup.jsp?msg=exist");         
    }
       else{        
        
        stmt.executeUpdate("insert into slsign values('" + name + "','" + password + "','" + phone +"','" + email +"')");
        response.sendRedirect("sellerlogin.jsp?msg=success");
                       }
        %>
    </body>
</html>