<%-- 
    Document   : sellerhome
    Created on : 20 Aug, 2022, 7:39:59 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELLER HOMEPAGE</title>
        <link href="https://fonts.googleapis.com/css2?family=Secular+One&display=swap" rel="stylesheet">
         <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
         <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
         <style>
          
      /* CORE STYLES */
:root {
  --primary-color: rgba(13, 110, 139, 0.75);
  --overlay-color: rgba(24, 39, 51 , 0.85);
  --menu-speed: 0.75s;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Poppins', sans-serif;
  line-height: 1.4;
}

.container {
  max-width: 960px;
  margin: auto;
  overflow: hidden;
  padding: 0 3rem;
}

.showcase {
  background: rgba(13, 110, 139, 0.75);
  color: #fff;
  height: 100vh;
  position: relative;
}

.showcase:before {
  content: '';
  
    background-image: url('pics/bbb.jpg');
    background-size: cover;
    background-repeat: no-repeat;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
}

.showcase .showcase-inner {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  height: 100%;
}

.showcase h1 {
  font-size: 90px;
}

.showcase p {
  font-size: 30px;
}

.btn {
  display: inline-block;
  border: none;
  background:  rgba(13, 110, 139, 0.75);
  color: #fff;
  padding: 0.75rem 1.5rem;
  margin-top: 1rem;
  transition: opacity 1s ease-in-out;
  text-decoration: none;
}

.btn:hover {
  opacity: 0.7;
}

/* MENU STYLES */
.menu-wrap {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 1;
}

.menu-wrap .toggler {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 2;
  cursor: pointer;
  width: 50px;
  height: 50px;
  opacity: 0;
}

.menu-wrap .hamburger {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  width: 60px;
  height: 60px;
  padding: 1rem;
  background:  rgba(13, 110, 139, 0.75);
  display: flex;
  cursor: pointer;
  align-items: center;
  justify-content: center;
}
.mahe{
    cursor: pointer;
    
}
.mahee {
   
    text-decoration: none;
    list-style: none;
  color: #fff;
  font-size: 45px;
   font-family: 'Secular One', sans-serif;
  padding: 1rem;
}
.mahe:hover{
     text-decoration: underline;
}
.mahee:hover{
     text-decoration: underline;
}
.mahesh{
     cursor: pointer;
     
}
.mahesh:hover{
    text-decoration: underline;
}

/* Hamburger Line */
.menu-wrap .hamburger > div {
  position: relative;
  flex: none;
  width: 100%;
  height: 2px;
  background: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.4s ease;
}

/* Hamburger Lines - Top & Bottom */
.menu-wrap .hamburger > div::before,
.menu-wrap .hamburger > div::after {
  content: '';
  position: absolute;
  z-index: 1;
  top: -10px;
  width: 100%;
  cursor: pointer;
  height: 2px;
  background: inherit;
}

/* Moves Line Down */
.menu-wrap .hamburger > div::after {
  top: 10px;
}

/* Toggler Animation */
.menu-wrap .toggler:checked + .hamburger > div {
  transform: rotate(135deg);
}

/* Turns Lines Into X */
.menu-wrap .toggler:checked + .hamburger > div:before,
.menu-wrap .toggler:checked + .hamburger > div:after {
  top: 0;
  transform: rotate(90deg);
}

/* Rotate On Hover When Checked */
.menu-wrap .toggler:checked:hover + .hamburger > div {
  transform: rotate(225deg);
}

/* Show Menu */
.menu-wrap .toggler:checked ~ .menu {
  visibility: visible;
}

.menu-wrap .toggler:checked ~ .menu > div {
  transform: scale(1);
  transition-duration: 0.75s;
}

.menu-wrap .toggler:checked ~ .menu > div > div {
  opacity: 1;
  transition:  opacity 0.4s ease 0.4s;
}

.menu-wrap .menu {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  visibility: hidden;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
}

.menu-wrap .menu > div {
  background: rgba(13, 110, 139, 0.75);
  border-radius: 50%;
  width: 200vw;
  height: 200vw;
  display: flex;
  flex: none;
  align-items: center;
  justify-content: center;
  transform: scale(0);
  transition: all 0.4s ease;
}

.menu-wrap .menu > div > div {
  text-align: center;
  max-width: 90vw;
  max-height: 100vh;
  opacity: 0;
  transition: opacity 0.4s ease;
}

.menu-wrap .menu > div > div > ul > li {
  list-style: none;
  color: #fff;
  font-size: 45px;
   font-family: 'Secular One', sans-serif;
  padding: 1rem;
}

.menu-wrap .menu > div > div > ul > li > a {
  color: inherit;
  text-decoration: none;
  transition: color 0.4s ease;
}


  </style>
</head>
<body>
       <%
        
        String name= (String)session.getAttribute("name");
    
        %>
  <div class="menu-wrap">
    <input type="checkbox" class="toggler">
    <div class="hamburger"><div></div></div>
    <div class="menu">
      <div>
        <div>
          <ul>
            <li><a href="sellerhome.jsp">HOME</a></li>
            <li><label class="mahe" onclick="funn()">SELLER DETAILS</label></li>
            <a class="mahee" href="product.jsp?msg=a"> <li><label class="mahesh">PRODUCTS</label></li></a>
             
            <li><label class="mahe" onclick="fun()">ABOUT</label></li>
          
           </ul>
        </div>
      </div>
    </div>
  </div>

  <header class="showcase">
    <div class="container showcase-inner">
        <h1>Welcome To <b>SHOPPING CART</b></h1>
          <h2> Hello! <%=name%></h2>
      <p> Happy Selling!!</p>
        </div>
      
      
      
        <script>
            function fun(){
         swal("SHOPPING CART is a one stop shop for all your fashion and lifestyle needs.Shopping Cart aims at providing a hassle free and enjoyable shopping experience to customers with wide range of brands and products on its portal..");
            }
        </script>
        <script>
            function funn(){
         swal("The use of the Platform is available only to persons who can form legally binding contracts under the Indian Contract Act, 1872. Persons who are incompetent to contract within the meaning of the Indian Contract Act, 1872 including minors, un-discharged insolvents etc. are not eligible to use the Platform. If you are a minor i.e. under the age of 18 years, you shall not register as a seller on the Platform, transact or use the Platform. SHOPPING CART reserves the right to terminate your registration and/or refuse you access to the Platform if it is brought to Flipkart’s notice or discovered that you are under the age of 18 years. If you register as a business entity, you represent that you are duly authorized by the business entity to accept the ToU and you have the authority to bind the business entity to the ToU..");
            }
        </script>
  </header>
</body>
</html>   