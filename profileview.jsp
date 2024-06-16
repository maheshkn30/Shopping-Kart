<%-- 
    Document   : profileview
    Created on : 22 Aug, 2022, 5:19:53 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PROFILE</title>
         <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
          <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
          <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    </head>
    <style>
      body{
                background: linear-gradient(to top,#614385,#516395);
               background-repeat: no-repeat;
               background-size: 115% 115%;
            }
            
            .outerdiv{
                padding-left: 13cm;
                padding-top: 0.3cm;
            }
            
            <%--border--%>
            .innerdiv{
             background-image: url('pics/pro.jpg');
             background-size: contain;
             background-repeat: no-repeat;
                 background-color: #ffffff;
                padding-left: 2cm;
                padding-bottom: 4.3900cm;
                padding-top: 6.2cm;
                 border: 2px inactiveborder;
                 border-radius: 8px;
                  box-shadow: 5px;
                  width:35%;
                  height: 8.5cm;
                display: block;
                 color: black;
                 
            }
           
             <%--textbox--%>
              input[type=text],input[type=password],input[type=email]{
          width: 200px;
          height:1cm;
          border-radius: 5px;
           padding-left: 10px;
            padding-left: 10px;
             font-family: 'Anek Malayalam', sans-serif;
            font-size: 15px;
            padding-left:0.4cm;
             }
                   
             <%--textbox hover--%>
          input[type=text]:hover,input[type=password]:hover,input[type=email]:hover{
          width: 200px;
          height:1cm;
          border-radius: 5px ;
          border-color: black;
           cursor: text;
             }
              
               <%--botton--%>
            input[type=submit]{
           background-color:  #ff3f6c;
          font-family: 'Anek Malayalam', sans-serif;
          font-size: 20px;
          width: 222px;
          height:1cm;
          color: white;
          border: none;
           cursor: pointer;
           
             }
             
              <%--botton hover--%>
            input[type=submit]:hover{
           background-color:  red;
          font-family: 'Anek Malayalam', sans-serif;
          font-size: 20px;
          width: 222px;
          height:1cm;
          color: white;
          border: none;
          }
             
          
             h2{
                 font-family: 'Ubuntu', sans-serif;
               }
               
           
               
             h4{
                 font-family: 'PT Sans', sans-serif;
                 font-size: 15px;
                padding-bottom: 1cm;
               }
                <%--a href link--%>
             a{
                color: #ff3f6c;
                 text-decoration: none;
              }
              
            a:hover{
                color: red;
                   }
                      im{
             padding-left: 4.8cm;
             padding-top: 0.389cm;
              position: absolute;
              cursor: pointer;
         }
         .link_404 {
  color: #fff !important;
  padding: 10px 20px;
  background: #39ac31;
  margin: 20px 0;
  display: inline-block;
}
        </style>
    </head>
    
    <body>
         <%
           String name= (String)session.getAttribute("name");
        String username= (String)session.getAttribute("username");
        String password= (String)session.getAttribute("password");
        String email= (String)session.getAttribute("email");
        String phone= (String)session.getAttribute("phone");
        %>
             
             
             
         <div class="outerdiv">
         <div class="innerdiv">
            
        <h2>MY PROFILE</h2>
         <%
            rst=stmt.executeQuery("select * from signup where username ='" + username + "'");
            while(rst.next())
            {
       
             %>   
         <input type="text" name="name" readonly="" value="<%=rst.getString("name")%>" /><br><br>
       <input type="text"name="username" readonly="" value="<%=rst.getString("username")%>" ><br><br>
      <input type="password" name="password" name="name" readonly="" value="<%=rst.getString("password")%>"/><br><br>
       <input type="email"name="email" readonly="" value="<%=rst.getString("email")%>"/><br><br>
      <input type="text" name="phone" readonly="" value="<%=rst.getString("phone")%>"  /><br><br>
                     <%
               }
     
      %>
       <form method="post" action="editprocess.jsp">
       <input type="submit" value="EDIT YOUR PROFILE"><br>
            <a href="homepage.jsp" class="link_404">Go to Home</a>
            <a href="logout.jsp" class="link_404">Log Out</a>
       </form>
      
            
          </div>
       </div>
       
    </body>
</html>
    
