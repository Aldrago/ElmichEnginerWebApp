<%@page import="projectpackage.DbManager"%>
<%
    String customername=request.getParameter("customername");
    String feedbacktext=request.getParameter("feedbacktext");
    DbManager db=new DbManager();
    String feedbackdt=db.getDate();
    String query="insert into feedback(name,feedbacktext,feedbackdt) values('"+customername+"','"+feedbacktext+"','"+feedbackdt+"')";
    if(db.executeNonQuery(query))
            {
                out.print("<script>alert('your feedback is submitted');window.location.href='../feedback.jsp';</script>");
            }
    else
    {
        out.print("<script>alert('your feedback is not submitted');window.location.href='../feedback.jsp';</script>");
    }
            
   
   
    
    
    %>
