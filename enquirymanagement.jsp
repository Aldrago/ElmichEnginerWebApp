<%-- 
    Document   : enquirymanagement
    Created on : Jul 25, 2018, 6:01:03 PM
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
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="text-align: center;color: navy;">
                        Enquiry Management
                    </h1>
                    <br/>
                    <table border="1" style="width: 100%">
                        <tr>
                            <th>Smo</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No.</th>
                            <th>Email address</th>
                            <th>Enquiry text</th>
                            <th>Enquiry date</th>
                            <th>Delete</th>
                        </tr>
                        <tr>
                            <%
                                DbManager db= new DbManager();
                                ResultSet rs=db.selectQuery("select * from enquiry");
                                int n=1;
                                while(rs.next())
                                {
                            %>
                            <td><%=n%></td>
                            <td><%=rs.getString(2)%></td> 
                            <td><%=rs.getString(3)%></td>                            
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><a href="admincode/deleteenquiry.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
                    </table>
                            <%
                                n++;
                                }
                            %>
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>
        </form>
    </body>
</html>
<%
    }
%>
