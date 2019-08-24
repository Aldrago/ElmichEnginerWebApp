<%-- 
    Document   : deletenotification
    Created on : Jul 25, 2018, 5:19:19 PM
    Author     : Aldrago
--%>

<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from notification where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('deleted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>
