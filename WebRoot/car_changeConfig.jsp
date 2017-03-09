<%@ page contentType="text/html; charset=GBK" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
car_change_config page
</title>
</head>
<body bgcolor="#ffffff">
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
String username=request.getParameter("username");
String code=request.getParameter("code");
java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());

sql="update tb_carMessage set TradeMark='"+
    cNum +"',Brand='"+cSort+"',Style='"+cStyle+"',Carload='"+
    cWeight+"',UsedTime='"+cUsed+"',DriverName='"+
    pName+"',DriverTime='"+pYear+"',LicenceNumber='"+pNum+"',LicenceStyle='"+
    pSort+"',TransportStyle='"+trans+"',LinkMan='"+
    pLink+"',LinkPhone='"+pPhone+"',Remark='"+pRemark+"',IssueDate='"+
    pTime+"',UserName='"+username+"' where ID="+request.getParameter("code");
	
	
boolean sert=connection.executeUpdata(sql);


if(sert)
{%>
<script language="javascript">
alert("您输入的车辆信息已经成功修改！！！");
</script>
<%
response.sendRedirect("goods_select.jsp");
}else
{
%>
<script language="javascript">
alert("您输入的车辆信息修改失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
