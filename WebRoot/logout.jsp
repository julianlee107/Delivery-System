<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
<title>
logout page
</title>>
</head>>
<body bgcolor='#ffffff'>
<%
    <%--���session�洢������,Ȼ����ת����ҳ��--%>
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>
</html>