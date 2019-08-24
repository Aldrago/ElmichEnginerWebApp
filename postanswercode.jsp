<%@page import="projectpackage.DbManager"%>
<%
    String answertext=request.getParameter("answertext");
    String customername=request.getParameter("customername");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    int qid=Integer.parseInt(request.getParameter("qid"));
    String query="insert into answer(answertext,answeredby,posteddt,qid) values('"+answertext+"','"+customername+"','"+posteddt+"','"+qid+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('answer is posted');window.location.href='../postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('answer is not posted');window.location.href='../postquestion.jsp';</script>");
    }
%>