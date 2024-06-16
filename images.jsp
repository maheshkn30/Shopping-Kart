<%-- 
    Document   : images
    Created on : 17 Aug, 2022, 10:22:18 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>mahes</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>JSP Page</title>
        <style>
            
           
         
             
             
            
            .wrapper{
                font-family: sans-serif;
                width:80%;
                margin:0 auto;
                position:relative;
                
                
            }
            img{
                opacity: 1;
                background-size: cover;
                display:block;
                width:50%;
                height:auto;
                transition:  .5s ease;
            }
            .content{
                position:absolute;
                top: 45%;
                left:25%;
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
            
            </style>
    </head>
    <body>
       
             <div class="wrapper">
              <img src="pics/sum.jpg" alt="">
              <div class="overlay">
                  <div class="content">
                      the title <a>shop now</a>
                  </div>
              </div>
              </div>
        
        <div class="wrapper">
              <img src="pics/sum.jpg" alt="">
              <div class="overlay">
                  <div class="content">
                      the title <a>shop now</a>
                  </div>
              </div>
              </div>
        
        <div class="wrapper">
              <img src="pics/sum.jpg" alt="">
              <div class="overlay">
                  <div class="content">
                      the title <a>shop now</a>
                  </div>
              </div>
              </div>
        
      
        
        <button onclick="fun()">click me</button>
        <script>
            function fun(){
         swal("We value the trust you place in us and recognize the importance of secure transactions and information privacy.This privacy policy describes how SHOPPING CART collect use,share,protect or otherwise process your personal info through shopping.contact.com \n\
 If you do not agree please do not use or access our platform");
            }
            
            
        </script>
    </body>
</html>
