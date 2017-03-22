<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<title>login_config</title>
</head>
<%
ResultSet rs=null;
request.setCharacterEncoding("gb2312");
String name=request.getParameter("name");
String password=request.getParameter("password");
if(name==""&&name==null&&password==""&&password==null)
{
%>
<jsp:forward page="index.jsp"/>
<%}
else{
try
{
//    用来将用户输入的账号密码进行匹配,如果返回的值为真,则存在该用户
String sql="select * from tb_Customer where Name='"+name+"' and Password='"+password+"'";
rs = connection.executeQuery(sql);
if(rs.next())
{
String Name=rs.getString("Name");
String pow=rs.getString("pow");
session.setAttribute("name",Name);
session.setAttribute("pow",pow);
session.setAttribute("login","success");
%>
<script language="javascript">
alert("登录成功！！！");
window.location.href="index.jsp";
</script>
<%
}
else
{
%>
<script language="javascript">
alert("登录失败！！！");
history.back();
</script>
<%
}
}catch(Exception e)
{
System.out.println("连接异常login_config");
}
}
%>
<body bgcolor="#ffffff">
</body>
</html>

