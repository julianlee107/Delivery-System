<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="CSS/style.css">
<title>
enterprise page
</title>
</head>
<Script language="javascript">
function check()
{
 if(form1.eSort.value=="")
{
alert("请填写企业类型！！");
form1.eSort.focus();
return false;
}
if(form1.eName.value=="")
{
alert("请填写企业名称！！！");
form1.eName.focus();
return false;
}
if(form1.eRange.value=="")
{
alert("请填写经营范围！！！");
form1.eRange.focus();
return false;
}
if(form1.eArea.value=="")
{
alert("请填写所属区域！！！");
form1.eArea.focus();
return false;
}
if(form1.eAdd.value=="")
{
alert("请填写企业地址！！！");
form1.eAdd.focus();
return false;
}
if(form1.ePhone.value=="")
{
alert("请填写联系电话！！！");
form1.ePhone.focus();
return false;
}
if(form1.eLink.value=="")
{
alert("请填写联系人！！！");
form1.eLink.focus();
return false;
}
if(form1.pPhone.value=="")
{
alert("请填写手机号！！！");
form1.pPhone.focus();
return false;
}
if(form1.eFax.value=="")
{
alert("请填写传真号！！！");
form1.eFax.focus();
return false;
}
if(form1.eEmail.value=="")
{
alert("请填写邮件地址！！！");
form1.eEmail.focus();
return false;
}
if(form1.eHttp.value=="")
{alert("请填写企业网址！！！");
form1.eHttp.focus();
return false;
}
if(form1.eIntro.value=="")
{
alert("请填写类型介绍！！！");
form1.eIntro.focus();
return false;
}

}
</Script>
<body bgcolor="#ffffff">

  <jsp:include page="top.jsp"/>
<p align="center"><b>企业信息发布</b></p>
<form method="POST" action="enterprise_addConfig.jsp" name="form1">
  <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
      <td width="20%" height="43">
      <p align="center">企业类型：</p>      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="eSort" size="20"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">企业名称：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="eName" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="42">
      <p align="center">经营范围：</p>      </td>
      <td width="36%" height="42">
        <p align="center"><input type="text" name="eRange" size="20"></p>
      </td>
      <td width="18%" height="42">
        <p align="center">所属区域：</p>
      </td>
      <td width="30%" height="42">
        <p align="center"><input type="text" name="eArea" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="43">
      <p align="center">企业地址：</p>      </td>
      <td width="36%" height="43">
        <p align="center"><input type="text" name="eAdd" size="20"></p>
      </td>
      <td width="18%" height="43">
        <p align="center">联系电话：</p>
      </td>
      <td width="30%" height="43">
        <p align="center"><input type="text" name="ePhone" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="46">
      <p align="center">联系人：</p>      </td>
      <td width="36%" height="46">
        <p align="center"><input type="text" name="eLink" size="20"></p>
      </td>
      <td width="18%" height="46">
        <p align="center">手机号：</p>
      </td>
      <td width="30%" height="46">
        <p align="center"><input type="text" name="pPhone" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
      <p align="center">传真号：</p>      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="eFax" size="20"></p>
      </td>

      <td width="18%" height="45">
        <p align="center">邮件网址：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="eEmail" size="20"></p>
      </td>
    </tr>
    <tr>
      <td width="20%" height="45">
      <p align="center">企业网址：</p>      </td>
      <td width="36%" height="45">
        <p align="center"><input type="text" name="eHttp" size="20"></p>
      </td>
      <td width="18%" height="45">
        <p align="center">类型介绍：</p>
      </td>
      <td width="30%" height="45">
        <p align="center"><input type="text" name="eIntro" size="20"></p>
      </td>
    </tr>

    <tr>
      <td width="786" height="58" colspan="4">
        <p align="center">
        <input type="submit" name="show" value="发布" onClick="return check()">
        <input type="reset" name="reset" value="重置"> &nbsp;&nbsp;<a href="enterprise_select.jsp">返回</a>
      </td>
    </tr>
  </table>
</form>
</body>
</html>
