<%-- 
    Document   : viewanswer
    Created on : Jul 23, 2018, 7:05:35 PM
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
                    <table style="width: 100%">
                        <tr>
                            <td>Answer</td>
                            <td>Answered by</td>
                            <td>Posted Date</td>
                        </tr>
                        <%
                            int qid=Integer.parseInt(request.getParameter("qid"));
                            query="select answertext,answeredby,posteddt from answer where qid='"+qid+"'" ;
                            rs=db.selectQuery(query);
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                        </tr>
                        <%    
                            }
                        %>
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
