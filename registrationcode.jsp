<%@page import="projectpackage.DbManager"%>
<%
    String capcode=request.getParameter("capcode");
    String captchacode=request.getParameter("captchacode");
    if(capcode.equals(captchacode))
        {
            String password=request.getParameter("password");
            String comfirmpassword=request.getParameter("confirmpassword");
            if(password.equals(comfirmpassword))
            {
                String customername=request.getParameter("customername");
                String gender=request.getParameter("gender");
                String address1=request.getParameter("address1");
                String address2=request.getParameter("address2");
                String conserndepertment=request.getParameter("conserndepertment");
                String contactno=request.getParameter("contactno");
                String emailaddress=request.getParameter("emailaddress");

                DbManager db=new DbManager();
                String connectdt=db.getDate();  
                String query="insert into customerinfo(customername,gender,address1,address2,conserndepertment,contactno,emailaddress,password,connectdt) values('"+customername+"','"+gender+"','"+address1+"','"+address2+"','"+conserndepertment+"','"+contactno+"','"+emailaddress+"','"+password+"','"+connectdt+"')";
                boolean res=db.executeNonQuery(query);
                if(res==true) 
                {
                    DbManager db2=new DbManager();
                    String q1="insert into login values('"+emailaddress+"','"+password+"','user')";
                    boolean res2=db2.executeNonQuery(q1);
                    if(res2)
                    {
                        out.print("<script>alert('Your are registered');window.location.href='../index.jsp'</script>");
                    }
                    else
                    {
                        out.print("<script>alert('Some error in database');window.location.href='../index.jsp'</script>");
                    }
                }
                else
                {
                    out.print("<script>alert('Your are not registered');window.location.href='../registration.jsp'</script>");
                }
            }
            else
            {
                out.print("<script>alert('Password not matched');window.location.href='../registration.jsp'</script>");
            }
        }
    else
    {
        out.print("<script>alert('Captcha not matched');window.location.href='../registration.jsp'</script>");
    }
    
%>