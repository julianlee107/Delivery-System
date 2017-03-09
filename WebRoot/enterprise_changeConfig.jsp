<%@ page contentType="text/html; charset=utf-8" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
Goods_change_config page
</title>
</head>
<body bgcolor="#ffffff">
<%!
Date date=new Date();
String sql;
ResultSet rs;
%>
<%
request.setCharacterEncoding("utf-8");

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
String username=request.getParameter("username");
String cord=request.getParameter("ID");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());

sql="update tb_enterprise set GoodsStyle='"+
    eSort+"',GoodsName='"+eName+"',GoodsNumber='"+eRange+"',GoodsUnit='"+
    eAdd+"',StartProvince='"+ePhone+"',StartCity='"+
    eLink+"',EndProvince='"+pPhone+"',EndCity='"+eFax+"',Style='"+
    eEmail+"',TransportTime='"+eHttp+"',Phone='"+
    eIntro+"',IssueDate='"+gshowdate+"',UserName='"+
    username+"' where ID="+request.getParameter("code");
	
	
boolean sert=connection.executeUpdata(sql);


if(sert)
{%>
<script language="javascript">
alert("您输入的企业信息已经成功修改！！！");
</script>
<%
response.sendRedirect("enterprise_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的企业信息修改失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
