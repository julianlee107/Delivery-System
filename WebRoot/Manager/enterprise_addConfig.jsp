<%@ page contentType="text/html; charset=GB2312" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        enterprise_change_config page
    </title>
</head>
<body bgcolor="#ffffff">
<%!
    Date date=new Date();
    String sql;
    ResultSet rs;
    int i;
%>
<%
    request.setCharacterEncoding("gb2312");
    String enterprise_sort=request.getParameter("enterpriseSort");
    String enterprise_name=request.getParameter("enterpriseName");
    String operation=request.getParameter("operation");
    String work_area=request.getParameter("workArea");
    String phone=request.getParameter("phone");
    String link_man=request.getParameter("linkMan");
    String handset=request.getParameter("handSet");
    String fax=request.getParameter("fax");
    String email=request.getParameter("email");
    String http=request.getParameter("http");
    String intro=request.getParameter("intro");
    String issudate=request.getParameter("issudate");
    String username=request.getParameter("username");
    java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
    sql="insert tb_Enterprise values('"+enterprise_name+"','"+enterprise_sort+"','"+operation+"','"+work_area+"','"+phone+"','"+handset+"" +
            "','"+fax+"','"+email+"','"+http+"','"+intro+"','"+link_man+"','"+issudate+"','"+username+"')";
    boolean sert=connection.executeUpdata(sql);
    if(sert)
    {%>
<script language="javascript">
    alert("您输入的企业信息已经成功修改！！！");
    <%
    response.sendRedirect("enterprise_select.jsp");
    }else
    {
    %>
     alert("您输入的企业信息修改失败！！！");
    	history.back();
    <%
    }
    %>
</script>
</body>
</html>
