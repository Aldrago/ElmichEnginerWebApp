<%-- 
    Document   : product
    Created on : Jul 26, 2018, 6:53:58 PM
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
        <form action="admincode/productcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <table border="1" style="width: 50%;margin: 0 auto; ">
                        <tr>
                            <td colspan="2" style="color: blue; font-size: 30px; text-align: center;">Products Entry</td>
                        </tr>
                        <tr>
                            <td>Product Name</td>
                            <td><textarea name="productname" required=""></textarea></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><input type="text" name="price" required=""/></td>
                        </tr>
                        <tr>
                            <td>Offer</td>
                            <td><input type="text" name="offer"/></td>
                        </tr>
                        <tr>
                            <td>Validity</td>
                            <td><input type="text" name="validity"/></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;"><input type="submit" value="Submit"/></td>
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