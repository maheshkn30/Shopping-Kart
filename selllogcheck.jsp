<%-- 
    Document   : selllogcheck
    Created on : 29 Jul, 2022, 9:03:08 PM
    Author     : PC
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>seller login check</title>
    </head>
    <body>
        <%
        String name= request.getParameter("name");
        String password= request.getParameter("password");
        
        System.out.println("name="+name);
        System.out.println("password="+password);
       rst=stmt.executeQuery("select * from slsign where name='"+name+"' and password='"+password+"'");
       if(rst.next())
{            
       response.sendRedirect("sellerhome.jsp?msg=success");
       session.setAttribute("name", name);
              }
else
{
            response.sendRedirect("406error.jsp");
}               
      
        %>
    </body>
</html>

