<%-- 
    Document   : database
    Created on : 21 Jul, 2022, 9:47:28 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
                <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
        <title>CUSTOMER DATABASE</title>
        <style>
           @import url('https://fonts.googleapis.com/css?family=Montserrat|Open+Sans|Roboto');
*{
 margin:0;
 padding: 0;
 outline: 0;
}
.filter{
 position: absolute;
 left: 0;
 top: 0;
 bottom: 0;
 right: 0;
 z-index: 1;
 background: rgb(233,76,161);
background: -moz-linear-gradient(90deg, rgba(233,76,161,1) 0%, rgba(199,74,233,1) 100%);
background: -webkit-linear-gradient(90deg, rgba(233,76,161,1) 0%, rgba(199,74,233,1) 100%);
background: linear-gradient(90deg, rgba(233,76,161,1) 0%, rgba(199,74,233,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#e94ca1",endColorstr="#c74ae9",GradientType=1);
opacity: .7;
}
table{
 position: absolute;
 z-index: 2;
 left: 50%;
 top: 50%;
 transform: translate(-50%,-50%);
 width: 60%; 
 border-collapse: collapse;
 border-spacing: 0;
 box-shadow: 0 2px 15px rgba(64,64,64,.7);
 border-radius: 12px 12px 0 0;
 overflow: hidden;

}
td , th{
 padding: 15px 20px;
 text-align: center;
 

}
th{
 background-color: #ba68c8;
 color: #fafafa;
 font-family: 'Open Sans',Sans-serif;
 font-weight: 200;
 text-transform: uppercase;

}
tr{
 width: 100%;
 background-color: #fafafa;
 font-family: 'Montserrat', sans-serif;
}
tr:nth-child(even){
 background-color: #eeeeee;
}

  
             
             input[type=submit]{
          background-color: red;
          font-family: cursive;
          width: 110px;
          height:26px;
          outline: 1.2PX solid #CB6CE6;
          outline-offset: 0.2REM;
             }
             
          input[type=submit]:hover{
          background-color:yellow;
          color: black;       
          font-family: cursive;
          width: 150px;
          height:30px;
         }
            </style>
    </head>
    <body>
         <div class="filter">
 </div>
 <table >
  <tr>
 <th>NAME</th>

 <th>USERNAME</th>

 <th>PASSWORD</th>

 <th>EMAIL </th>

 <th>PHONE NO </th>

 </tr>
      
          <%
            rst=stmt.executeQuery("select * from signup");
            while(rst.next())
            {
       out.println("<tr><td>"+ rst.getString("name")+ "</td><td>"+ rst.getString("username")+
                   "</td><td>"+ rst.getString("password")+
                   "</td><td>"+ rst.getString("email")+"</td><td>"+rst.getString("phone") +"</td></tr>");
                                                          
            }
            %>
           
        </table>
          
    </body>
</html>
