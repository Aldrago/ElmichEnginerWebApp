<%-- 
    Document   : changeadminpwd
    Created on : Jul 25, 2018, 6:33:12 PM
    Author     : Aldrago
--%>

<%
if(session.getAttribute("adminid")==null)
{
    response.sendRedirect("../login.jsp");
}
else
{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/adminstyle.css" rel="stylesheet" />
        <link href="../css/admin_menu.css" rel="stylesheet" />
    </head>
    <body>
        <form action="admincode/changeadimnpwdcode.jsp" method="post"> 
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="color: blue;text-align: center;">Change Password</h1>
                    <table border="1" style="width: 50%; margin: 0 auto;">
                        <tr>
                            <td>Enter Old Password</td>
                            <td><input type="password" name="oldpassword" required/></td>
                        </tr>
                        <tr>
                            <td>Enter new password</td>
                            <td><input type="password" name="newpassword" required/></td>
                        </tr>
                        <tr>
                            <td>Confirm password</td>
                            <td><input type="password" name="confirmpassword" required/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input type="submit" value="Change"/></td>
                        </tr>
                    </table>
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>
        </form>
    </body>
</html>
<%
    }
%>