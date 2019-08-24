<%-- 
    Document   : changepassword
    Created on : Jul 23, 2018, 5:14:17 PM
    Author     : Aldrago
--%>

<%
if(session.getAttribute("userid")==null)
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
        <link href="../css/userstyle.css" rel="stylesheet">
        <link href="../css/user_menu.css" rel="stylesheet">
    </head>
    <body>
        
        
        <form action="usercode/changepasswordcode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table style="margin:0 auto;width: 50%;">
                        
                        <tr>
                            <td colspan="2"style= "text-align:center;color:blue;font-size:30px;">
                                change password
                                
                            </td>
                        </tr>
                        <tr>
                            <td>enter old password</td>
                            <td>
                                <input type="password" name="oldpassword"/>
                            </td>
                        </tr>
                        <tr>
                            <td>enter new password</td>
                            <td>
                                <input type="password" name="newpassword"/>
                            </td>
                    </tr>
                    <tr>
                            <td>enter conform password</td>
                            <td>
                                <input type="password" name="conformpassword"/>
                            </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" value="changepassword"/>
                    </td>
                </tr>
                    </table>
                        
                    
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<%
}
%>
