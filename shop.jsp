<%-- 
    Document   : shop
    Created on : 4 Aug, 2022, 7:08:46 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOP</title>
             <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
              <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oleo+Script+Swash+Caps&display=swap" rel="stylesheet">
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
                 color:orange;
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
           padding-left:1.8cm;
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
            
             
             <%--hero--%>
             #page-header{
                    background-image: url('pics/b1.jpg');
                 width:100%;
                 height:40vh;
                      background-size: cover;
                background-position:top 25% right 0%;
                 margin-bottom:0.5cm;
                 display:flex;
                 
             }
           
               #page-header h2{
                   
                   position: absolute;
                     font-size: 50px;
                   padding-left:14cm;
                   padding-top:1cm;
                   color:white;
                   font-family: 'Oleo Script Swash Caps', cursive
               }
                #page-header p{
                    font-family: 'Fira Sans', sans-serif;
                   position: absolute;
                     font-size: 30px;
                   padding-left:11cm;
                   padding-top:2.8cm;
                   color:white;
               }
               
               
             <%--collections--%>
              .wrapper{
                font-family: sans-serif;
                
                margin:0 auto;
                position:relative;
                margin-bottom: 10px;
                
            }
            img{
                opacity: 1;
                background-size: cover;
                display:block;
               
                height:auto;
                transition:  .5s ease;
            }
            .content{
                position:absolute;
                top: 50%;
                left:50%;
                transform: translate(-50%,-50%);
                -ms-transform:  translate(-50%,-50%);
                text-transform: uppercase;
                font-size: 40px;
                color: black;
                white-space: nowrap;
                overflow: hidden;
            }
            
            .content a{
                font-size: 24px;
                display: block;
                background-color: red;
                text-decoration:none;
                color:white;
                text-align: center;
                padding: 10px;
                cursor: pointer;
            }
            .overlay{
                opacity: 0;
               }
               
               .wrapper:hover img{
                   opacity: .5
               }
               .wrapper:hover .overlay{
                   opacity: 1
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
            }
          <%--footer--%>

    .container{
    line-height: 1.5;
	max-width: 1150px;
	margin:auto;
}
.row{
	display: flex;
	flex-wrap: wrap;
}
ul{
	list-style: none;
}
.footer{
	background-color: #24262b;
    padding-bottom:2cm;
}
.footer-col{
   width: 20%;
   padding: 0 20px;
}
.footer-col h4{
    font-family: 'Poppins', sans-serif;
	font-size: 19px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
}
.footer-col h4::before{
	content: '';
	position: absolute;
	left:0;
	bottom: -10px;
	background-color: #e91e63;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}
.footer-col ul li:not(:last-child){
	margin-bottom: 10px;
}
.footer-col ul li a{
	font-size: 16px;
	text-transform: capitalize;
	color: #ffffff;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.3s ease;
}
.footer-col ul li a:hover{
	color: #ffffff;
	padding-left: 10px;
}
.footer-col .social-links a{
	display: inline-block;
	height: 40px;
	width: 40px;
	background-color: rgba(255,255,255,0.2);
	margin:0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
	color: #24262b;
	background-color: #ffffff;
}  
             
             
   
 <%--quote--%>

    #mx{
    background-color: #22313F;
    margin-bottom: 10px;
     display: flex;
    justify-content: center;
    align-items: center;
   }
  .quote-wrapper {
    width: 900px;
    height: 8.5cm;
    margin: 0 10px;
}
 #mx  .quote-wrapper  .tit{
   font-family: 'Dancing Script', cursive;
}
.quote-wrapper .quote-heading {
    text-align: center;
   }
.quote-wrapper .quote-heading h2 {
    font-family: 'Lobster Two', cursive;
    font-weight: 400;
    color: #fff;
}
.quote-wrapper .quote-body {
    width: 100%;
    height: 100px;
    padding: 50px 35px;
    background-color: #fff;
    border-radius: 5px;
}
.quote-wrapper .quote-body .iicon-quote {
  
    text-align: center;
    font-size: 18px;
    color: #22313F;
    height: 42px;
    overflow: auto;
}
.quote-wrapper .quote-body .iicon-quote .icon {
    margin-right: 5px;
    
}
.quote-wrapper .quote-body .author {
    text-align: right;
    margin-top: 15px;
}
.quote-wrapper .quote-body .quote-buttons {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 12px;
    border-top: 1px solid #93a0ac;
    padding: 7px 0;
    padding-left:10.5cm;
}
.quote-wrapper .quote-body .quote-buttons .social a {
    font-size: 40px;
    color: #455261;
    transition: .3s ease;
}
.quote-wrapper .quote-body .quote-buttons .social a:hover {
    color: #00acee;
}
.quote-wrapper .quote-body .quote-buttons .btn button {
    border: none;
    outline: none;
    padding: 10px 15px;
    background-color: #455261;
    color: #fff;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
}
.quote-wrapper .quote-body .quote-buttons button:active {
    background-color: red;
}
.quote-wrapper .foooter {
    text-align: center;
    margin-top: 10px;
}
.quote-wrapper .foooter p {
    color: #fff;
}
.quote-wrapper .foooter p a {
    text-decoration: none;
    color: #00ff9e;
}
      
             
             
            </style>
    </head>
    <body>
         <%
        
        String username= (String)session.getAttribute("username");
    
        %>
        <section id="img">
          <a href="lorder.jsp"><img src="pics/iconn.png" width="125" class="logo"></a>
            <div class="innerdiv">
                
            <ul id="list">
         <li><a  href="homepage.jsp">HOME</a></li>
             <li> <a class="active" href="#">SHOP</a></li>
             <li> <a  href="men.jsp">MEN</a></li>
            <li> <a href="women.jsp">WOMEN</a></li>
             <li> <a href="#">CONTACT</a></li> 
             
             
  <input type="search" placeholder="Search products..." spellcheck="false">
           
      
    <li><a href="profileview.jsp" title="VIEW PROFILE">
              <span class="profile"><%=username%></span></h6>
     <lord-icon src="https://cdn.lordicon.com/dklbhvrt.json"  trigger="loop-on-hover"
     colors="primary:#121331"
     state="hover" ></lord-icon></a>
             
      <div class="shop">  
        <a href="cart.jsp" title="MY CART"><span class="profile">CART</span><lord-icon 
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
        
        <%--footer--%>
        
              <section id="page-header">
            <h2>#Stay Home</h2>
           <p>Save more with coupons & up to 70% off!</p>
            
        </section>
        
        
       <%--collections--%>
        
        <div class="wrapper">
              <img src="pics/woo.jpg" alt="" width="1335">
              <div class="overlay">
                  <div class="content">WOMEN<a href="women.jsp">shop now</a>
                  </div>
              </div>
              </div>
       
       <div class="wrapper">
              <img src="pics/mee.jpg" alt="" width="1335">
              <div class="overlay">
                  <div class="content">  MEN<a href="men.jsp">shop now</a>
                  </div>
              </div>
              </div>
        
              
       
       
               
      <%--FOOTER--%>
     <footer class="footer">
  	 <div class="container">
  	 	<div class="row">
                <div class="footer-col">
  	 			<h4>Shopping Cart</h4>
  	 			<ul>
	<li><a href="#" onclick="funn()">about us</a></li>
       <li><a href="#" onclick="funnn()">our features</a></li>
       <li><a href="#" onclick="funm()">privacy policy</a></li>
  	
  	 	</ul>
                                
                   
                   
  	 </div>
  	<div class="footer-col">
  	 <h4>get help</h4>
  	 	<ul>
  	 	<li><a href="contact.jsp">contact</a></li>
  		<li><a href="cart.jsp">Cart</a></li>
  	 
  	 	
  	 	<li><a href="bill.jsp">payment options</a></li>
  	 	</ul>
  	 	</div>
  	 <div class="footer-col">
  	<h4>Shop by</h4>
  	 	<ul>
  	 	<li><a href="men.jsp">men</a></li>
  	  <li><a href="women.jsp">women</a></li>
  		
  		</ul>
  	 	</div>
  	 <div class="footer-col">
  	 <h4>follow us</h4>
  	 <div class="social-links">
  	 <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
  	 <a href="https://twitter.com/i/flow/login"><i class="fab fa-twitter"></i></a>
  	<a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
 	
                           		
        <a class="button" href=""><i class="fa-solid fa-circle-arrow-up"></i></a>
  	 </div>
         
      
  	</div>
           </div>  
  	 </div>
     </footer>
      
     
      
 
       
           <script type="text/script">
           const popuptext = document.querySelector('#user-btn');
          Const scrollToTop = () => {
              window.scroll({
                  top: 0;
                  behavior: 'smooth',
              });
          };
          document.querySelector("button").onclick=scrollToTop;
      </script>
        
          <script>
            function funn(){
         swal("SHOPPING CART is a one stop shop for all your fashion and lifestyle needs.Shopping Cart aims at providing a hassle free and enjoyable shopping experience to customers with wide range of brands and products on its portal..");
            }
        </script>
         <script>
            function funnn(){
         swal("1.ORDER\n\
2.FREE SHIPPING\n\
3.HAPPY CUSTOMERS\n\
4.CONTACT ANYTIME ");
            }
        </script>
           <script type="text/script">
           const popuptext = document.querySelector('#user-btn');
          Const scrollToTop = () => {
              window.scroll({
                  top: 0;
                  behavior: 'smooth',
              });
          };
          document.querySelector("button").onclick=scrollToTop;
      </script>
     <script>
            function funm(){
         swal("We value the trust you place in us and recognize the importance of secure transactions and information privacy.This privacy policy describes how SHOPPING CART collect use,share,protect or otherwise process your personal info through shopping.contact.com \n\
 If you do not agree please do not use or access our platform");
            }
        </script>
      
      <script>
            function fun(){
          swal("Good job!", "email sent succesfully!", "success");
            }
        </script>
        
    </body>
</html>
