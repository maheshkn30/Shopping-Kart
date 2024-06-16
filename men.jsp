<%-- 
    Document   : men
    Created on : 31 Jul, 2022, 6:25:38 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page  language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MEN</title>
      
         <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
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
                 color: red;
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

          <%--SHOW BY WOMEN--%>  
             #heroo{
            background-image: url('pics/black.jpg');
            height:15vh;
             background-size: cover;
             }
            
            #heroo  .women{
              position: absolute;
             color:whitesmoke;
            padding-left:13cm;
            font-size: 35px;
         font-family: 'Kaushan Script', cursive;
            }
            
                   #heroo .womenn{
                        position: absolute;
                   color:red;
                   padding-left:17.3cm;
                 font-size: 35px;
                    font-family: 'Kaushan Script', cursive;
                   }
                   
                   .con{
            position: absolute;
           padding-left:33cm;
           padding-top:0.8cm;
           font-size: 20px;
           width: 50px;
           height: 50px;
          
                   }
                  
              <%--IMAGE DISPLAY--%>  
           
             .gallery{
             padding: 2.8em;
/*    display: grid;
    grid-gap: 1.5em;
    grid-template-columns: repeat(auto-fit, minmax(450px, 1fr));*/
    display: flex;
      width:93%;
      flex-wrap: wrap;
       row-gap:1.5cm;
       column-gap:26px;
              color:black;
    font-size:17px;
     font-family: 'Poppins', sans-serif;
                text-decoration: none;
                
/*flex-direction*/
   
             }
             .gallery img{
                display:block;
                width: 290px;
                height: auto;
                    
             }
            
             .desc{
                 padding-left:2.5cm;
                 color:black;
                 font-size:27px;
                 font-family: 'Poppins', sans-serif;
                 text-decoration:none;
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
         <a href="lorder.jsp"><img src="pics/iconn.png" width="125" class="logo"></a>
         <div class="innerdiv">
                
         <ul id="list">
         <li><a  href="homepage.jsp">HOME</a></li>
         <li> <a href="shop.jsp">SHOP</a></li>
         <li> <a class="active" href="men.jsp">MEN</a></li>
         <li> <a href="women.jsp">WOMEN</a></li>
          <li> <a href="contact.jsp">CONTACT</a></li> 
                          
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
                
          <%--SHOW BY MEN--%>
         
       <section id="heroo">
           <h1 class="women">SHOP BY</h1> <h1 class="womenn">MEN</h1>
           <a href=""> <div class="con"><lord-icon 
    src="https://cdn.lordicon.com/auvicynv.json"
    trigger="hover"
     colors="primary:white">
        </lord-icon></div></a>
        </section>
        
       
       
        <%--IMAGE DISPLAY--%>
                         
      <div class="gallery"> 
                   
                     
             <%
                  Connection con = null;
                  Statement st = null;
                  ResultSet rs = null;
                   try {
                   con = DbConnection.getConnection();
                   st = con.createStatement();
                  rs = st.executeQuery("select * from product where gen='men'");
                    while (rs.next()) {%>
                           
          <div class="img-container">                          
    <img src="view3.jsp?name=<%=rs.getString("name")%>" width="100" height="100"/>      
      <div class="desc"><%=rs.getString("price")%></div> 
                  
                     
                        <%
                        String a1=rs.getString("proname");
                    a1=a1.replace(" ","_");
out.println("<a href=search.jsp?proname="+a1+">"+rs.getString("proname")+ " </a> </div> ");

                                }
                                    
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                       
                 
                     </div>
                       
      </div>
    
    </body>
</html>
