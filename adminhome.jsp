<%-- 
    Document   : adminhome
    Created on : 20 Aug, 2022, 4:47:07 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conn.jsp" %>
<!DOCTYPE html>
  <head>
   <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <script src="https://kit.fontawesome.com/878c437061.js" crossorigin="anonymous"></script>
   <style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.sidebar{
  position: fixed;
  top: 0;
  left: 0;
  height: 100%;
  width: 260px;
  background: #11101d;
  z-index: 100;
  transition: all 0.5s ease;
}
.sidebar.close{
  width: 78px;
}
.sidebar .logo-details{
  height: 60px;
  width: 100%;
  display: flex;
  align-items: center;
}
.sidebar .logo-details i{
  font-size: 30px;
  color: #fff;
  height: 50px;
  min-width: 78px;
  text-align: center;
  line-height: 50px;
}
.sidebar .logo-details .logo_name{
  font-size: 22px;
  color: #fff;
  font-weight: 600;
  transition: 0.3s ease;
  transition-delay: 0.1s;
}
.sidebar.close .logo-details .logo_name{
  transition-delay: 0s;
  opacity: 0;
  pointer-events: none;
}
.sidebar .nav-links{
  height: 100%;
  padding: 30px 0 150px 0;
  overflow: auto;
}
.sidebar.close .nav-links{
  overflow: visible;
}
.sidebar .nav-links::-webkit-scrollbar{
  display: none;
}
.sidebar .nav-links li{
  position: relative;
  list-style: none;
  transition: all 0.4s ease;
}
.sidebar .nav-links li:hover{
  background: #1d1b31;
}
.sidebar .nav-links li .iocn-link{
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.sidebar.close .nav-links li .iocn-link{
  display: block
}
.sidebar .nav-links li i{
  height: 50px;
  min-width: 78px;
  text-align: center;
  line-height: 50px;
  color: #fff;
  font-size: 20px;
  cursor: pointer;
  transition: all 0.3s ease;
}
.sidebar .nav-links li.showMenu i.arrow{
  transform: rotate(-180deg);
}
.sidebar.close .nav-links i.arrow{
  display: none;
}
.sidebar .nav-links li a{
  display: flex;
  align-items: center;
  text-decoration: none;
}
.sidebar .nav-links li a .link_name{
  font-size: 18px;
  font-weight: 400;
  color: #fff;
  transition: all 0.4s ease;
}
.sidebar.close .nav-links li a .link_name{
  opacity: 0;
  pointer-events: none;
}

.sidebar .profile-details{
  position: fixed;
  bottom: 0;
  width: 260px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: #1d1b31;
  padding: 12px 0;
  transition: all 0.5s ease;
}
.sidebar.close .profile-details{
  background: none;
}
.sidebar.close .profile-details{
  width: 78px;
}
.sidebar .profile-details .profile-content{
  display: flex;
  align-items: center;
}
.sidebar .profile-details img{
  height: 52px;
  width: 52px;
  object-fit: cover;
  border-radius: 16px;
  margin: 0 14px 0 12px;
  background: #1d1b31;
  transition: all 0.5s ease;
}
.sidebar.close .profile-details img{
  padding: 10px;
}
.sidebar .profile-details .profile_name,
.sidebar .profile-details .job{
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  white-space: nowrap;
}
.sidebar.close .profile-details i,
.sidebar.close .profile-details .profile_name,
.sidebar.close .profile-details .job{
  display: none;
}
.sidebar .profile-details .job{
  font-size: 12px;
}
.home-section{
  position: relative;
  background: #E4E9F7;
  height: 100vh;
  left: 260px;
  width: calc(100% -260px);
  transition: all 0.5s ease;
}
.sidebar.close ~ .home-section{
  left: 78px;
  width: calc(100% -78px);
}
.home-section .home-content{
  height: 60px;
  display: flex;
  align-items: center;
}
.home-section .home-content .bx-menu,
.home-section .home-content .text{
  color: #11101d;
  font-size: 35px;
}
.home-section .home-content .bx-menu{
  margin: 0 15px;
  cursor: pointer;
}
.home-section .home-content .text{
  font-size: 26px;
  font-weight: 600;
}         
     </style>
   </head>
<body>
     <%
        
        String username= (String)session.getAttribute("username");
    
        %>
  <div class="sidebar close">
    <div class="logo-details">
     
      
      <i class="fa-solid fa-cart-shopping"></i>
      <span class="logo_name">Shopping Cart</span>
    </div>
      
    <ul class="nav-links">
      <li>
        <a href="homepage.jsp">
         <i class="fa-solid fa-house"></i>
          <span class="link_name">HOME PAGE</span>
        </a>
      </li>
       
      <li>
        <a href="sellerhome.jsp">
         <i class="fa-brands fa-adversal"></i>
          <span class="link_name">SELLER PAGE</span>
        </a>
       
      </li>
     
      
       <li>
        <a href="database.jsp">
       <i class="fa-solid fa-circle-user"></i>
          <span class="link_name">CUSTOMER DATABASES</span>
        </a>
      </li>
      
       <li>
        <a href="sellerview.jsp">
         <i class="fa-solid fa-users"></i>
          <span class="link_name">SELLER DATABASES</span>
        </a>
      </li>
      
     
      
      
         <li>
        <a href="contactview.jsp">
         <i class="fa-solid fa-envelope-circle-check"></i>
          <span class="link_name">ISSUES</span>
        </a>
      </li>
     
       <li>
        <a href="emailoffer.jsp">
          <i class="fa-solid fa-at"></i>
          <span class="link_name">EMAIL OFFER</span>
        </a>
        </li>
       
    
      <li>
    <div class="profile-details">
      <div class="profile-content">
      
      </div>
      <div class="name-job">
       
          <a href="adminlogin.jsp"><div class="job">Logout</div></a>
      </div>
      <i class='bx bx-log-out'></i>
    </div>
  </li>
</ul>
  </div>
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
      <h1> Hello! <%=username%></h1>
    </div>
  </section>
    
    
    
    
    <script type="">
          let arrow = document.querySelectorAll(".arrow");
  for (var i = 0; i < arrow.length; i++) {
    arrow[i].addEventListener("click", (e)=>{
   let arrowParent = e.target.parentElement.parentElement;
   arrowParent.classList.toggle("showMenu");
    });
  }
  let sidebar = document.querySelector(".sidebar");
  let sidebarBtn = document.querySelector(".bx-menu");
  console.log(sidebarBtn);
  sidebarBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("close");
  });
  </script>
</body>
</html>