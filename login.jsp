<%-- 
    Document   : login
    Created on : Jul 19, 2018, 5:48:27 PM
    Author     : Aldrago
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM for Elmech</title>
        <link href="css/generalstyle.css" rel="stylesheet" >
        <link href="css/menu.css" rel="stylesheet" >
        <script src="js/slider.js" type="text/javascript"></script>
    </head>
    <body onload="show()">
        <form action="generalcode/logincode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <table  style="text-align: center;margin-top:80px;margin-left: 10%;width: 80%;background-color: gray;">
                            <tr>
                                <td colspan="2" style="color: Blue; font-size:25px;" >Login Form</td>
                            </tr>

                            <tr>
                                <td>Enter UserID</td>
                                <td><input type="text" name="userid" required/></td>    
                            </tr>
                        
                            <tr>
                                <td>Password</td>
                                <td><input type="password" name="password" required/></td>
                            </tr>
                    
                            <tr>
                                <td colspan="2"><input type="submit" value="Login"/> </td>
                            </tr>
                            
                            
                        </table>
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>

