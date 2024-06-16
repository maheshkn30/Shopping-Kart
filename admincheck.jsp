<%-- 
    Document   : logincheck
    Created on : 20 Jul, 2022, 11:31:21 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN CHECK</title>
    </head>
    <body>
        <%
        String username= request.getParameter("username");
        String password= request.getParameter("password");
        
        System.out.println("username="+username);
        System.out.println("password="+password);
       rst=stmt.executeQuery("select * from adminlogin where username='"+username+"' and password='"+password+"'");
       if(rst.next())
{            
       response.sendRedirect("adminhome.jsp?msg=success");
       session.setAttribute("username", username);
              }
else
{
            response.sendRedirect("405error.jsp");
}               
      
        %>
    </body>
</html>


