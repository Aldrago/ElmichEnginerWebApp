<%-- 
    Document   : savenotification
    Created on : Jul 24, 2018, 7:07:03 PM
    Author     : Aldrago
--%>

<%@page import="projectpackage.DbManager"%>
<%
    String notificationtext=request.getParameter("notificationtext");
    DbManager db=new DbManager();
    String posteddate=db.getDate();
    String query="insert into notification(notificationtext,posteddate) values('"+notificationtext+"','"+posteddate+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Submited');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Not submited');window.location.href='../adminhome.jsp';</script>");
    }
%>
