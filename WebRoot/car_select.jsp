<%@ page contentType="text/html; charset=gb2312" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../CSS/style.css">
<title>
car_show page
</title>
</head>
<%!
ResultSet rs=null;
String sql,sqlshow;
int code;
int pagesize=10;
int rowcount=0;
int pagecount=1;
%>

<body bgcolor="#ffffff"><jsp:include page="top.jsp"/>
<table width="786" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
  <tr>
  <td width="100%" colspan="9" height="60" align="center">
     车辆信息
  </td>
  </tr>
  <tr align="center">
    <td width="11%" height="29">车牌号码</td>
    <td width="11%" height="29">车牌品名</td>
    <td width="11%" height="29">类型</td>
    <td width="11%" height="29">车辆限量</td>
    <td width="11%" height="29">已使用</td>
    <td width="11%" height="29">驾驶员驾龄</td>
    <td width="11%" height="29">运输类型</td>
    <td width="12%" height="29">操作</td>
  </tr>  <%
    sql="select * from tb_carmessage order by IssueDate desc";
try
{
 rs=connection.executeQuery(sql);
if(!rs.next())
{
%>
<script language="javascript">
  alert("没有车辆信息");
  history.back();
</script>
<%
}else
{
rs.last();
rowcount=rs.getRow();
int showpage=1;
pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
 String topage=request.getParameter("topage");
if(topage!=null)
{
showpage=Integer.parseInt(topage);
if(showpage>pagecount){
  showpage=pagecount;
  }else if(showpage<=0){
  showpage=1;
  }
}
rs.absolute((showpage-1)*pagesize+1);
for(int i=1;i<=pagesize;i++)
{
code=rs.getInt("Code");
%>
<tr align="center">
<td width="11%" height="29"><%=rs.getString("TradeMark")%></td>
<td width="11%" height="29"><%=rs.getString("Brand")%></td>
<td width="11%" height="29"><%=rs.getString("Style")%></td>
<td width="11%" height="29"><%=rs.getString("CarLoad")%></td>
<td width="11%" height="29"><%=rs.getString("UsedTime")%></td>
<td width="11%" height="29"><%=rs.getString("DriverTime")%></td>
<td width="11%" height="29"><%=rs.getString("TransportStyle")%></td>
    <td height="32" align="center">
   <a href="car_show.jsp?code=<%=code%>">详细</a>&nbsp;
</tr>
<%
if(!rs.next())
break;
}
%>
<tr>
    <td width="786" height="30" colspan="9" align="right">
<table width="786" align="center">
  <tr>
    <td width="786" height="30" colspan="9" align="right">
        共<%=pagecount%>页&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=1%>">第一页</a>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=showpage-1%>">上一页</a>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=showpage+1%>">下一页</a>&nbsp;&nbsp;
        <a href="car_select.jsp?topage=<%=pagecount%>">最后一页</a>       
</td>
</tr>
</table>
</td>
  </tr>
<%
}
}catch(Exception e)
{e.printStackTrace();}
%>
</table>
</body><jsp:include page="down.jsp"/>
</html>
