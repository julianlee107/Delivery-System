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
    //修改选中的车辆信息
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
    sql="update tb_Enterprise set EnterpriseSort='"+enterprise_sort+"',EnterpriseName='"+enterprise_name+"',Operation='"+
            operation+"',WorkArea='"+work_area+"',Phone='"+phone+"',HandSet='"+handset+"',Fax='"+
            fax+"',Email='"+email+"',Http='"+http+"',Intro='"+intro+"',IssueDate='"+
            issudate+"',UserName='"+
            username+"' where Code="+request.getParameter("code");
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
    alert("您输入的企业信息信息修改失败！！！");
    history.back();
    <%
    }
    %>
</script>
</body>
</html>
