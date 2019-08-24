<%-- 
    Document   : index
    Created on : Jul 16, 2018, 5:25:51 PM
    Author     : Aldrago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elmech Engineers</title>
        <link href="css/generalstyle.css" rel="stylesheet" >
        <link href="css/menu.css" rel="stylesheet" >
        <script src="js/slider.js" type="text/javascript"></script>
    </head>
    <body onload="show()">
        <form>
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
