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
        <form action="generalcode/enquirycode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <table border="5" style="text-align: center;margin-top:80px;margin-left: 10%;width: 80%;background-color: gray;">
                            <tr>
                                <td colspan="2" style="font-size: 25px;color:blue;text-align: center;">
                                    Enquiry form
                                </td>                            
                            </tr>
                            <tr>
                                <td>Enter your name</td>
                                <td>
                                    <input type="text" name="name" required/>
                                </td>
                            </tr>    
                            <tr>    
                                <td>Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male"/>Male
                                    <input type="radio" name="gender" value="Female"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                                    <textarea name="address"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Contact Number</td>
                                <td>
                                    <input type="number" name="contactno" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Email Address</td>
                                <td>
                                    <input type="email" name="emailaddress" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Enquiry Text</td>
                                <td>
                                    <textarea name="enquirytext"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="margin: 0 auto; text-align: center;" ><input type="submit" value="submit"/></td>
                            </tr>
                        </table>
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>