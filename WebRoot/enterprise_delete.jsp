<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>
enterprise_delete page
</title>
</head>
<body bgcolor="#ffffff">
<%

String sql="delete tb_enterprise where ID="+request.getParameter("id");
boolean dele=connection.executeUpdata(sql);
if(dele)
{
%>
<script language="javascript">
alert("删除成功！！！");
</script>
<%
response.sendRedirect("enterprise_select.jsp");
}else{
%>
<script language="javascript">
alert("删除失败！！！");
history.back();
</script>
<%
}
%>
</body>
</html>
