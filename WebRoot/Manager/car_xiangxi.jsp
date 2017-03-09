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
code=request.getParameter("Code");
sql="select * from tb_carMessage where ID="+code;

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
<jsp:include page="mtop.jsp"/>
  <table width="900" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
    <td width="100%" height="52" colspan="4" align="center">
  车辆详细信息</td>
  </tr>
<%try
{
rs=connection.executeQuery(sql);
if(rs.next())
{
%>
    <tr>
      <td width="24%" height="43">
      <p align="center">车牌号：</p>      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="cNum" size="20" value="<%=rs.getString("TradeMark")%>"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">车品名：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="cSort" size="20" value="<%=rs.getString("Brand")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
      <p align="center">车辆类型：</p>      </td>
      <td width="36%" height="42">
        <p align="center"><input type="text" name="cStyle" size="20" value="<%=rs.getString("Style")%>"></p>
      </td>
      <td width="18%" height="42">
        <p align="center">载重：</p>
      </td>
      <td width="30%" height="42">
        <p align="center"><input type="text" name="cWeight" size="20" value="<%=rs.getString("CarLoad")%>">吨</p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="43">
      <p align="center">使用时间：</p>      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="cUsed" size="20" value="<%=rs.getString("UsedTime")%>">年</p>
      </td>
      <td width="18%" height="43">
        <p align="center">驾驶员姓名：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="pName" size="20" value="<%=rs.getString("DriverName")%>"></p>
      </td>
    </tr>

    <tr>
        <td width="20%" height="46">
          <p align="center">驾龄：</p>      </td>
        <td width="36%" height="46">
          <p align="center"><input type="text" name="pYear" size="20" value="<%=rs.getString("DriverTime")%>"></p>
        </td>

        <td width="18%" height="46">
            <p align="center">驾驶证号码：</p>
        </td>
        <td width="30%" height="46">
            <p align="center"><input type="text" name="pNum" size="20" value="<%=rs.getString("LicenceNumber")%>"></p>
        </td>
    </tr>

    <tr>
      <td width="20%" height="45">
      <p align="center">驾驶证类型：</p>      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="pSort" size="20" value="<%=rs.getString("LicenceStyle")%>"></p>
     </td>

      <td width="18%" height="45">
        <p align="center">运输类型：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="trans" size="20" value="<%=rs.getString("TransportStyle")%>"></p>
      </td>
    </tr>

    <tr>
      <td width="20%" height="45">
      <p align="center">联系人：</p>      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="pPhone" size="20" value="<%=rs.getString("LinkMan")%>"></p>
      </td>
      <td width="18%" height="45">
        <p align="center">联系电话：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="pLink" size="20" value="<%=rs.getString("LinkPhone")%>"></p>
      </td>
    </tr>

    <tr>
      <td width="20%" height="78">
      <p align="center">备注：</p>      </td>
      <td width="84%" height="78" colspan="3">
        <p align="left"><textarea rows="5" name="pRemark" cols="72" value="<%=rs.getString("Remark")%>"></textarea></p>
      </td>
    </tr>

    <tr>
      <td width="20%" height="45">
        <p align="center">发布时间：</p>
      </td>
      <td width="20%" height="45">
        <p align="center"><input type="text" name="pTime" size="20" value="<%=rs.getString("IssueDate")%>"></p>
      </td>

      <td width="18%" height="45">
        <p align="center">ID：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><%=num%><input type="hidden" name="code" value="<%=num%>"></p>      </td>
      </td>
    </tr>

<tr>
      <td width="20%" height="45">
        <p align="center">发布人：</p>
      </td>
      <td width="80%" height="45">
       <p align="center"><input type="text" value=session.getAttribute("name") size="20" value="<%=rs.getString("UserName")%>"></p>
      </td>
    </tr>

<%
if(userName.equals(username))
   {
   %>
    <tr>
      <td width="100%" height="45" colspan="4" align="center">
        <a href="goods_change.jsp?id=<%=code%>">修改</a>&nbsp;&nbsp;
        <a href="goods_delete.jsp?id=<%=code%>">删除</a></td>
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
