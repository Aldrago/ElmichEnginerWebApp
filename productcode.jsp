<%-- 
    Document   : productcode
    Created on : Jul 26, 2018, 7:05:43 PM
    Author     : Aldrago
--%>

<%@page import="projectpackage.DbManager"%>
<%
    String productname=request.getParameter("productname");
    String price=request.getParameter("price");
    String offer=request.getParameter("offer");
    String validity=request.getParameter("validity");
    
    DbManager db=new DbManager();
    String posteddate=db.getDate();
    
    String query="insert into productcatalog(productname,price,offer,validity,posteddate) values('"+productname+"','"+price+"','"+offer+"','"+validity+"','"+posteddate+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('inserted');window.location.href='../product.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('inserted');window.location.href='../product.jsp';</script>");
    }
%>
