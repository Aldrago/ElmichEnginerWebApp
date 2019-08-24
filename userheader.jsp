<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
    <ul>
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="postquestion.jsp">discussion</a></li>
        <li><a href="complain.jsp">complain</a></li>
        <li><a href="feedback.jsp">feedback</a></li>
        <li><a href="changepassword.jsp">change pwd</a></li>
        <li><a href="logout.jsp">logout</a></li>
    </ul>
</div>
<div id="user_header">
    <div id="user_logo">
        <img src="../images/logo.png" />
    </div>
    <div id="sitetitle">
        <h2><i>Elmech Engineers</i></h2>
    </div>    
    
    
</div>
<div id="info">
    <div id="date">
        <%
            DbManager db=new DbManager();
            String dt=db.getDate();
            
            
            %>
            Today Date:<%=dt%>
    </div>
    <div id="name">
        <%
            String userid=session.getAttribute("userid").toString();
            String query="select customername from customerinfo where emailaddress='"+userid+"'";
            ResultSet rs=db.selectQuery(query);
            String customername="Papa";
            if(rs.next())
            {
                customername=rs.getString(1);
            }
            %>
            Hello, <%=customername%>
    </div>
</div>

