-<%-- 
    Document   : product
    Created on : 30 Jul, 2022, 8:06:05 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dbcon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="network.Recommend"%>
<%@ page  language="java" import="java.sql.*" errorPage="" %>
<%@page import="Dbcon.DbConnection"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product upload</title>
         <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
          <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
          <link rel="preconnect" href="https://fonts.googleapis.com">
          
          <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Prompt&display=swap" rel="stylesheet">
<style>
  *{
        padding: 0px;
        margin: 0;
        text-decoration: none;
        list-style: none;
        box-sizing: border-box;
         box-shadow: 2px ;
        
    }
    body{
    
         padding-left: 0.380cm;
             padding-top: 0.2cm;
               width: 99.2%;
                
             }
    
    nav{
        background-color: blue;
        height: 80px;
        width: 100%;
        margin-bottom:0.5cm;
        
            }
            label.logo{
                color: WHITE;
                font-size: 35px;
                line-height: 80px;
                padding: 0 100px;
                font-weight: bold;
            }
    
           
               <%--border--%>
              .outerdiv{
                padding-left: 2cm;
                }
                
            h2{
                font-family: 'Josefin Sans', sans-serif;
                font-size:25px; 
                padding-bottom:1cm;
            }
            
            .innerdiv{
                 background: linear-gradient(to top,#bdc3c7,#445463);
                padding-left: 1.5cm;
                padding-bottom: 4.3900cm;
                padding-top: 2cm;
                 border: 2px inactiveborder;
                 border-radius: 10px;
                  box-shadow: 10px;
                  width:95%;
                  height:33cm;
                display: block;
                 color: black;
                 
            }
           
             input[type=text],input[type=password],input[type=email],input[type=file]{
          width: 1000px;
          height:1.2cm;
          border-radius: 8px;
          box-shadow: 10px;
           padding-left: 10px;
            padding-left:0.4cm;
            font-family: 'Anek Malayalam', sans-serif;
            font-size: 18px;
            padding-left:0.4cm;
             }
                   
             <%--textbox hover--%>
          input[type=text]:hover,input[type=password]:hover,input[type=email]:hover,input[type=file]:hover{
          width: 1000px;
          height:1.2cm;
          border-radius: 8px ;
          border-color: black;
           cursor: text;
             }
              
               <%--botton--%>
            input[type=submit]{
           background-color:  #11998e;
          font-family: 'Anek Malayalam', sans-serif;
          font-size: 20px;
          width: 210px;
          height:1cm;
          color: white;
          border: none;
           cursor: pointer;
           
             }
             
              <%--botton hover--%>
            input[type=submit]:hover{
           background-color:  #38ef7d;
          font-family: 'Anek Malayalam', sans-serif;
          font-size: 20px;
          width: 210px;
          height:1cm;
          color: white;
          border: none;
          }
          
          #text{
               width: 1000px;
          height:1.5cm;
          border-radius: 5px;
           padding-left: 10px;
            padding-left: 10px;
             font-family: 'Anek Malayalam', sans-serif;
            font-size: 15px;
            padding-left:0.4cm;
          }
          <%--text area--%>
          
          #text:hover{
               width: 1000px;
          height:1.5cm;
          border-radius: 5px ;
          border-color: black;
           cursor: text;
          }
             h2{
                 font-family: 'Ubuntu', sans-serif;
                 text-transform:uppercase;
               }
               
                
          <%--image upload--%>
          
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    
       }
      body {
    min-height: 15vh;
    display: grid;
   text-align: center;
    font-family: 'Poppins', sans-serif;
    background-color: #fafafa;
   
      }
      .out{
          padding-left:7cm;
          padding-bottom:1cm;
      }
     .upload-box {
    background-color: #fff;
   
    padding: 20px;
    width: 45%;
    border-radius: 5px;
    box-shadow: 0 0 8px rgba(0,0,0,0.1);
  }
      .upload-img {
    border: 2px dashed rgb(185,185,185);
    padding: 10px;
    border-radius: 5px;
    display: flex;
    justify-content: center;
    align-items: center;
      }
     .upload-img img {
    object-fit: contain;
    width: 100%;
    border-radius: 5px;
    max-height: 500px;
    }
     #upload-input {display: none;}
     .upload-label {
    background-color: #2D56B3;
    text-transform: uppercase;
    color: #fff;
    text-align: center;
    font-size: 1.2rem;
    padding: 10px 20px;
    border-radius: 4px;
    display: table;
    margin:  20px auto 0 auto;
    cursor: pointer;
    transition: 0.2s ease-in-out;
     }
    .upload-label:hover {
    background-color:  #407BFF;
   }
   
    <%--captch--%>
    .com{
        padding-left:12cm;
    }
  
    
  </style>
    </head>
    <body>
        <%
        String msg = request.getParameter("msg");
        if(msg.equals("success"))
                       {
        
        %>
        <script>
            alert("PRODUCT UPLOADED SUCCESS")
        </script>
        <%}%>
        
        <nav>
          
            <label class="logo">SHOPPING CART</label>
            
        </nav> 
              
       
                
        <div class="outerdiv">
             <div class="innerdiv">
           <form action="Recommends" enctype="multipart/form-data" method="post"> 
                        <h2>upload the product</h2>
                        <input type="text" spellcheck="false" name="name"  placeholder="NAME"  required=""/><br><br>
           
            <div class="out">
            <div class="upload-box">
        <div class="upload-img">
         <img src="pics/upload.svg" alt="">
        </div>
        <label for="upload-input" class="upload-label">Upload Image</label>
        <input type="file" name="pic"  accept=".jpg" id="upload-input" accept="images/*">
    </div>    </div>

            
                        <input type="text"  spellcheck="false" name="proname"  placeholder=" PRODUCT NAME"  required=""/><br><br>
                        <input type="text"  spellcheck="false" name="price"  placeholder=" PRICE"  required=""/><br><br>
    <input type="text"  spellcheck="false" name="size"  placeholder=" SIZE"  /><br><br>
       <textarea id="text" name="prod"  placeholder="PRODUCT DETAILS"  /></textarea><br><br>
             
           <div class="com">
         <table border="0">
        <tr> <td height="40"> GENDER </td> <td> 
        <select name="gname"  size="1">
<% 
           rst=stmt.executeQuery("select gname from gender");
		
             while( rst.next())
                {
                out.println("<option>" + rst.getString("gname")+ " </option>");
                }
               
                rst.close();
%>  
            </select>
     </td> </tr>    
              </table></div><br><br>

            
             
              
               <input type="submit" value="UPLOAD"><br>
               </form>
             </div>
            </div>
            <br><br>
          
            
            <script type="">
         const uploadInput = document.querySelector('#upload-input') ;
const previewImg = document.querySelector('.upload-img img') ;

 uploadInput.addEventListener('change',e => {
    if(e.target.files.length > 0) {
        const url = URL.createObjectURL(e.target.files[0]) ;
        previewImg.src = url ;
    }
})
    </script>
    </body>
</html>
