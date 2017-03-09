<%@ page contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="CSS/style.css">
<title>
Goods_xiangxi page

</title>
</head>
<%!
ResultSet rs=null;
String sql;
String code,userName;
String username,login;
int num;
%>

<body bgcolor="#ffffff">
<%
code=request.getParameter("id");
sql="select * from tb_Enterprise where ID="+code;

login=(String)session.getAttribute("login");
username=(String)session.getAttribute("name");
if(login==null)
{
%>
<script language="javascript">
alert("您还未登录，不能浏览详细信息！！！");
<%
response.sendRedirect("login.jsp");
%>
</script>
<%}
%>
<jsp:include page="top.jsp"/>
<table width="785" height="480" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
    <td width="100%" height="52" colspan="4" align="center">
  企业详细信息</td>
  </tr>
<%try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
%>
<tr>
    <td width="17%" height="29" align="center">企业类型：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("EnterpriseSort")%></td>
    <td width="17%" height="29" align="center" valign="middle">企业名称：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("EnterpriseName")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">经营范围：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("Operation")%> </td>
    <td width="17%" height="29" align="center" valign="middle">所属区域：</td>
    <td width="30%" height="29" align="center">  <%=rs.getString("WorkArea")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">企业地址：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("Address")%></td>
    <td width="17%" height="29" align="center" valign="middle">联系电话：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("Phone")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">联系人：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("LinkMan")%></td>
    <td width="17%" height="29" align="center" valign="middle">手机号：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("HandSet")%></td>
  </tr>
  <tr>
    <td width="17%" height="30" align="center">传真号：</td>
    <td width="36%" height="30" align="center"> <%=rs.getString("Fax")%></td>
    <td width="17%" height="30" align="center" valign="middle">邮件网址：</td>
    <td width="30%" height="30" align="center"> <%=rs.getString("Email")%></td>
  </tr>
  <tr>
    <td width="17%" height="29" align="center">企业网址：</td>
    <td width="36%" height="29" align="center"><%=rs.getString("Http")%></td>
    <td width="17%" height="29" align="center" valign="middle">类型介绍：</td>
    <td width="30%" height="29" align="center"><%=rs.getString("Intro")%> </td>
  </tr>
  <tr>
    <td width="17%" height="31" align="center">发布时间：</td>
    <td width="36%" height="31" align="left" colspan="3"><%=rs.getDate("IssueDate")%></td>

  </tr>
 <%
userName=rs.getString("UserName");
 %>
    <td width="17%" height="31" align="center">发布人：</td>
    <td width="36%" height="31" align="left" colspan="3"><%=userName%></td>
  
  </tr>
<%
if(userName.equals(username))
   {
   %>
    <tr>
      <td width="100%" height="45" colspan="4" align="center">
        <a href="enterprise_change.jsp?id=<%=code%>">修改</a>&nbsp;&nbsp;
        <a href="enterprise_delete.jsp?id=<%=code%>">删除</a></td>
  </tr>

<%
   }

}

}catch(SQLException e)
{
 System.out.print("查询异常！！");
}

%>
</table>
</body>
</html>
