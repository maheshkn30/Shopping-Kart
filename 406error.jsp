<%-- 
    Document   : 406error
    Created on : 22 Aug, 2022, 8:13:04 PM
    Author     : PC
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Not Found</title>
    <link rel="stylesheet" href="./style.css">
    <style>
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
body {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    font-family: "Montserrat";
    color: rgb(56,56,56);
}
.wrapper {
    display: flex;
    align-items: center;
    flex-direction: column;
}
.wrapper h1 {
    font-size: 3rem;
    margin-top: 20px;
}
.wrapper .message {
    font-size: 1.5rem;
    padding: 20px;
    width: 60%;
    text-align: center;
}
.wrapper .btn {
    background: rgb(0,195,154);
    padding: 20px;
    font-size: 1.5rem;
    text-decoration: none;
    color: #fff;
}
.wrapper .btn:hover {background: rgb(0,231,201);}
.wrapper .copyRights {margin-top: 50px;}
    </style>
</head>
<body>
    <img src="pics/err.svg"  alt="" >
    <div class="wrapper">
        <h1>404 ERROR</h1>
       <p class="message">
          Look like you're lost
          Login not successfully!!Please try again
           
       </p>
       <a href="sellerlogin.jsp" class="btn">BACK</a>
      
    </div>
</body>
</html>