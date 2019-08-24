<%-- 
    Document   : deletedepartment
    Created on : Jul 26, 2018, 5:46:10 PM
    Author     : Aldrago
--%>

<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db =new DbManager();
    String query="delete from department where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('deleted');window.location.href='../adddepartment.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Not deleted');window.location.href='../adddepartment.jsp';</script>");
    }
%>