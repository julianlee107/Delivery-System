<%@ page contentType="text/html; charset=GB2312" %>
<%@ page import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        knowledge_add_config page
    </title>
</head>
<%!
    String sql;
    Date date=new Date();
%>
<body bgcolor="#ffffff">
<%
    request.setCharacterEncoding("gb2312");

    String title=request.getParameter("title");
    String content=request.getParameter("content");
    String author=(String)session.getAttribute("username");

    java.sql.Date datatime=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());

    sql="insert tb_Knowledge values('"+title+"','"+content+"','"+author+"','"+datatime+"')";



    boolean bb=connection.executeUpdata(sql);

%>
<script type="text/javascript">
    alert(<%=bb%>);
</script>
<%
    if(bb)
    {%>
<script language="javascript">
    alert("������Ĺ�����Ϣ�Ѿ��ɹ���ɣ�����");
</script>
<%
    response.sendRedirect("knowledge_select.jsp");
}else
{
%>
<script language="javascript">
    alert("������Ĺ�����Ϣ����ʧ�ܣ�����");
    history.back();
</script>
<%
    }
%>
</body>
</html>
