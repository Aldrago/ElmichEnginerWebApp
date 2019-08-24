<%-- 
    Document   : adminhome
    Created on : Jul 24, 2018, 6:09:12 PM
    Author     : Aldrago
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
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
        <form action="admincode/savenotification.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="color:blue;text-align: center;">Notification Management</h1>
                    <table border="1" style="margin: 0 auto;width: 50%">
                        <tr>
                            <td>
                                Enter Notification
                            </td>
                            <td>
                                <textarea name="notificationtext" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>&n</td>
                            <td>
                                <input type="submit" value="submits"/>
                            </td>
                        </tr>
                            
                    </table>
                    <br/><br/>
                    <table border="1" style="width:100%">
                        <tr>
                            <th>Id</th>
                            <th>Notification</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                    <%
                        DbManager db=new DbManager();
                        ResultSet rs=db.selectQuery("select * from notification");
                        while(rs.next())
                        {
                    %>
                        <tr>
                            <td><%=rs.getInt(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td><a href="admincode/deletenotification.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                        </tr>
                    <%
                        }
                    %>
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