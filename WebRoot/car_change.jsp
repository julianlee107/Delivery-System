<%@ page contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="CSS/style.css">
<title>
car_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.cNum.value=="")
{
alert("请填写车牌号！！");
form1.cNum.focus();
return false;
}
if(form1.cSort.value=="")
{
alert("请填写车品名！！！");
form1.cSort.focus();
return false;
}
if(form1.cStyle.value=="")
{
alert("请填写车辆类型！！！");
form1.cStyle.focus();
return false;
}
if(form1.cWeight.value=="")
{
alert("请填写载重吨数！！！");
form1.cWeight.focus();
return false;
}
if(form1.cUsed.value=="")
{
alert("请填写使用时间！！！");
form1.cUsed.focus();
return false;
}
if(form1.pName.value=="")
{
alert("请填写驾驶员姓名！！！");
form1.pName.focus();
return false;
}
if(form1.pYear.value=="")
{
alert("请填写驾龄！！！");
form1.pYear.focus();
return false;
}
if(form1.pNum.value=="")
{
alert("请填写驾驶证号码！！！");
form1.pNum.focus();
return false;
}
if(form1.pSort.value=="")
{
alert("请填写驾驶证类型！！！");
form1.pSort.focus();
return false;
}
if(form1.trans.value=="")
{
alert("请填写运输类型！！！");
form1.trans.focus();
return false;
}
if(form1.pLink.value=="")
{alert("请填写联系人！！！");
form1.pLink.focus();
return false;
}
if(form1.pPhone.value=="")
{
alert("请填写联系电话！！！");
form1.pPhone.focus();
return false;
}
if(form1.pRemark.value=="")
{
alert("请填写备注！！！");
form1.pRemark.focus();
return false;
}
if(form1.pTime.value=="")
{
alert("请填写发布时间！！！");
form1.pTime.focus();
return false;
}
}
</Script>

<body bgcolor="#ffffff"><jsp:include page="top.jsp"/>
<p align="center"><b>货物信息修改</b></p>
<form method="POST" action="car_changeConfig.jsp" name="form1">
<%
int num;
String sql="select * from tb_carMessage where ID="+request.getParameter("id");
ResultSet rs=connection.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
  <table width="900" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
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

    <tr>
      <td width="786" height="58" colspan="4">
        <p align="center">
              <input type="submit" name="change" value="修改" onClick="return check()">
       <input type="reset" value="重置">&nbsp;&nbsp;<a href="car_select.jsp">返回</a>
      </td>
    </tr>
  </table>
<%}%>
</form>
</body>
</html>
