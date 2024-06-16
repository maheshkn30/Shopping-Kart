<%-- 
    Document   : signupcheck
    Created on : 20 Jul, 2022, 11:30:39 PM
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
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        String email= request.getParameter("email");
        String phone= request.getParameter("phone");
       rst=stmt.executeQuery("select * from signup where username='"+username+"'");
if(rst.next())
{          
response.sendRedirect("signup.jsp?msg=exist");         
    }
       else{       
        stmt.executeUpdate("insert into signup values('" + name + "','" + username + "','" + password + "','" + email +"','" + phone +"')");
        response.sendRedirect("login.jsp?msg=success");
                             }
        %>
    </body>
</html>