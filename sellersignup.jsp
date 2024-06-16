<%-- 
    Document   : sellersignup
    Created on : 29 Jul, 2022, 7:08:58 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
              <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
          <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
          <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
         <title>SELLER SIGNUP</title>
    </head>
     <style>
            body{
                background: linear-gradient(to top,#614385,#516395);
           background-repeat: no-repeat;
              background-size:cover;
              
            }
       .outerdiv{
                padding-left: 13cm;
                padding-top: 0.3cm;
            }
            
            <%--border--%>
            .innerdiv{
             background-image: url('pics/nnm.jpg');
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
            alert("NAME ALREADY EXIST");
        </script>
        <%
               }}
        %>
         <div class="outerdiv">
         <div class="innerdiv">
            <form method="post" action="selsigncheck.jsp">
        <h2>SELLER  REGISTER</h2>
         <input type="text" spellcheck="false" name="name"  placeholder=" SELLER NAME" required="" pattern="[A-Za-z]{4,15}" title="ENTER FOUR ALPHABETS"/><br><br>
       
     <im class="fa-solid fa-eye" id="eye" onclick="toggle()"></im>   <input type="password" id="password" name="password" placeholder=" SET SELLER ID" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 4 or more characters" required=""/><br><br>
      <input type="text"  name="phone" placeholder=" PHONE NO" pattern="[6-9]{1}[0-9]{9}" 
       title="Phone number with 6-9 and remaing 9 digit with 0-9" required=""/><br><br>
       <input type="email"  name="email" placeholder=" EMAIL" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required=""/><br>
        <form method="POST" action="http://www.cs.tut.fi/cgi-bin/run/~jkorpela/echo.cgi">
       <h6> <input type="checkbox" name="checkbox" value="check" />By continuing,  <a href="" onclick="funm()">Terms &
       Condition Policy</a><br>
      </h6>
        
       <input type="submit" onclick="if(!this.form.checkbox.checked){alert('You must agree to the terms first.');return false}" value="REGISTER"><br>
       </form>
      <h4>Already have an account <a href="sellerlogin.jsp">Login</a></h4>
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
              <script>
            function funm(){
         swal("For the purpose of the Terms of Use (hereinafter referred to as “ToU”), wherever the context so requires, ‘you’ and ‘your’ shall relate to any natural or legal person who has agreed to become a seller on the Platform by providing registration data while registering on the Platform using computer systems. The word ‘user’ shall collectively imply a seller, a buyer, and any visitor on the Platform and the terms ‘we’, ‘us’ and ‘our’ shall mean SHOPCART");
            }
        </script>
    </body>
</html>
    
