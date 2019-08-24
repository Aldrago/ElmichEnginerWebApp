<%@page import="projectpackage.DbManager"%>
<%
    String subject=request.getParameter("subject");
    String customername=request.getParameter("customername");
    String complaintext=request.getParameter("complaintext");
    DbManager db=new DbManager();
    String complaindt=db.getDate();
    String query="insert into complain(name,subject,complaintext,complaindt) values('"+customername+"','"+subject+"','"+complaintext+"','"+complaindt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('your complain is submitted');window.location.href='../complain.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('your complain is not submitted');window.location.href='../complain.jsp';</script>");
    }
            
   
   
    
    
    %>

