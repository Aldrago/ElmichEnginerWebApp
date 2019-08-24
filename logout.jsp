<%-- 
    Document   : logout
    Created on : Jul 24, 2018, 6:47:53 PM
    Author     : Aldrago
--%>

<%
    session.invalidate();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../index.jsp';",1000);
            }
        </script>
    </head>
    <body onload="logout()" bgcolor="black">
    </body>
</html>
