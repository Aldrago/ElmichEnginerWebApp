<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<style>
    p
    {
        margin-left: 10px;        
    }
</style>
<div id="left">
    <marquee direction="up" height="600" onmouseover="this.stop();" onmouseout="this.start()">
    <%
        DbManager db=new DbManager();
        ResultSet rs=db.selectQuery("select * from notification");
        while(rs.next())
        {
    %>
    <p><b>Notification</b></p>
    <p><%=rs.getString(2) %></p>
    <p><b>Posted Date</b></p>
    <p><%=rs.getString(3) %></p>
    <hr/>
    <%
        }
    %>
    </marquee>
</div>