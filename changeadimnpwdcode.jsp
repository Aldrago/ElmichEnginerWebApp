<%-- 
    Document   : changeadimnpwdcode
    Created on : Jul 25, 2018, 6:47:15 PM
    Author     : Aldrago
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    String adminid=session.getAttribute("adminid").toString();
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    String resspassword="";
    
    if(newpassword.equals(confirmpassword))
    {
        DbManager db=new DbManager();
        ResultSet rs=db.selectQuery("select password from login where userid='"+adminid+"'");
        if(rs.next())
        {
            resspassword=rs.getString(1);
        }
        if(oldpassword.equals(resspassword))
        {
            String query="update login set password='"+newpassword+"' where userid='"+adminid+"' and password='"+oldpassword+"'";
            if(db.executeNonQuery(query))
            {
                out.print("<script> alert('password changed');window.location.href='../changeadminpwd.jsp'; </script>");                
            }
            else
            {
                out.print("<script> alert('password not changed');window.location.href='../changeadminpwd.jsp'; </script>");
            }
        }
        else
        {
            out.print("<script> alert('password not matched');window.location.href='../changeadminpwd.jsp'; </script>");    
        }
    }
    else
    {
        out.print("<script> alert('password not matched');window.location.href='../changeadminpwd.jsp'; </script>");
    }
%>