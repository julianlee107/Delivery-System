<%@ page contentType="text/html; charset=GBK" %>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        knowledge
    </title>
</head>
<body bgcolor="#ffffff">
<%
    //从数据库中删除选中的物流只是
    String sql="delete tb_Knowledge where ID="+request.getParameter("id");
    boolean dele=connection.executeUpdata(sql);
    if(dele)
    {
%>
<script language="javascript">
    alert("删除成功！！！");
</script>
<%
    response.sendRedirect("knowledge_select.jsp");
}else
{
%>
<script language="javascript">
    alert("删除失败！！！");
    history.back();
</script>
<%
    }
%>
</body>
</html>

