<%-- 
    Document   : adminhome
    Created on : Jul 24, 2018, 6:09:12 PM
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
        <link herf="../css/admin_menu.css" rel="stylesheet" />
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>
        </form>
    </body>
</html>
<%
    }
%>