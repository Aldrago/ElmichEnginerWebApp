<%@page import="projectpackage.DbManager"%>
<%
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String conformpassword=request.getParameter("conformpassword");
    if(newpassword.equals(conformpassword))
    {
       String userid=session.getAttribute("userid").toString();
       String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
       DbManager db=new DbManager();
       if(db.executeNonQuery(query))
       {
           out.print("<script>alert('password is change');window.location.href='../changepassword.jsp';</script>");
       }
       else
       {
           out.print("<script>alert('password is not change');window.location.href='../changepassword.jsp';</script>");
       }
    }
    else
    {
        out.print("<script>alert('invalid password');window.location.href='../changepassword.jsp';</script>");
    }
    
    %>
