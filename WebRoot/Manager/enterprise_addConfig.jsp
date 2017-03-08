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
    String enterprise_sort=request.getParameter("enterpriseSort").trim();
    String enterprise_name=request.getParameter("enterpriseName").trim();
    String operation=request.getParameter("operation").trim();
    String work_area=request.getParameter("workArea").trim();
    String phone=request.getParameter("phone").trim();
    String link_man=request.getParameter("linkMan").trim();
    String handset=request.getParameter("handSet").trim();
    String fax=request.getParameter("fax").trim();
    String email=request.getParameter("email").trim();
    String http=request.getParameter("http").trim();
    String intro=request.getParameter("intro").trim();
    String issudate=request.getParameter("issudate");
    String username=request.getParameter("username").trim();
    java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
    sql="insert tb_CarMessage values('"+enterprise_name+"','"+enterprise_sort+"','"+operation+"','"+work_area+"','"+phone+"','"+handset+"" +
            ",'"+fax+"','"+email+"','"+http+"','"+intro+"','"+link_man+"','"+issudate+"','"+username+")";
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
