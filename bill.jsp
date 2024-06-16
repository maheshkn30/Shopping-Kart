<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<%@page language="java" import="java.text.SimpleDateFormat"%>
<%@page language="java" import="java.text.ParseException"%>
<%@page language="java" import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
         <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="sweetalert2.all.min.js"></script>
   
    
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

*{
  font-family: 'Poppins', sans-serif;
  margin:0; padding:0;
  box-sizing: border-box;
  outline: none; border:none;
  text-transform: capitalize;
  transition: all .2s linear;
}

.container{
  display: flex;
  justify-content: center;
  align-items: center;
  padding:25px;
  min-height: 100vh;
  background: linear-gradient(90deg, #2ecc71 60%, #27ae60 40.1%);
}

.container form{
  padding:20px;
  width:700px;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0,0,0,.1);
}

.container form .row{
  display: flex;
  flex-wrap: wrap;
  gap:15px;
}

.container form .row .col{
  flex:1 1 250px;
}

.container form .row .col .title{
  font-size: 20px;
  color:#333;
  padding-bottom: 5px;
  text-transform: uppercase;
}

.container form .row .col .inputBox{
  margin:15px 0;
}

.container form .row .col .inputBox span{
  margin-bottom: 10px;
  display: block;
}

.container form .row .col .inputBox input{
  width: 100%;
  border:1px solid #ccc;
  padding:10px 15px;
  font-size: 15px;
  text-transform: none;
}

.container form .row .col .inputBox input:focus{
  border:1px solid #000;
}

.container form .row .col .flex{
  display: flex;
  gap:15px;
}

.container form .row .col .flex .inputBox{
  margin-top: 5px;
}

.container form .row .col .inputBox img{
  height: 34px;
  margin-top: 5px;
  filter: drop-shadow(0 0 1px #000);
}

.container form .submit-btn{
  width: 100%;
  padding:12px;
  font-size: 17px;
  background: #27ae60;
  color:#fff;
  margin-top: 5px;
  cursor: pointer;
}

.container form .submit-btn:hover{
  background: #2ecc71;
}
    </style>
</head>
<body>
   <%
        
        String uname= (String)session.getAttribute("username");
    
        %>
<div class="container">

     <form method="post" action="billcheck.jsp">

        <div class="row">
            <div class="col">
                <h3 class="title">billing address</h3>
 <%
        Date date=new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String str = formatter.format(date);
        String tamount = request.getParameter("tamount");
      String status = request.getParameter("status");
        %>
                <div class="inputBox">
                    <span>USER NAME :</span>
                    <input type="text" readonly="" name="username" value="<%=uname%>">
                </div>
                <div class="inputBox">
                    <span>DATE :</span>
                    <input type="email" readonly="" name="date1" value="<%=str%>">
                </div>
                <div class="inputBox">
                    <span>address :</span>
                    <input type="text" name="address" pattern="^[#.0-9a-zA-Z\s,-]+$" title="ENTER THE ADDRESS" placeholder="room - street - locality">
                </div>
                <div class="inputBox">
                    <span>city :</span>
                    <input type="text" name="city"  title="ENTER THE CITY" placeholder="city" >
                </div>

                <div class="flex">
                  
                    <div class="inputBox">
                        <span>Total Amount :</span>
                        <input type="text" name="totalamt" readonly=""  value="<%=tamount%>">
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                  <img src="pics/card.png" alt="">
                </div>
                <div class="inputBox">
                    <span>name on card :</span>
                    <input type="text" pattern="[A-Za-z]{4,15}" title="ENTER THE CARD NAME" placeholder="mr. john deo" required="">
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="text"  pattern="[0-9]+" title="PLEASE ENTER THE NUMBER ONLY" placeholder="1111-2222-3333-4444" required="">
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" pattern="[A-Za-z]{4,15}" title="ENTER THE M0NTH" placeholder="january" required="">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="TEXT"  pattern="\d{1,5}"  
                               maxlength="4" title="ENTER THE YEAR" placeholder="2022" required="">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" pattern="\d{1,5}"  
                               maxlength="4" title="ENTER THE YEAR" required="" placeholder="1234">
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" onclick="fun()" value="proceed to checkout" class="submit-btn">
        
    </form>

</div>    
            <script>
            function fun(){
          swal("Good job!", "order succesfully!", "success");
            }
        </script>
</body>
</html>