<%-- 
    Document   : userhome
    Created on : Jul 21, 2018, 5:06:08 AM
    Author     : lenovo
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
        
        
        <form action="usercode/complaincode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table style="margin:0 auto;width:50%;">
                        <tr>
                            <td colspan="2" style="color:blue;text-align: center;font-size: 40px;">
                                <h1><i>COMPLAIN FORM</i></h1>
                                
                            </td>
                        </tr>
                        <tr>
                            <td><i>Select your Complain </i></td>
                        <td>
                            <select name="subject">
                                <option><i>Select</i></option>
                                <option>Related to Employee</option>
                                <option>Related to Admin</option>
                                <option>work related</option>
                                <option>product</option>
                                <option>project</option>
                            </select>
                            <br/>
                        </td>
                    </tr>
                        <tr>
                            <td><i>Enter complain Text</i></td>
                            <td>
                                <textarea name="complaintext" required=""></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" name="customername" value="<%=customername%>"/>
                            </td>
                            <td>
                                <input type="submit" value="submit complain"/>
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

