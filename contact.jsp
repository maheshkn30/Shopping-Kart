<%-- 
    Document   : contact
    Created on : 18 Aug, 2022, 11:08:11 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTACT</title>
          <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
           <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
        
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Aboreto&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
         <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
        <style>
             <%--MENU BAR--%>
             
            body{
                width: 99%;
            }
            
            .innerdiv{
                padding-top: 0.5cm;
            }
            
            #img{
             display: flex;
             alignment-adjust: flex-start;
             justify-content: flex-start;
             padding-left: 1cm;
             padding-top: 0.5cm;
             padding-bottom: 0.3cm;
             background: linear-gradient(to top,#d0dae0,#e2ebf0);
             box-shadow: 2px 5px 15px rgba(0,0,0,0.06);
             margin-bottom: 0.3cm;  
             }               
                       
            #list{
               display: flex;
               alignment-adjust: central;
              }
              
            #list li{
                list-style: none;
               padding: 0 20px
             }
             
             #list li a{
            text-decoration: none;
             font-size: 20.5px;
            font-family: 'Lato', sans-serif;
            font-weight: 800;
            color: black;
            transition: 0.3s ease; 
             }
             
             #list li a:hover{
                 color: #088178;
            }
            
            #list li a.active{
                 color: blue;
               }  
                       
          input[type=search]{
          background-color:  white;
          border: none;
          border-radius: 1px;
          font-family: 'Montserrat', sans-serif;
          font-size: 16px;
          width: 300px;
          height:1cm;
          color: black;
          padding-left:1cm;
           }
             
             input[type=search]:hover{
           background-color: white;
          font-family: 'Montserrat', sans-serif;
          font-size: 16px;
           border: none;
          border-radius: 1px;
          width: 300px;
          height:1cm;
          color: black;
          padding-left:1cm
                   }
                   
          
            lord-icon{
          position: absolute;
          padding:1px;
           font-size: 20px;
           width: 50px;
           height: 40px;
           color: black;
            }
         
            .shop{
            position: absolute;
           font-size: 20px;
           width: 50px;
           height: 60px;
           color: black;
           padding-left:1.6cm;
             }
             .eshop{
            position: absolute;
           font-size: 20px;
           width: 50px;
           height: 50px;
           color: black;
          padding-left:3.5cm;
             }
               .eeshop{
            position: absolute;
           font-size: 20px;
           width: 50px;
           height: 60px;
           color: black;
          padding-left:5cm;
             }
             
            :root {
  --primary-color: #010712;
  --secondary-color: #818386;
  --bg-color: #FCFDFD;
  --button-color: #3B3636;
  --h1-color: #3F444C;
}

[data-theme="dark"] {
  --primary-color: #FCFDFD;
  --secondary-color: #818386;
  --bg-color: #010712;
  --button-color: #818386;
  --h1-color: #FCFDFD;
}

* {
  margin: 0;
  box-sizing: border-box;
  transition: all 0.3s ease-in-out;
}

.contact-container {
  display: flex;
  width: 100;
  height: 100vh;
  background: var(--bg-color);
}

.left-col {
  width: 45vw;
  height: 100%;
  background-image: url('pics/conn.jpg');
  background-size: cover;
  background-repeat: no-repeat;
}

.right-col {
  background: var(--bg-color);
  width: 50vw;
  height: 100vh;
  padding: 5rem 3.5rem;
}

h1, label, button, .description {
  font-family: 'Jost', sans-serif;
  font-weight: 400;
  letter-spacing: 0.1rem;
}

h1 {
  color:var(--h1-color);
  text-transform: uppercase;
  font-size: 2.5rem;
  letter-spacing: 0.5rem;
  font-weight: 300;
}

p {
  color: var(--secondary-color);
  font-size: 0.9rem;
  letter-spacing: 0.01rem;
  width: 40vw;
  margin: 0.25rem 0;
}

label, .description {
  color: var(--secondary-color);
  text-transform: uppercase;
  font-size: 0.625rem;
}

form {
  width: 31.25rem;
  position: relative;
  margin-top: 2rem;
  padding: 1rem 0;
}

input, textarea, label {
  width: 40vw;
  display: block;
}

p, placeholder, input, textarea {
  font-family: 'Helvetica Neue', sans-serif;
}

input::placeholder, textarea::placeholder {
  color: var(--primary-color);
}

input, textarea {
  color: var(--primary-color);
  font-weight: 500;
  background: var(--bg-color);
  border: none;
  border-bottom: 1px solid var(--secondary-color);
  padding: 0.5rem 0;
  margin-bottom: 1rem;
  outline: none;
}

textarea {
  resize: none;
}

button {
  text-transform: uppercase;
  font-weight: 300;
  background: var(--button-color);
  color: var(--bg-color);
  width: 10rem;
  height: 2.25rem;
  border: none;
  border-radius: 2px;
  outline: none;
  cursor: pointer;
}

input:hover, textarea:hover, button:hover {
  opacity: 0.5;
}

button:active {
  opacity: 0.8;
}

.profile{
               padding-left:0.3cm;
                padding-top:1cm;
                position:absolute;
                font-size:14px;
                cursor:pointer;
                 text-transform: uppercase;
               display:hidden;
               text-transformation:uppercase;
            }
            .profile:hover{
              display:none;
            
            </style>
            </head>
    
<body>
     <%
        
        String username= (String)session.getAttribute("username");
    
        %>
  <%--MENU BAR--%>
   
        <section id="img">
        <a href="lorder.jsp"><img src="pics/iconn.png" width="132" class="logo"></a>
         <div class="innerdiv">
                
         <ul id="list">
         <li><a  href="homepage.jsp">HOME</a></li>
         <li> <a href="shop.jsp">SHOP</a></li>
         <li> <a href="men.jsp">MEN</a></li>
         <li> <a  href="women.jsp">WOMEN</a></li>
          <li> <a class="active" href="contact.jsp">CONTACT</a></li> 
                          
      <input type="search" placeholder="Search products..." spellcheck="false">
          
      <li><a href="profileview.jsp" title="MY PROFILE">
              <span class="profile"><%=username%></span></h6>
     <lord-icon src="https://cdn.lordicon.com/dklbhvrt.json"  trigger="loop-on-hover"
     colors="primary:#121331"
     state="hover" ></lord-icon></a>
             
      <div class="shop">  
        <a href="cart.jsp"title="MY CART"><span class="profile">CART</span><lord-icon 
    src="https://cdn.lordicon.com/aoggitwj.json"
    trigger="loop-on-hover"
    delay="1500"
    colors="primary:#121331"></lord-icon></a>
         </div>
          
         <div class="eshop">  
       <a href="bill.jsp" title="PAYMENT"><span class="profile">PAY</span><lord-icon
    src="https://cdn.lordicon.com/qlncusvo.json"
    trigger="hover">
</lord-icon></a>
         </div>
          
      <div class="eeshop">  
      <a href="yourorder.jsp" title="MY ORDERS"><span class="profile">INVOICE</span><lord-icon
    src="https://cdn.lordicon.com/kkcllwsu.json"
        trigger="loop-on-hover"
    >
</lord-icon></a>
         </div>

      </li>
      </ul>
      </div>
      </section> 
             

        
<div class="contact-container">
  <div class="left-col">
  </div>
  <div class="right-col">
   
  
 
   
    <h1>Contact us</h1>
    
    <form method="post" action="contactcheck.jsp">
      <label for="name">Full name</label>
  <input type="text" id="name" name="name" placeholder="Your Full Name" required="">
      <label for="email">Email Address</label>
  <input type="email" id="email" name="email" placeholder="Your Email Address" required="">
      <label for="message">Message</label>
  <textarea rows="6" placeholder="Your Message" id="message" name="msg" required=""></textarea>
      <button  type="submit" id="submit" >Send</button>
    </form>
    <div id="error"></div>
<div id="success-msg"></div>
  </div>
</div>
        
 
  
        
  
    	</body>
</html>
