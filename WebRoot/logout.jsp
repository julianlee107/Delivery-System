<%@ page contentType="text/html;charset=GBK"%>
<html>
<head>
<title>
logout page
</title>>
</head>>
<body bgcolor='#ffffff'>
<%
    <%--清空session存储的内容,然后跳转到主页面--%>
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>
</html>