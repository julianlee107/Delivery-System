<%@ page contentType="text/html; charset=gb2312" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
enterprise_config page
</title>
</head>
<%!
Date date=new Date();
String sql;
ResultSet rs;
%>
<%
request.setCharacterEncoding("gb2312");
String eSort=request.getParameter("eSort");
String eName=request.getParameter("eName");
String eRange=request.getParameter("eRange");
String eAdd=request.getParameter("eAdd");
String ePhone=request.getParameter("ePhone");
String eLink=request.getParameter("eLink");
String pPhone=request.getParameter("pPhone");
String eFax=request.getParameter("eFax");
String eEmail=request.getParameter("eEmail");
String eHttp=request.getParameter("eHttp");
String eIntro=request.getParameter("eIntro");
String username=(String)session.getAttribute("name");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="insert into tb_Enterprise values('"+eSort+"','"+
    eName+"','"+eRange+"','"+eAdd+"','"+ePhone+"','"+
    eLink+"','"+pPhone+"','"+eFax+"','"+
    eEmail+"','"+eHttp+"','"+eIntro+"','"+ gshowdate+"','"+username+"')";
	
boolean sert=connection.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("您输入的企业信息已经成功完成！！！");
</script>
<%
response.sendRedirect("enterprise_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的企业信息发布失败！！！");
</script>
<%
response.sendRedirect("enterprise_add.jsp");
}
%>
<body bgcolor="#ffffff">
</body>
</html>
