<%@ page contentType="text/html; charset=GB2312"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        enterprise_delete page
    </title>
</head>
<body bgcolor="#ffffff">
<%
    String sql="delete tb_CarMessage where ID="+request.getParameter("id");
    boolean dele=connection.executeUpdata(sql);
    if(dele)
    {
%>
<script language="javascript">
    alert("ɾ���ɹ�������");
</script>
<%
    response.sendRedirect("enterprise_select.jsp");
}else
{
%>
<script language="javascript">
    alert("ɾ��ʧ�ܣ�����");
    history.back();
</script>
<%
    }
%>
</body>
</html>
