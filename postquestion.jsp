<%-- 
    Document   : postquestion
    Created on : Jul 23, 2018, 5:33:56 PM
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
        
        
        <form action="usercode/postquestioncode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp" %>
                <div id="user_container">
                    <table style="margin:0 auto;width: 50%">
                        <tr>
                            <td colspan="2" style="text-align: center;font-size: 30px;">
                                Discussion forum
                            </td>
                        </tr>
                        <tr>
                            <td>Enter the question</td>
                            <td><textarea name="questiontext" required></textarea> </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="hidden" name="customername" value="<%=customername%>" />
                            </td>
                            <td>
                                <input type="submit" value="Post Question" />
                            </td>
                        </tr>
                    </table>
                    <br/><br/>
                    <table border="1" style="width: 100%;">
                        <tr>
                            <th>Q.Id</th>
                            <th>question</th>
                            <th>posted by</th>
                            <th>posted date</th>
                            <th>post Answer</th>
                            <th>view Answer</th>
                        </tr>
                        <%
                         rs=db.selectQuery("select * from question");
                         while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><a href="postanswer.jsp?qid=<%=rs.getInt(1)%>">Post</a></td>
                            <td><a href="viewanswer.jsp?qid=<%=rs.getInt(1)%>">view</a></td>
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