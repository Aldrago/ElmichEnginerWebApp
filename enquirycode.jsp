<%@page import="java.sql.PreparedStatement"%>
<%@page import="projectpackage.DbManager"%>
<%
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String enquirytext=request.getParameter("enquirytext");
    
    DbManager db=new DbManager();
    String enquirydt=db.getDate();  
    String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydt) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydt+"')";
    boolean res=db.executeNonQuery(query);
    if(res==true) 
    {
        out.print("<script>alert('Your enquiry is submitied');window.location.href='../index.jsp'</script>");
    }
    else
    {
        out.print("<script>alert('Your enquiry is not submitied');window.location.href='../enquiry.jsp'</script>");
    }
    
%> 