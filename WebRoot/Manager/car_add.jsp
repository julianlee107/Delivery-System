<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link rel="stylesheet" href="CSS/style.css">
    <title>
        car_add page
    </title>
</head>
<Script language="javascript">
    function check()
    {
        if(form1.code.value=="")
        {
            alert("请填写车牌号！！");
            form1.code.focus();
            return false;
        }
        if(form1.brand.value=="")
        {
            alert("请填写车辆品名！！！");
            form1.brand.focus();
            return false;
        }
        if(form1.style.value=="")
        {
            alert("请填写车辆类型！！！");
            form1.style.focus();
            return false;
        }
        if(form1.carLoad.value=="")
        {
            alert("请填写车辆载重！！！");
            form1.carLoad.focus();
            return false;
        }
        if(form1.usedTime.value=="")
        {
            alert("请填写使用时间！！！");
            form1.usedTime.focus();
            return false;
        }
        if(form1.driverName.value=="")
        {
            alert("请填写驾驶员姓名！！！");
            form1.driverName.focus();
            return false;
        }
        if(form1.driverTime.value=="")
        {
            alert("请填写驾龄！！！");
            form1.driverTime.focus();
            return false;
        }
        if(form1.licenceNumber.value=="")
        {
            alert("请填写驾驶证号码！！！");
            form1.licenceNumber.focus();
            return false;
        }
        if(form1.transportStyle.value=="")
        {
            alert("请填写运输类型！！！");
            form1.transportStyle.focus();
            return false;
        }
        if(form1.linkMan.value=="")
        {
            alert("请填写联系人！！！");
            form1.linkMan.focus();
            return false;
        }
        if(form1.linkPhone.value=="")
        {alert("请填写联系人电话！！！");
            form1.linkPhone.focus();
            return false;
        }
        if(form1.remark.value=="")
        {
            alert("请填写备注！！！");
            form1.gremark.focus();
            return false;
        }
    }
</Script>
<body bgcolor="#ffffff">

<jsp:include page="mtop.jsp"/>
<p align="center"><b>车辆信息发布</b></p>
<form method="POST" action="car_addconfig.jsp" name="form1">
    <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
        <tr>
            <td width="20%" height="43">
                <p align="center">车牌号码：</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="code" size="20"></p>
            </td>
            <td width="18%" height="43">
                <p align="center">车辆类型：</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="trademark" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="42">
                <p align="center">车辆品名：</p>      </td>
            <td width="36%" height="42">
                <p align="center"><input type="text" name="brand" size="20"></p>
            </td>
            <td width="18%" height="42">
                <p align="center">车辆载重：</p>
            </td>
            <td width="30%" height="42">
                <p align="center"><input type="text" name="carLoad" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="43">
                <p align="center">使用时间：</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="usedTime" size="20"></p>
            </td>
            <td width="18%" height="43">
                <p align="center">驾驶员姓名：</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="driverName" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="46">
                <p align="center">驾龄：</p>      </td>
            <td width="36%" height="46">
                <p align="center"><input type="text" name=driverTime" size="20"></p>
            </td>
            <td width="18%" height="46">
                <p align="center">驾驶证号码：</p>
            </td>
            <td width="30%" height="46">
                <p align="center"><input type="text" name="licenceNumber" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">驾驶证类型：</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="licenceStyle" size="20"></p>
            </td>
                </p>
            </td>
            <td width="18%" height="45">
                <p align="center">运输类型：</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="transportStyle" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">联系电话：</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="linkPhone" size="20"></p>
            </td>
            <td width="18%" height="45">
                <p align="center">联系人：</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="linkMan" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="78">
                <p align="center">备注：</p>      </td>
            <td width="84%" height="78" colspan="3">
                <p align="left"><textarea rows="5" name="remark" cols="72"></textarea></p>
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
                    <input type="submit" name="show" value="发布" onClick="return check()">
                    <input type="reset" name="reset" value="重置"> &nbsp;&nbsp;<a href="car_select.jsp">返回</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
