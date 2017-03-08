<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link rel="stylesheet" href="CSS/style.css">
    <title>
        enterprise_add page
    </title>
</head>
<Script language="javascript">
    function check()
    {
        if(form1.enterpriseName.value=="")
        {
            alert("请填写企业名称！！");
            form1.enterpriseName.focus();
            return false;
        }
        if(form1.enterpriseSort.value=="")
        {
            alert("请填写企业类型！！！");
            form1.enterpriseSort.focus();
            return false;
        }
        if(form1.operation.value=="")
        {
            alert("请填写经营范围！！！");
            form1.operation.focus();
            return false;
        }
        if(form1.workArea.value=="")
        {
            alert("请填写所属区域！！！");
            form1.workArea.focus();
            return false;
        }
        if(form1.address.value=="")
        {
            alert("请填写企业地址！！！");
            form1.address.focus();
            return false;
        }
        if(form1.phone.value=="")
        {
            alert("请填写驾驶员姓名！！！");
            form1.phone.focus();
            return false;
        }
        if(form1.linkMan.value=="")
        {
            alert("请填写联系人！！！");
            form1.linkMan.focus();
            return false;
        }
        if(form1.fax.value=="")
        {alert("请填写联系人电话！！！");
            form1.fax.focus();
            return false;
        }
        if(form1.email.value=="")
        {
            alert("请填写备注！！！");
            form1.email.focus();
            return false;
        }
    }
</Script>
<body bgcolor="#ffffff">

<jsp:include page="top.jsp"/>
<p align="center"><b>企业信息修改</b></p>
<form method="POST" action="enterprise_addConfig.jsp" name="form1">
    <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
        <tr>
            <td width="20%" height="43">
                <p align="center">企业类型：</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="enterpriseSort" size="20"></p>
            </td>
            <td width="18%" height="43">
                <p align="center">企业名称：</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="enterpriseName" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="42">
                <p align="center">经营范围：</p>      </td>
            <td width="36%" height="42">
                <p align="center"><input type="text" name="operation" size="20"></p>
            </td>
            <td width="18%" height="42">
                <p align="center">所属区域：</p>
            </td>
            <td width="30%" height="42">
                <p align="center"><input type="text" name="workArea" size="20"></p>
            </td>顿
        </tr>
        <tr>
            <td width="20%" height="43">
                <p align="center">企业地址：</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="address" size="20"></p>
            </td>年
            <td width="18%" height="43">
                <p align="center">联系电话：</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="phone" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="46">
                <p align="center">联系人：</p>      </td>
            <td width="36%" height="46">
                <p align="center"><input type="text" name=linkMan" size="20"></p>
            </td>
            <td width="18%" height="46">
                <p align="center">手机号：</p>
            </td>
            <td width="30%" height="46">
                <p align="center"><input type="text" name="handSet" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">传真号：</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="fax" size="20"></p>
            </td>
            </p>
            </td>
            <td width="18%" height="45">
                <p align="center">电子邮箱：</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="email" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">企业网址：</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="http" size="20"></p>
            </td>
            <td width="18%" height="45">
                <p align="center">类型介绍：</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="intro" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="78">
                <p align="center">发布人：</p>      </td>
            <td width="84%" height="78" colspan="3">
                <p align="left"><textarea rows="5" name="userName" cols="72"></textarea></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="74">
                <p align="center">发布时间：</p>
            </td>
            <td width="84%" height="74" colspan="3">
                <p align="left"><textarea rows="5" name="Issudate" cols="72"></textarea></p>
            </td>
        </tr>
        <tr>
            <td width="786" height="58" colspan="4">
                <p align="center">
                    <input type="submit" name="show" value="修改" onClick="return check()">
                    <input type="reset" name="reset" value="重置"> &nbsp;&nbsp;<a href="enterprise_select.jsp">返回</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
