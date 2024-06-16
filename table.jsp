<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conn.jsp" %>
<!DOCTYPE html>
<html>
       <head>
        <title>ADD TO CART</title>
        
    </head>
    
    <style>
    
        *{margin: 0; padding: 0;}
        body{background: #ecf1f4; font-family: sans-serif;}
        
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
                <label>Company Name<input type="text" name="pname" value="<%=rst.getString("proname")%>" readonly=""></label>
            <label> PRODUCT Name     <input type="text" name="name" value="<%=rst.getString("name")%>" readonly=""></label>
            <label>size     <input type="text" name="size" value="<%=rst.getString("size")%>" readonly="" ></label>
           <label>Price     <input type="text" name="price" value="<%=rst.getString("price")%>" readonly="" ></label>
           <label>quantity     <input type="text" name="quantity" placeholder="enter the quantity" required=""></label>
              <input type="submit" value="ADD TO CART">
           
          <%
                }
                   %>
                              

        </div>
    
      </form>
    
    </body>



</html>