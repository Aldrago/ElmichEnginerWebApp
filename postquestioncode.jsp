<%@page import="projectpackage.DbManager"%>
<%
    String customername=request.getParameter("customername");
    String questiontext=request.getParameter("questiontext");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    String query="insert into question(questiontext,postedby,posteddt) values('"+questiontext+"','"+customername+"','"+posteddt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('done');window.location.href='../postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('not done');window.location.href='../postquestion.jsp';</script>");
    }
%>