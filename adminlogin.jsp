<%-- 
    Document   : adminlogin
    Created on : 20 Aug, 2022, 5:20:55 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
  <head>
   <title>ADMIN LOGIN</title>
     <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
  <style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
  margin: 0;
  padding: 0;
background-image: url('pics/pin.jpg');
 background-size: cover;
 height:50vh;
  width:90%;
  height: 100vh;
  overflow: hidden;
}
.center{
  position: absolute;
  top: 50%;
  left: 20%;
  transform: translate(-50%, -50%);
  width: 450px;
  background: white;
  border-radius: 10px;
  box-shadow: 10px 10px 15px rgba(0,0,0,0.05);
}
.center h1{
  text-align: center;
  padding: 20px 0;
  border-bottom: 1px solid silver;
}
.center form{
  padding: 0 40px;
  box-sizing: border-box;
}
form .txt_field{
  position: relative;
  border-bottom: 2px solid #adadad;
  margin: 30px 0;
}
.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 50px;
  font-size: 25px;
  border: none;
  background: none;
  outline: none;
}
.txt_field label{
  position: absolute;
  top: 50%;
  left: 5px;
  color: #adadad;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
  transition: .5s;
}
.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0%;
  height: 2px;
  background: #2691d9;
  transition: .5s;
}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top: -5px;
  color: #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{
  width: 100%;
}

input[type="submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
}
input[type="submit"]:hover{
  border-color: #2691d9;
  transition: .5s;
}

  </style>
  </head>
  <body>
       <form method="post" action="admincheck.jsp">
    <div class="center">
        <h1> SHOPPING CART</h1>
      <h1>ADMIN LOGIN</h1>
     
        <div class="txt_field">
          <input type="text" name="username" required="">
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
          <input type="password" name="password" required="">
          <span></span>
          <label>Password</label>
        </div>
        
      <input type="submit" value="LOGIN" title="LOGIN">
        <br>
        </div>
   </form>
  </body>
</html>
