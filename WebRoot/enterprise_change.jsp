<%@ page contentType="text/html; charset=utf-8" import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="CSS/style.css">
<title>
enterprise_change page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.gclass.value=="")
{
 alert("请填写货物类型！！");
form1.gclass.focus();
return false;
}
if(form1.gname.value=="")
{
alert("请填写货物名称！！！");
form1.gname.focus();
return false;
}
if(form1.gcount.value=="")
{
alert("请填写货物数量！！！");
form1.gcount.focus();
return false;
}
if(form1.gunit.value=="")
{
alert("请填写货物数量单位！！！");
form1.gunit.focus();
return false;
}
if(form1.startProvince.value=="")
{
alert("请填写起始省份！！！");
form1.startProvince.focue();
return false;
}
if(form1.gstartcity.value=="")
{
alert("请填写起始城市！！！");
form1.gstartcity.focue();
return false;
}
if(form1.endProvince.value=="")
{
alert("请填写抵达省份！！！");
form1.endProvince.focus();
return false;
}
if(form1.gendcity.value=="")
{
alert("请填写抵达城市！！！");
form1.gendfirm.focus();
return false;
}
if(form1.gtransstyle.value=="")
{
alert("请填写运输类型！！！");
form1.gtransstyle.focue();
return false;
}
if(form1.gtime.value=="")
{
alert("请填写运输时间！！！");
form1.gtime.focus();
return false;
}
if(form1.glink.value=="")
{alert("请填写联系人！！！");
form1.glink.focus();
return false;
}
if(form1.gphone.value=="")
{
alert("请填写联系电话！！！");
form1.gphone.focus();
return false;
}
if(form1.gremark.value=="")
{
alert("请填写备注！！！");
form1.gremark.focus();
return false;
}
if(form1.grequest.value=="")
{
alert("请填写要求！！！");
form1.grequest.focus();
return false;}
if(form1.username.value=="")
{
alert("请填写完整发布人名！！！");
form1.grequest.focus();
return false;
}
}
</Script>

<body bgcolor="#ffffff"><jsp:include page="top.jsp"/>
<p align="center"><b>企业信息修改</b></p>
<form method="POST" action="goods_changeConfig.jsp" name="form1">
<%
int num;
String sql="select * from tb_GoodsMeg where ID="+request.getParameter("id");
ResultSet rs=connection.executeQuery(sql);
if(rs.next())
{
num=rs.getInt("ID");
%>
<table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
      <p align="center">企业类型：</p>      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="eSort" size="20" value=" <%=rs.getString("EnterpriseSort")%>"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">企业名称：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="eName" size="20" value=" <%=rs.getString("EnterpriseName")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
      <p align="center">经营范围：</p>      </td>
      <td width="36%" height="42">
        <p align="center"><input type="text" name="eRange" size="20" value=" <%=rs.getString("Operation")%>"></p>
      </td>
      <td width="18%" height="42">
        <p align="center">所属区域：</p>
      </td>
      <td width="30%" height="42">
        <p align="center"><input type="text" name="eArea" size="20" value=" <%=rs.getString("WorkArea")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="43">
      <p align="center">企业地址：</p>      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="eAdd" size="20" value=" <%=rs.getString("Address")%>"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">联系电话：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="ePhone" size="20" value=" <%=rs.getString("Phone")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="46">
      <p align="center">联系人：</p>      </td>
      <td width="36%" height="46">
        <p align="center"><input type="text" name="eLink" size="20" value=" <%=rs.getString("LinkMan")%>"></p>
      </td>
      <td width="18%" height="46">
        <p align="center">手机号：</p>
      </td>
      <td width="30%" height="46">
        <p align="center"><input type="text" name="pPhone" size="20" value=" <%=rs.getString("HandSet")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
      <p align="center">传真号：</p>      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="eFax" size="20" value=" <%=rs.getString("Fax")%>"></p>
      </td>

      <td width="18%" height="45">
        <p align="center">邮件网址：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="eEmail" size="20" value=" <%=rs.getString("Email")%>"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
      <p align="center">企业网址：</p>      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="eHttp" size="20" value=" <%=rs.getString("Http")%>"></p>
      </td>
      <td width="18%" height="45">
        <p align="center">类型介绍：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="eIntro" size="20" value=" <%=rs.getString("Intro")%>"></p>
      </td>
    </tr>

    <tr>
      <td width="786" height="40" colspan="4">
        <p align="center">
        <input type="submit" name="change" value="修改" onClick="return check()">
       <input type="reset" value="重置">
     </td>
    </tr>
  </table>
<%}%>
</form>
</body>
</html>
