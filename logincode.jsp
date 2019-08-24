<%@page import="projectpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    
    DbManager db=new DbManager();
    String query="select usertype from login where userid='"+userid+"' and password='"+password+"'";
    ResultSet rs=db.selectQuery(query);
    if(rs.next())
    {
        String s=rs.getString("usertype");
        if(s.equals("user"))
        {
          //redirect to userzone
            session.setAttribute("userid",userid);
            response.sendRedirect("../userzone/userhome.jsp");
        }
        else if(s.equals("admin"))
        {
            //redirect to admin zone
            session.setAttribute("adminid",userid);
            response.sendRedirect("../adminzone/adminhome.jsp");
            
        }
    }
    else
    {
        out.print("<script>alert('No match found');window.location.href='../index.jsp'</script>");
    }
%>