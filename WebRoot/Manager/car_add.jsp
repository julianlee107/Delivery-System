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
            alert("����д���ƺţ���");
            form1.code.focus();
            return false;
        }
        if(form1.brand.value=="")
        {
            alert("����д����Ʒ��������");
            form1.brand.focus();
            return false;
        }
        if(form1.style.value=="")
        {
            alert("����д�������ͣ�����");
            form1.style.focus();
            return false;
        }
        if(form1.carLoad.value=="")
        {
            alert("����д�������أ�����");
            form1.carLoad.focus();
            return false;
        }
        if(form1.usedTime.value=="")
        {
            alert("����дʹ��ʱ�䣡����");
            form1.usedTime.focus();
            return false;
        }
        if(form1.driverName.value=="")
        {
            alert("����д��ʻԱ����������");
            form1.driverName.focus();
            return false;
        }
        if(form1.driverTime.value=="")
        {
            alert("����д���䣡����");
            form1.driverTime.focus();
            return false;
        }
        if(form1.licenceNumber.value=="")
        {
            alert("����д��ʻ֤���룡����");
            form1.licenceNumber.focus();
            return false;
        }
        if(form1.transportStyle.value=="")
        {
            alert("����д�������ͣ�����");
            form1.transportStyle.focus();
            return false;
        }
        if(form1.linkMan.value=="")
        {
            alert("����д��ϵ�ˣ�����");
            form1.linkMan.focus();
            return false;
        }
        if(form1.linkPhone.value=="")
        {alert("����д��ϵ�˵绰������");
            form1.linkPhone.focus();
            return false;
        }
        if(form1.remark.value=="")
        {
            alert("����д��ע������");
            form1.gremark.focus();
            return false;
        }
    }
</Script>
<body bgcolor="#ffffff">

<jsp:include page="mtop.jsp"/>
<p align="center"><b>������Ϣ����</b></p>
<form method="POST" action="car_addconfig.jsp" name="form1">
    <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
        <tr>
            <td width="20%" height="43">
                <p align="center">���ƺ��룺</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="code" size="20"></p>
            </td>
            <td width="18%" height="43">
                <p align="center">�������ͣ�</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="trademark" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="42">
                <p align="center">����Ʒ����</p>      </td>
            <td width="36%" height="42">
                <p align="center"><input type="text" name="brand" size="20"></p>
            </td>
            <td width="18%" height="42">
                <p align="center">�������أ�</p>
            </td>
            <td width="30%" height="42">
                <p align="center"><input type="text" name="carLoad" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="43">
                <p align="center">ʹ��ʱ�䣺</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="usedTime" size="20"></p>
            </td>
            <td width="18%" height="43">
                <p align="center">��ʻԱ������</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="driverName" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="46">
                <p align="center">���䣺</p>      </td>
            <td width="36%" height="46">
                <p align="center"><input type="text" name=driverTime" size="20"></p>
            </td>
            <td width="18%" height="46">
                <p align="center">��ʻ֤���룺</p>
            </td>
            <td width="30%" height="46">
                <p align="center"><input type="text" name="licenceNumber" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">��ʻ֤���ͣ�</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="licenceStyle" size="20"></p>
            </td>
                </p>
            </td>
            <td width="18%" height="45">
                <p align="center">�������ͣ�</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="transportStyle" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">��ϵ�绰��</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="linkPhone" size="20"></p>
            </td>
            <td width="18%" height="45">
                <p align="center">��ϵ�ˣ�</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="linkMan" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="78">
                <p align="center">��ע��</p>      </td>
            <td width="84%" height="78" colspan="3">
                <p align="left"><textarea rows="5" name="remark" cols="72"></textarea></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="74">
                <p align="center">����ʱ�䣺</p>
            </td>
            <td width="84%" height="74" colspan="3">
                <p align="left"><textarea rows="5" name="Issudate" cols="72"></textarea></p>
            </td>
        </tr>
        <tr>
            <td width="786" height="58" colspan="4">
                <p align="center">
                    <input type="submit" name="show" value="����" onClick="return check()">
                    <input type="reset" name="reset" value="����"> &nbsp;&nbsp;<a href="car_select.jsp">����</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
