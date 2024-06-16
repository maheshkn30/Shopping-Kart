
<%-- 
    Document   : login
    Created on : 15 Jul, 2022, 8:11:16 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
       
            <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
          <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
          <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
        <style>
           
            body{
                background: linear-gradient(#9896f0,#fbc8d5);
               background-repeat: no-repeat;
               background-size: 115% 115%;
            }
            
            .outerdiv{
                padding-left: 13cm;
                padding-top: 2.2cm;
            }
            
            <%--border--%>
            .innerdiv{
             background-image: url('pics/signn.jpg');
             background-size: contain;
             background-repeat: no-repeat;
                 background-color: #ffffff;
                padding-left: 1.5cm;
                padding-bottom: 4.3900cm; 
                padding-top: 4.100cm;
                 border: 2px inactiveborder;
                 border-radius: 8px;
                  box-shadow: 5px;
                  width:33%;
                 height: 5cm;
                display: block;
                 color: black;
            }
            
             <%--textbox--%>
              input[type=text],input[type=password]{
          width: 200px;
          height:1cm;
          border-radius: 5px;
           padding-left: 10px;
             font-family: 'Anek Malayalam', sans-serif;
            font-size: 15px;
            padding-left:0.4cm;
             }
                   
             <%--textbox hover--%>
          input[type=text]:hover,input[type=password]:hover{
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
          width: 210px;
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
          width: 210px;
          height:1cm;
          color: white;
          border: none;
          }
             
          
             h2{
                 font-family: 'Ubuntu', sans-serif;
               }
               
             h6{
                font-family: 'Montserrat', sans-serif; 
                font-size: 12px;
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
        
        </style>
    </head>
    
    <body>
         <div class="outerdiv">
         <div class="innerdiv">
            <form method="post" action="logincheck.jsp">
               
        <h2>LOGIN</h2>
       <input type="text"  name="username"  placeholder=" Username" required=""/><br><br>
        <im class="fa-solid fa-eye" id="eye" onclick="toggle()"></im> <input type="password"  id="password" name="password" placeholder=" Password" pattern=".{4,}" title="FOUR or more characters" required=""/><br>
         <form method="POST" action="http://www.cs.tut.fi/cgi-bin/run/~jkorpela/echo.cgi">
        <h6><input type="checkbox" name="checkbox" value="check"/>By continuing, I agree to the <a href="" onclick="funn()">Terms &<br>
       Condition Policy</a></h6>
            <input type="submit" name="email_submit" value="LOGIN" title="LOGIN" onclick="if(!this.form.checkbox.checked){alert('You must agree to the terms and condition...!');return false}"  /> 
                </form>
       
        <h4>Don't have an account?<a href="signup.jsp" title="SIGN UP">Signup</a></h4>
            
        
               
       </div>
       </div>
        
        <script>
           var state=false;
            function toggle(){
                if(state){
                    document.getElementById("password").setAttribute("type","password");
                    document.getElementById("eye").style.color='black';
                    state=false;
                }
                else
                    {
                        document.getElementById("password").setAttribute("type","text");
                        document.getElementById("eye").style.color='red';
                        state=true;
                    }
            }
             </script>
             
              <script>
            function funn(){
         swal("We value the trust you place in us and recognize the importance of secure transactions and information privacy.This privacy policy describes how SHOPPING CART collect use,share,protect or otherwise process your personal info through shopping.contact.com \n\
 If you do not agree please do not use or access our platform");
            }
        </script>
    </body>
</html>


