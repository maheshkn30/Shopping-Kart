<%-- 
    Document   : search3check
    Created on : 21 Aug, 2022, 11:30:28 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <% 
            
            String pname=request.getParameter("pname");
            String name=request.getParameter("name");
            String size=request.getParameter("size");
             String price=request.getParameter("price");
              String quantity=request.getParameter("quantity");
             String uname= (String)session.getAttribute("username");
             String tPrice;
             int tprice1;
            int price1 = Integer.parseInt(price);
            int quantity1 = Integer.parseInt(quantity);
            tprice1 = price1*quantity1;
            tPrice = String.valueOf(tprice1);
            
         stmt.executeUpdate("insert into cart values('" + uname + "','" + pname + "','" + name + "','" + size +"','" + price +"','" + quantity +"','" + tPrice +"','N')");
        response.sendRedirect("homepage.jsp?msg=success");
            
            
            %>
    </head>
    <body>
       
    </body>
</html>
