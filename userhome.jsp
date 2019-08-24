<%-- 
    Document   : userhome
    Created on : Jul 23, 2018, 5:29:45 PM
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
        
        
        <form>
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<%
}
%>

