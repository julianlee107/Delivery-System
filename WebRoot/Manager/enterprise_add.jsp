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
            alert("����д��ҵ���ƣ���");
            form1.enterpriseName.focus();
            return false;
        }
        if(form1.enterpriseSort.value=="")
        {
            alert("����д��ҵ���ͣ�����");
            form1.enterpriseSort.focus();
            return false;
        }
        if(form1.operation.value=="")
        {
            alert("����д��Ӫ��Χ������");
            form1.operation.focus();
            return false;
        }
        if(form1.workArea.value=="")
        {
            alert("����д�������򣡣���");
            form1.workArea.focus();
            return false;
        }
        if(form1.address.value=="")
        {
            alert("����д��ҵ��ַ������");
            form1.address.focus();
            return false;
        }
        if(form1.phone.value=="")
        {
            alert("����д��ʻԱ����������");
            form1.phone.focus();
            return false;
        }
        if(form1.linkMan.value=="")
        {
            alert("����д��ϵ�ˣ�����");
            form1.linkMan.focus();
            return false;
        }
        if(form1.fax.value=="")
        {alert("����д��ϵ�˵绰������");
            form1.fax.focus();
            return false;
        }
        if(form1.email.value=="")
        {
            alert("����д��ע������");
            form1.email.focus();
            return false;
        }
    }
</Script>
<body bgcolor="#ffffff">

<jsp:include page="top.jsp"/>
<p align="center"><b>��ҵ��Ϣ�޸�</b></p>
<form method="POST" action="enterprise_addConfig.jsp" name="form1">
    <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
        <tr>
            <td width="20%" height="43">
                <p align="center">��ҵ���ͣ�</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="enterpriseSort" size="20"></p>
            </td>
            <td width="18%" height="43">
                <p align="center">��ҵ���ƣ�</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="enterpriseName" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="42">
                <p align="center">��Ӫ��Χ��</p>      </td>
            <td width="36%" height="42">
                <p align="center"><input type="text" name="operation" size="20"></p>
            </td>
            <td width="18%" height="42">
                <p align="center">��������</p>
            </td>
            <td width="30%" height="42">
                <p align="center"><input type="text" name="workArea" size="20"></p>
            </td>��
        </tr>
        <tr>
            <td width="20%" height="43">
                <p align="center">��ҵ��ַ��</p>      </td>
            <td width="36%" height="43">
                <p align="center"><input type="text" name="address" size="20"></p>
            </td>��
            <td width="18%" height="43">
                <p align="center">��ϵ�绰��</p>
            </td>
            <td width="30%" height="43">
                <p align="center"><input type="text" name="phone" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="46">
                <p align="center">��ϵ�ˣ�</p>      </td>
            <td width="36%" height="46">
                <p align="center"><input type="text" name=linkMan" size="20"></p>
            </td>
            <td width="18%" height="46">
                <p align="center">�ֻ��ţ�</p>
            </td>
            <td width="30%" height="46">
                <p align="center"><input type="text" name="handSet" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">����ţ�</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="fax" size="20"></p>
            </td>
            </p>
            </td>
            <td width="18%" height="45">
                <p align="center">�������䣺</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="email" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="45">
                <p align="center">��ҵ��ַ��</p>      </td>
            <td width="36%" height="45">
                <p align="center"><input type="text" name="http" size="20"></p>
            </td>
            <td width="18%" height="45">
                <p align="center">���ͽ��ܣ�</p>
            </td>
            <td width="30%" height="45">
                <p align="center"><input type="text" name="intro" size="20"></p>
            </td>
        </tr>
        <tr>
            <td width="20%" height="78">
                <p align="center">�����ˣ�</p>      </td>
            <td width="84%" height="78" colspan="3">
                <p align="left"><textarea rows="5" name="userName" cols="72"></textarea></p>
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
                    <input type="submit" name="show" value="�޸�" onClick="return check()">
                    <input type="reset" name="reset" value="����"> &nbsp;&nbsp;<a href="enterprise_select.jsp">����</a>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
