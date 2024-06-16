<%-- 
    Document   : 405error
    Created on : 22 Aug, 2022, 7:44:10 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 error</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Noto+Sans:700');
@import url('https://fonts.googleapis.com/css?family=Lato');
body
{
	margin:0;
	padding:0;
	padding:5%;
  font-family: 'Lato', sans-serif;
}
.err_page
{
	width:100%;
  height:80%;
	margin:4% auto;
	background:#fff;
	text-align:center;
	display:flex;
	align-items: center;
}
.err_page_right
{
	width:100%;
}
.err_page_left
{
		width:100%;
}
.err_page h1
{
	font-family: 'Noto Sans', sans-serif;
	font-size:70pt;
	margin:0;
	color:#6400ff;
}
.err_page h4
{	color:#6400ff;
	font-size:14pt;
}
.err_page p
{
	font-size:14pt;
	color: #737373;
}
.err_btn
{
	background:#fff;
	border:2px solid #6400ff;
	padding:20px;
	border-radius:5px;
	box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
	cursor:pointer;
	font-size:13pt;
	transition:background 0.5s;
}
.err_btn:hover
{
	background:#6400ff;
  box-shadow: 0px 8px 10px rgba(0, 0, 0, 0.2);
	color:#fff;
}
.credit
{
  position:absolute;
  bottom:0;
  right:0;
}
.link_404 {
  color: white;
  padding: 10px 20px;
  background: #6400ff;
  margin: 20px 0;
  text-decoration: none;
  display: inline-block;
}


        </style>
    </head>
    <body>
       <div class="err_page">
		<div class="err_page_left">
         <img src="pics/error.jpg"  alt="" >
		</div>
		<div class="err_page_right">
	<h1>404</h1>
   <h4>  Look like you're lost</h4>
<p>Login not successfully!!Please try again</p>
	 <a href="adminlogin.jsp" class="link_404">Go to Home</a>
		</div>	
	
	</div>
   
    </body>
   </html>
