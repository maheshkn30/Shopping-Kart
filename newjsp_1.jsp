<%-- 
    Document   : newjsp
    Created on : 25 Aug, 2022, 3:17:03 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <form method="POST" action="http://www.cs.tut.fi/cgi-bin/run/~jkorpela/echo.cgi">
 <input type="checkbox" name="checkbox" value="check"  />
 <input type="submit" name="email_submit" value="submit" onclick="if(!this.form.checkbox.checked){alert('You must agree to the terms first.');return false}"  />
</form>

    </body>
</html>
