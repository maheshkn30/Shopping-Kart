<%-- 
    Document   : homepage
    Created on : 21 Jul, 2022, 7:19:28 PM
    Author     : PC
--%>
                    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
      
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
                 color: #6a11cb;
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
            
           <%--MAHE STORE--%>
             #heroo{
                background-image: url('pics/flash.jpg');
                 height:100vh;
                 width:100%;
                background-size: cover;
                background-position:top 25% right 0%;
                        }
              
              #heroo h1{
                   position: absolute;
                   padding-left:25cm;
                    font-size: 40px;
                    padding-top:14cm;
                   color:white;
                   font-family: 'Kaushan Script', cursive;
                   }
                   
           
                   <%--IMAGE SLIDER--%>
                
                    .slider-box {
                        width     : 100%;
                        max-height: 125vh;
                        position  : relative;
                        overflow  : hidden;
                        margin    : 30px auto;
                    }

                    #slider {
                        width     : 100%;
                        display   : inline-flex;
                        transition: 0.7s;
                    }

                    #slider img {
                        width: 100%;
                    }

                    .indicators {
                        position : absolute;
                        left     : 50%;
                        bottom   : 20px;
                        transform: translateX(-50%);
                    }

                    .indicators span {
                        display      : inline-block;
                        width        : 15px;
                        height       : 15px;
                        border-radius: 50%;
                        background   : rgba(255, 255, 255, 0.5);
                        cursor       : pointer;
                    }

            
              <%--POSTER--%>
                #hero{
                 background-image: url('pics/www.jpg');
                 height:110vh;
                 width:100%;
                background-size: cover;
                background-position:top 25% right 0%;
              }
              
              #hero h4{
                   position: absolute;
                   padding-left:4cm;
                   font-family: 'Aboreto', cursive;
                    font-size: 50px;
                    padding-top:5cm;
                   color:red;
                 }
          #hero h1{
                   position: absolute;
                   padding-left:4.2cm;
                 font-family: 'Poppins', sans-serif;
                   font-size: 30px;
                   padding-top:7.6cm;
              }
              #hero h2{
                   position: absolute;
                   padding-left:4.2cm;
                   font-family: 'Poppins', sans-serif;
                   font-size: 30px;
                 padding-top:8.5cm;
              }
                #hero h3 a{
                   position: absolute;
                   font-family: 'Bebas Neue', cursive;
                   padding-left:4cm;
                   font-size: 75px;
                   padding-top:12cm;
                    text-decoration: none;
            }
            
              #hero p{
                   position: absolute;
                   padding-left:3.8cm;
                   font-family: 'Edu VIC WA NT Beginner', cursive;
                   font-size: 23px;
                 padding-top:13.5cm;
                   
              }
           
              
             <%--OUR SERVICES--%>
                    .heading{
                     text-align:center;
                     padding:0.3rem 0; 
                     padding-bottom:0.5rem;
                     font-size:30px;
                     color:red ;
                 }
                 
                .heading span{
                   background-color: #1a2980;
                  color:white;
                  display:inline-block;
                  padding:.5rem 3rem;
                  clip-path:polygon(100% 0,93% 50%,100% 99%,0% 100%,7% 50%,0% 0%);
                }
                     
                 .heading{
                  font-size:25px;
                 }
                 
                .feature .box-container{
                     display:grid;
                     grid-template-columns:repeat(auto-fit,minmax(15rem,5fr));
                }
                 
                 .outterdiv{
                     padding-left:1cm;
                 }
                 .feature .box-container .box{
                    background-color:white;
                    outline: 3px outset #CB6CE6;  
                    outline-offset: 0.3REM;
                    width:80%;
                   text-align:center;
                   margin-bottom:0.8cm;
                 }
                
                   <%--EMAIL--%>
                  #newletter{
                       display:flex;
                       justify-content:space-between;
                       flex-wrap: wrap;
                       align-items:center;
                      background-image: url('pics/yel.png');
                       background-repeat: no-repeat;
                       background-position:20% 30%;
                      margin-bottom:0.4cm;
                   }
                   #font{
                       padding-left:1.8cm;
                       font-family:cursive;
                       font-family: 'Poppins', sans-serif;
                   }
                   .form{
                       padding-right:2cm;
                   }
                   .mm{
                       padding-top:0.1cm;
                       position: absolute;
                       padding-left: 0.1cm;
                     }
                     
                input[type=email]{
              background-color:  white;
              border: 1px solid transparent;
              border-radius: 4px;
              font-family: 'Quicksand', sans-serif;
               font-size: 16px;
              width: 300px;
              height:1cm;
              color: black;
            padding-left:1.1cm;
             }
              
                input[type=email]:hover{
          background-color:  white;
          border: 1px solid transparent;
          border-radius: 4px;
         font-family: 'Quicksand', sans-serif;
          font-size: 16px;
          width: 300px;
          height:1cm;
          color: black;
          padding-left:1.1cm;
           }
           
          input[type=submit]{
           background-color:  #ff3f6c;
        font-family: 'Dancing Script', cursive;
          font-size: 20px;
          width: 120px;
          height:1cm;
          color: white;
          border: none;
           border-radius: 4px;
           cursor: pointer;
          }
          
             
            input[type=submit]:hover{
           background-color:  red;
      font-family: 'Dancing Script', cursive;
          font-size: 20px;
          width: 120px;
          height:1cm;
          color: white;
           border-radius: 4px;
          border: none;
          }
          
          <%--FOTTER--%>


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
                padding-bottom:1cm;
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
        </style>
    </head>
    <body>
        <%
        
        String username= (String)session.getAttribute("username");
    
        %>
        <%--MENU BAR--%>
        <form method="post" action="emailcheck.jsp">
        <section id="img">
         <a href="lorder.jsp"><img src="pics/iconn.png" width="125" class="logo"></a>
         <div class="innerdiv">
                
         <ul id="list">
         <li><a class="active" href="homepage.jsp">HOME</a></li>
         <li> <a href="shop.jsp">SHOP</a></li>
         <li> <a href="men.jsp">MEN</a></li>
         <li> <a href="women.jsp">WOMEN</a></li>
          <li> <a href="contact.jsp">CONTACT</a></li> 
                          
      <input type="search" placeholder="Search products..." spellcheck="false">
          
      <li><a href="profileview.jsp" title=" VIEW PROFILE">
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
          
     <div class="eeshop" title="MY ORDER">  
      <a href="yourorder.jsp"><span class="profile">INVOICE</span><lord-icon
    src="https://cdn.lordicon.com/kkcllwsu.json"
        trigger="loop-on-hover"
    >
</lord-icon></a>
         </div>

      </li>
      </ul>
      </div>
      </section> 
       
        
       <%--MAHE STORE--%>
       <section id="heroo">
           
           <h1>SHOPPING CART</h1>
        </section>
          
                 
       <%--IMAGE SLIDER--%>
      <div class="slider-box">
        <div id="slider">
            <img src="pics/black_1.jpg" alt="">
            <img src="pics/187.jpg" alt="">
            <img src="pics/mn.jpg" alt="">
              <img src="pics/wn.jpg" alt="">
        </div>
        <div class="indicators">
            <span id="btn1" class="activee"></span>
            <span id="btn2"></span>
            <span id="btn3"></span>
            <span id="btn4"></span>
            
        </div>
    </div>
       
        <%--POSTER--%>
          <section id="hero">
            <h4>Trade-in-offer</h4>
            <h2>Super value deals</h2>
            <h1>On all products</h1>
            <p>Save more with coupons & up to 70% off!</p>
            <h3><a  href="shop.jsp">Shop now</a></h3>
           </section>
           <hr>
        
         <%--OUR SERVICES--%>
        <div class="outterdiv">
        <section class="feature" id="feature">
            <h1 class="heading">OUR <span>FEATURES</span></h1>
            
            <div class="box-container">
                <div class="box">
                    <img src="pics/m2.jpg" width="200" alt="" >
                    <h3>Order</h3>
                    <p>Simple and Basic Ordering System</p>
                </div>
                
                   <div class="box">
                    <img src="pics/m1.jpg" width="200" alt="" >
                    <h3>Free Shipping</h3>
                    <p> Shopping from a great selection at Shopping Cart</p>
                </div>
                
                  <div class="box">
                    <img src="pics/free.jpg" width="200" alt="" >
                    <h3>Happy Customers</h3>
                    <p>Keep Shopping </p>
                </div>
                
                 <div class="box">
                    <img src="pics/m3.jpg" width="200" alt="" >
                    <h3>Contact </h3>
                    <p>Please get in touch and we will be happy to help you</p>
                </div>
                
             
                  </div>       
                </section>
                </div>
          <hr>
            
              <%--EMAIL--%>
    
            <section id="newletter">
              <div class="newsletter">
           <h4 id="font">SIGN UP FOR NEWSLETTER <br>
          Get EMAIL updates out letter shop and <b>special offer</b></h4>
           
             </div>
             <div class="form">
            <div class="mm"> <lord-icon
    src="https://cdn.lordicon.com/iicmtpsq.json"
    trigger="loop-on-hover"
    delay="2000"
    colors="primary:#121331"
    style="width:35px;height:35px">
     </lord-icon></div>
     
        <input type="email" name="email" placeholder="YOUR EMAIL" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
  <input type="submit" onclick="fun()" value="enter" ><br>
   
     </div>
    </section>
            
              
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
     </form>
      
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
        
      <script>
          
            

        var slide = document.getElementById("slider");
        var btn1 = document.getElementById('btn1');
        var btn2 = document.getElementById('btn2');
        var btn3 = document.getElementById('btn3');
        var btn4 = document.getElementById('btn4');

        btn1.onclick = function () {
            slide.style.transform = "translateX(0px)";
            btn1.classList.add('activee');
            btn2.classList.remove('activee');
            btn3.classList.remove('activee');
            btn4.classList.remive('activee');
        };
        btn2.onclick = function () {
            slide.style.transform = "translateX(-100%)";
            btn1.classList.remove('activee');
            btn2.classList.add('activee');
            btn3.classList.remove('activee');
            btn4.classList.remove('activee');
        };
        btn3.onclick = function () {
            slide.style.transform = "translateX(-200%)";
            btn1.classList.remove('activee');
            btn2.classList.remove('activee');
            btn3.classList.add('activee');
            btn4.classList.remove('activee');
        };
        btn4.onclick = function () {
            slide.style.transform = "translateX(-300%)";
            btn1.classList.remove('activee');
            btn2.classList.remove('activee');
            btn3.classList.remove('activee');
            btn4.classList.add('activee');
        };

    </script>


   
    </body>  
</html>
