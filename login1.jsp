<%-- 
    Document   : login1
    Created on : 26 Aug, 2022, 4:24:36 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN </title>
        <style>
            
@import url("https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;700&display=swap");


:root {
  --header-height: 3.5rem;
  --first-color: hsl(38, 69%, 59%);
  --text-color: hsl(38, 8%, 8%);
  --body-font: 'Space Grotesk', sans-serif;
  --biggest-font-size: 2.375rem;
  --normal-font-size: .938rem;
  --smaller-font-size: .75rem;
}

* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

body {
  font-family: var(--body-font);
  font-size: var(--normal-font-size);
  font-weight: 500;
  color: var(--text-color);
}

ul {
  list-style: none;
}

a {
  text-decoration: none;
}

img {
  max-width: 100%;
  height: auto;
}


.container {
  max-width: 1024px;
  margin-left: 1.5rem;
  margin-right: 1.5rem;
}

.main {
  overflow: hidden; 
}


.header {
  position: fixed;
  width: 100%;
  background-color: transparent;
  top: 0;
  left: 0;
  z-index: 100;
}

.nav {
  height: var(--header-height);
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.nav__logo, 
.nav__toggle {
  color: var(--text-color);
  display: inline-flex;
}

.nav__logo {
  font-weight: 1000;
}

.nav__toggle {
  font-size: 1.25rem;
  cursor: pointer;
}

@media screen and (max-width: 767px) {
  .nav__menu {
    position: fixed;
    background-color: var(--first-color);
    left: 0;
    top: -100%;
    width: 100%;
    padding: 5rem 0 4rem;
    border-radius: 0 0 1.5rem 1.5rem;
    box-shadow: 0 2px 4px hsla(38, 4%, 15%, .15);
    transition: .4s;
  }
}

.nav__list {
  text-align: center;
  display: flex;
  flex-direction: column;
  row-gap: 2rem;
}

.nav__link {
  color: var(--text-color);
}

.nav__close {
  position: absolute;
  top: 1rem;
  right: 1.5rem;
  font-size: 1.5rem;
  color: var(--text-color);
  cursor: pointer;
}


.show-menu {
  top: 0;
}


.home {
  background-color: var(--first-color);
  padding: 9rem 0 2rem;
  height: 100vh;
  display: grid;
}

.home__container {
  display: grid;
  align-content: center;
  row-gap: 2.5rem;
}

.home__data {
  text-align: center;
}

.home__title {
  font-size: var(--biggest-font-size);
  margin: .75rem 0;
}

.home__button {
  margin-top: 2rem;
  display: inline-block;
  background-color: var(--text-color);
  color: #fff;
  padding: .80rem 1.5rem;
  border-radius: 3rem;
  transition: .4s;
}

.home__button:hover {
  box-shadow: 0 4px 12px hsla(38, 69%, 8%, .2);
}

.home__img img {
  width: 230px;
  animation: floaty 1.8s infinite alternate;
}

.home__img {
  justify-self: center;
}

.home__shadow {
  width: 130px;
  height: 24px;
  background-color: hsla(38, 21%, 19%, .16);
  margin: 0 auto;
  border-radius: 50%;
  filter: blur(7px);
  animation: shadow 1.8s infinite alternate;
}

.home__footer {
  display: flex;
  justify-content: center;
  column-gap: .5rem;
  font-size: var(--smaller-font-size);
  align-self: flex-end;
}

/* Animate ghost */
@keyframes floaty {
  0% {
    transform: translateY(0);
  }
  100% {
    transform: translateY(15px);
  }
}

@keyframes shadow {
  0% {
    transform: scale(1, 1);
  }
  100% {
    transform: scale(.85, .85);
  }
}

/*=============== BREAKPOINTS ===============*/
/* For small devices */
@media screen and (max-width: 320px) {
  .home {
    padding-top: 7rem;
  }
}

/* For medium devices */
@media screen and (min-width: 767px) {
  .nav {
    height: calc(var(--header-height) + 1.5rem);
  }
  .nav__toggle, 
  .nav__close {
    display: none;
  }
  .nav__list {
    flex-direction: row;
    column-gap: 3.5rem;
  }
}

/* For large devices */
@media screen and (min-width: 1024px) {
  .home__container {
    grid-template-columns: repeat(2, 1fr);
    align-items: center;
    column-gap: 2rem;
  }
  .home__data {
    text-align: initial;
  }
  .home__img img {
    width: 400px;
  }
  .home__shadow {
    width: 250px;
    height: 40px;
  }
}

@media screen and (min-width: 1048px) {
  .container {
    margin-left: auto;
    margin-right: auto;
  }
}

/* For 2K resolutions (2048 x 1152, 2048 x 1536) */
@media screen and (min-width: 2048px) {
  body {
    zoom: 1.7;
  }

  .home {
    height: initial;
    row-gap: 4rem;
  }
}

/* For 4K resolutions (3840 x 2160, 4096 x 2160) */
@media screen and (min-width: 3840px) {
  body {
    zoom: 3.1;
  }
}
        </style>
    </head>
    <body>
        <!--==================== HEADER ====================-->
        <header class="header">
            <nav class="nav container">
                <a href="#" class="nav__logo">
                   SHOPPING CART
                </a>

                <div class="nav__menu" id="nav-menu">
                    <ul class="nav__list">
                        <li class="nav__item">
                           
                        </li>
                        <li class="nav__item">
                            
                        </li>
                        <li class="nav__item">
                           
                        </li>
                    </ul>

                    <div class="nav__close" id="nav-close">
                        <i class='bx bx-x'></i>
                    </div>
                </div>

               
                <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-grid-alt'></i>
                </div>
            </nav>
        </header>

      
        <main class="main">
           
            <section class="home">
                <div class="home__container container">
                    <div class="home__data">
                        <span class="home__subtitle">LOGIN</span>
                        <h1 class="home__title">Hey Buddy</h1>
                        <p class="home__description">
                           LOGIN TO SHOPPING CART AND GET A EXCLUSIVE OFFERS     <br> Click here...
                        </p>
                        <a href="login.jsp" class="home__button">
                            LOGIN
                        </a>
                    </div>

                    <div class="home__img">
                        <img src="pics/logout.jpg" alt="">
                        <div class="home__shadow"></div>
                    </div>
                </div>

                <footer class="home__footer">
                   
                   
                   
                </footer>
            </section>
        </main>

           
    </body>
</html>
