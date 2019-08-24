

<%@page import="projectpackage.CaptchaGenerator"%>
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
        <form action="generalcode/registrationcode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                            <table border="5" style="text-align: center;margin-top:80px;margin-left: 10%;width: 80%;background-color: gray;">
                                <tr>
                                    <td colspan="2" style="color: Blue; font-size:25px;" >Registration Form</td>
                                </tr>                                
                                <tr>
                                    <td>Name</td>
                                    <td><input type="text" name="customername" required</td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>
                                        <input type="radio" name="gender" value="Male"/>Male
                                        <input type="radio" name="gender" value="Female"/>Female
                                    </td>
                                </tr>
                                <tr>
                                    <td>Permanent Address</td>
                                <td>
                                    <textarea name="address1" required></textarea>
                                </td>
                                </tr>
                                <tr>
                                    <td>Current Address</td>
                                <td>
                                    <textarea name="address2"></textarea>
                                </td>
            
                                </tr>
                                <tr>
                                    <td>Consern department</td>
                                    <td>
                                        <select name="conserndepertment">
                                            <%
                                                rs=db.selectQuery("select * from department");
                                                while(rs.next())
                                                {
                                            %>
                                            <option><%=rs.getString(2)%></option>
                                            <%}%>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Contact Number</td>
                                    <td><input type="number" name="contactno" required/></td>
                                </tr>
                                <tr>
                                    <td>Email Address</td>
                                    <td>
                                    <input type="email" name="emailaddress" required/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>New password</td>
                                    <td><input type="password" name="password" required /> </td>
                                </tr>
                                <tr>
                                    <td>Confirm password</td>
                                    <td><input type="password" name="confirmpassword" required/></td>
                                </tr>
                                <tr>
                                    <td>Captcha code</td>
                                    <td>
                                        <% 
                                            CaptchaGenerator cg=new CaptchaGenerator();
                                            String capcode=cg.getCode();
                                        %>
                                        <h3><%=capcode%></h3>
                                        <input type="hidden" name="capcode" value="<%=capcode%>"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter code</td>
                                    <td><input type="text" name="captchacode" required /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><input type="submit" value="Submit"/></td>
                                </tr>
  
                            </table>
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
