<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    String query="delete from enquiry where id='"+id+"'";
    DbManager db=new DbManager();
    if(db.executeNonQuery(query))
        if(db.executeNonQuery(query))
    {
        out.print("<script>alert('deleted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Not deleted');window.location.href='../adminhome.jsp';</script>");
    }
    
%>