<%-- 
    Document   : cart
    Created on : 19 Aug, 2022, 10:10:35 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART</title>
      
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
             
            
            <%--table--%>
             table{
                background-repeat: no-repeat;
                background-size: cover;
              border-collapse: collapse;
                width: 70%;
                color:black;
                font-family: 'Kanit', sans-serif;
                font-size: 15px;
                text-align: center;
            }
            th{
                background-color: black;
                color: white;
            }
            tr:nth-child(odd){
               
                background-color: #f2f2f2;
                color: black;
            }
            .data{           
                 color: white;
                padding-left: 6cm;
                font-family: 'Roboto Condensed', sans-serif;
            }
            .delete{
                color: white;
                border: 1px solid;
                width: 45%;
                border-color: black;
                padding-left: 2cm;
                height: 4cm;
                
            }
            .edit{
                color: white;
                 color: white;
                border: 1px solid;
                width: 45%;
                border-color: black;
                padding-left: 2cm;
                height: 4cm;
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
            padding-left:14.9cm;
            font-size: 35px;
         font-family: 'Kaushan Script', cursive;
            }
            
                   #heroo .womenn{
                        position: absolute;
                   color:red;
                   padding-left:16.5cm;
                 font-size: 35px;
                    font-family: 'Kaushan Script', cursive;
                   }
                   
                   .con{
            position: absolute;
           padding-left:18.6cm;
           padding-top:0.9cm;
           font-size: 20px;
           width: 50px;
           height: 50px;
          
                   }
                 
                   
       .content-table {
  border-collapse: collapse;
 
  font-family: sans-serif;
  margin: 25px 0;
  font-size: 20px;
  min-width: 500px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
    font-family: sans-serif;
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding:  11px 45px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
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
            
            .btn{
    font-family: "Roboto", sans-serif;
    font-size: 18px;
    font-weight: bold;
    background: #1E90FF;
    width: 160px;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    text-transform: uppercase;
   
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    -webkit-transition-duration: 0.3s;
    transition-duration: 0.3s;
    -webkit-transition-property: box-shadow, transform;
    transition-property: box-shadow, transform;
}
.btn:hover, .btn:focus, .btn:active{
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
    -webkit-transform: scale(1.1);
    transform: scale(1.1);
}
       
  <%--textbox--%>
              input[type=text]{
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
          input[type=text]:hover{
          width: 200px;
          height:1cm;
          border-radius: 5px ;
          border-color: black;
           cursor: text;
             }
        </style>
             </head>
    <body>
        <%
        
        String uname= (String)session.getAttribute("username");
        %>
        
        <%--MENU BAR--%>
        <section id="img">
         <a href="lorder.jsp"><img src="pics/iconn.png" width="132" class="logo"></a>
         <div class="innerdiv">
                
         <ul id="list">
         <li><a href="homepage.jsp">HOME</a></li>
         <li> <a href="shop.jsp">SHOP</a></li>
         <li> <a href="men.jsp">MEN</a></li>
         <li> <a href="women.jsp">WOMEN</a></li>
          <li> <a href="contact.jsp">CONTACT</a></li> 
                          
      <input type="search" placeholder="Search products..." spellcheck="false">
          
          <li><a href="profileview.jsp" title="MY PROFILE">
              <span class="profile"></span>
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
        
         <%--MY CART--%>
         
       <section id="heroo">
           <h1 class="women">MY</h1><h1 class="womenn">CART</h1>
           <a href=""> <div class="con"><lord-icon
    src="https://cdn.lordicon.com/webtefou.json"
    trigger="hover"
      colors="primary:white">
</lord-icon>

      </div></a>
        </section>
        
        <form method="post" action="bill.jsp">
       <table class="content-table">
            
          <thead>
    <tr>
      <th>USER NAME</th>
      <th>PRODUCT NAME</th>
      <th>NAME</th>
      <th>SIZE</th>
        <th>PRICE</th>
          <th>QUANTITY</th>
            <th>TOTAL AMOUNT</th>
      
        <th>STATUS</th>
    </tr>
  </thead>
            
            
            <%
            String tamount;
            int tamount1,totamount;
            totamount=0;
            tamount1=0;
            rst=stmt.executeQuery("select * from cart where username ='" + uname + "'");
            while(rst.next())
            {
                tamount = rst.getString("totalamt");
                totamount = Integer.parseInt(tamount);
                tamount1 = totamount + tamount1;
                  
          
            %>
            <tbody>
           
         <tr>    <td><%= rst.getString("username")%></td>
                <td><%= rst.getString("proname")%></td>
                 <td><%= rst.getString("name")%></td>
                <td><%= rst.getString("size")%></td>
                <td><%= rst.getString("price")%></td>   
                <td><%= rst.getString("quantity")%></td>
               <td><%= rst.getString("totalamt")%></td>
              <td><%= rst.getString("status")%></td>
            
                <%
               }
     tamount=String.valueOf(tamount1);
%>
        
     </tr>
            </tbody>
        </table>

<input type="hidden" name="tamount" value="<%=tamount%>"><br>

        <input type="submit" class="btn" value="PAYMENT">
        
        </form>

  
            <form method="post" action="cartdelete.jsp">
                    
                <h2>ENTER THE PRODUCT NAME TO DELETE : <input type="text" name="name" pattern="[A-Za-z -]" title="ENTER PRODUCT NAME"></h2> 
           <input type="submit" class="btn" value="DELETE">
            </form>
                       
    </body>
</html>