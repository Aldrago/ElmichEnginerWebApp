<%-- 
    Document   : adddepartment
    Created on : Jul 26, 2018, 5:06:44 PM
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
        <form action="admincode/adddepartmentcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="color: blue;text-align: center;">Add Department</h1>
                    <table border="1" style="width: 50%;margin: 0 auto;">
                        <tr>
                            <td>Enter Department</td>
                            <td><input type="text" name="departmentname" required=""/></td>
                        </tr>
                        <tr>
                            <td colspan="2" Style="text-align: center;"><input type="submit" value="ADD"/></td> 
                        </tr>
                    </table>
                    <br/><br/>
                    <table border="1" style="width: 50%;margin: 0 auto;">
                        <tr>
                            <th>ID</th>
                            <th>depertment name</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            String query="select * from department";
                            ResultSet rs=db.selectQuery(query);
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><a href="admincode/deletedepartment.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
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