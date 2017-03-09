<%@ page contentType="text/html; charset=GBK" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
Good_config page
</title>
</head>
<%!
Date date=new Date();
String sql;
ResultSet rs;
%>
<%
request.setCharacterEncoding("gb2312");
String cNum=request.getParameter("cNum");
String cSort=request.getParameter("cSort");
String cStyle=request.getParameter("cStyle");
String cWeight=request.getParameter("cWeight");
String cUsed=request.getParameter("cUsed");
String pName=request.getParameter("pName");
String pYear=request.getParameter("pYear");
String pNum=request.getParameter("pNum");
String pSort=request.getParameter("pSort");
String trans=request.getParameter("trans");
String pLink=request.getParameter("pLink");
String pPhone=request.getParameter("pPhone");
String pRemark=request.getParameter("gremark");
String pTime=request.getParameter("pTime");
String username=(String)session.getAttribute("name");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
sql="insert into tb_GoodsMeg values('"+cNum+"','"+
    cSort+"','"+cStyle+"','"+cWeight+"','"+cUsed+"','"+
    pName+"','"+pYear+"','"+pNum+"','"+
    pSort+"','"+trans+"','"+pLink+"','"+
    pPhone+"','"+pRemark+"','"+pTime+"','"+username+"')";

boolean sert=connection.executeUpdata(sql);
if(sert)
{%>
<script language="javascript">
alert("您输入的车辆信息已经成功完成！！！");
</script>
<%
response.sendRedirect("car_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的车辆信息发布失败！！！");
</script>
<%
response.sendRedirect("car_add.jsp");
}
%>
<body bgcolor="#ffffff">
</body>
</html>
