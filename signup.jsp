<%-- 
    Document   : signup
    Created on : 20 Jul, 2022, 11:28:34 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGN UP</title>
         <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
          <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
          <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    </head>
    <style>
      body{
                background: linear-gradient(#9896f0,#fbc8d5);
               background-repeat: no-repeat;
               background-size: 115% 115%;
            }
            
            .outerdiv{
                padding-left: 13cm;
                padding-top: 0.3cm;
            }
            
            <%--border--%>
            .innerdiv{
             background-image: url('pics/signup.jpg');
             background-size: contain;
             background-repeat: no-repeat;
                 background-color: #ffffff;
                padding-left: 2cm;
                padding-bottom: 4.3900cm;
                padding-top: 4.2cm;
                 border: 2px inactiveborder;
                 border-radius: 8px;
                  box-shadow: 5px;
                  width:35%;
                  height: 7.889cm;
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
       
        <%
        String msg=request.getParameter("msg");
        if(msg!=null)
                       {
            if(msg.equals("exist"))
                       {
        %>
        <script>
            alert("USERNAME ALREADY EXIST");
        </script>
        <%
               }}
        %>
             
             
         <div class="outerdiv">
         <div class="innerdiv">
            <form method="post" action="signupcheck.jsp">
        <h2>SIGN UP</h2>
         <input type="text" spellcheck="false" name="name"  placeholder=" Name" pattern="[A-Za-z]{4,15}" title="ENTER FOUR ALPHABETS" /><br><br>
       <input type="text" spellcheck="false"  name="username"  placeholder=" Username"  required=""/><br><br>
     <im class="fa-solid fa-eye" id="eye" onclick="toggle()"></im>   <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 4 or more characters" placeholder=" Password" /><br><br>
       <input type="email"  name="email" placeholder=" Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required=""/><br><br>
      <input type="text"  name="phone" placeholder=" Phone No" pattern="[6-9]{1}[0-9]{9}" 
       title="Phone number with 6-9 and remaing 9 digit with 0-9" required=""> <br><br>
       
      <input type="submit" value="SIGN UP" title="SIGN UP"><br>
      <h4>Already have an account <a href="login.jsp" title="LOGIN">Login</a></h4>
            </form>
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
    </body>
</html>
    
