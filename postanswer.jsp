<%-- 
    Document   : postanswer
    Created on : Jul 23, 2018, 6:18:17 PM
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
        
        
        <form action="usercode/postanswercode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table style="width: 50%; margin: 0 auto;">
                        <tr>
                            <td style="color: blue;text-align: center;font-size: 40px;"></td>
                        </tr>
                        <tr>
                            <td>Enter your answer</td>
                            <td><textarea name="answertext" required></textarea></td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" name="customername" value="<%=customername%>" />
                                <%
                                    String qid=request.getParameter("qid");
                                %>
                                <input type="hidden" name="qid" value="<%=qid%>"
                            </td>
                            <td>
                                <input type="submit" value="Post Answer" />
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


