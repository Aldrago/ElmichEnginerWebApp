<%-- 
    Document   : adddepartmentcode
    Created on : Jul 26, 2018, 5:18:19 PM
    Author     : Aldrago
--%>

<%@page import="projectpackage.DbManager"%>
<%
    String departmenttext=request.getParameter("departmentname");
    DbManager db=new DbManager();
    String query="insert into department(departmentname) values('"+departmenttext+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Added');window.location.href='../adddepartment.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Not added');window.location.href='../adddepartment.jsp';</script>");
    }
    
%>
