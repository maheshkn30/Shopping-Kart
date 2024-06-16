<%-- 
    Document   : search
    Created on : 23 Aug, 2022, 12:55:38 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conn.jsp" %>
<!DOCTYPE html>
<html>
       <head>
        <title>ADD TO CART</title>
            </head>
        <style>
    
        *{margin: 0; padding: 0;}
        body{
           background: #26d0ce;
             font-family: sans-serif;}
        
        .form-wrap{ width: 320px; background: #3e3d3d;
                   padding: 40px 20px;
                   box-sizing: border-box;
                   position: fixed;
                   left: 50%;
                   top: 50%;
                   transform: translate(-50%, -50%);
        }
        h1{text-align: center;
           color: #fff;
           font-weight: normal;
           margin-bottom: 20px;
        }
        
        input{width: 100%;
              background: none;
              border: 1px solid #fff;
              border-radius: 3px;
              padding: 6px 15px;
              box-sizing: border-box;
              margin-bottom: 20px;
              font-size: 16px;
              color: #fff;
        }
        
        input[type="button"]{ 
            background: #bac675;
          border: 0;
          cursor: pointer;
          color: #3e3d3d;
        }
        input[type="button"]:hover{
            background: #a4b15c; 
            transition: .6s;}
        
        ::placeholder{color: black;}
        label{
            color: white;
        }
        .button{
    display: flex;
    align-items: center;
    padding: 20px 36px;
    border-radius: 8px;
    background-color: #4070f4;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    cursor: pointer;
    user-select: none;
}
.button .icon{
    font-size: 28px;
    color: #fff;
    margin-right: 10px;
    display: none;
}
.button.checked .icon{
    display: flex;
}
.icon.spinner.spin{
    animation: spin 1.3s ease-in-out infinite;
}
@keyframes spin {
    100%{
        transform: rotate(360deg);
    }
}
.icon.check{
    display: inline-flex;
    height: 32px;
    width: 32px;
    font-size: 18px;
    border-radius: 50%;
    align-items: center;
    justify-content: center;
    background-color: #6e93f7;
}
.button .btn-text{
    font-size: 32px;
    font-weight: 400px;
    color: #fff;
}
    </style>
    <body>
     <form method="post" action="search3check.jsp">
        <div class="form-wrap">
        <% 
            String var1a,var2a;
            var1a=request.getParameter("proname");
            var1a=var1a.replace("_"," ");
            session.setAttribute( "proname", var1a );
            
                rst=stmt.executeQuery("select * from Product where proname = '"+var1a+"' order by proname");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                if( rst.next())
                                       {
                    %>
       
            
                <h1>PRODUCT DETAILS</h1>
                <label> NAME<input type="text" name="pname" value="<%=rst.getString("proname")%>" readonly=""></label>
            <label> PRODUCT NAME     <input type="text" name="name" value="<%=rst.getString("name")%>" readonly=""></label>
            <label>SIZE     <input type="text" name="size" value="<%=rst.getString("size")%>" readonly="" ></label>
           <label>PRICE     <input type="text" name="price" value="<%=rst.getString("price")%>" readonly="" ></label>
           <label>QUANTITY    <input type="text" name="quantity" placeholder="Enter The Quantity" required="" pattern="\d{1,5}"  
                                     maxlength="1" title="ENTER SINGLE DIGIT NUMBER"></label>
              <input type="submit" value="ADD TO CART">
           
          <%
                }
                   %>
                              
        </div>
          </form>
       </body>
</html>