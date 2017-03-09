<%@ page contentType="text/html; charset=GB2312" import="java.sql.*,java.util.Date"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <title>
        car_change_config page
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
    String trademark=request.getParameter("trademark").trim();
    String brand=request.getParameter("brand").trim();
    String style=request.getParameter("style").trim();
    String car_load=request.getParameter("carLord").trim();
    String used_time=request.getParameter("usedTime").trim();
    String driver_name=request.getParameter("driverName").trim();
    String licence_num=request.getParameter("licenceNumber").trim();
    String  driver_time=request.getParameter("driverTime").trim();
    String licence_style=request.getParameter("licenceStyle").trim();
    String transport_style=request.getParameter("transportStyle").trim();
    String link_man=request.getParameter("linkMan").trim();
    String link_phone=request.getParameter("linkPhone").trim();
    String remark=request.getParameter("remark").trim();
    String issudate=request.getParameter("issudate");
    String username=request.getParameter("username").trim();
    java.sql.Date gshowdate=new java.sql.Date(date.getYear(),date.getMonth(),date.getDate());
    sql="update tb_CarMessage set Trademark='"+trademark+"',Brand='"+brand+"',CarLord='"+
            car_load+"',UsedTime='"+used_time+"',DriverName='"+driver_name+"',LicenceNumber='"+licence_num+"',licence='"+
            licence_style+"',TransportStyle='"+transport_style+"',LinkMan='"+link_man+"',DriverTime='"+driver_time+",LinkPhone='"+
            link_phone+"',IssueDate='"+
            issudate+"',Remark='"+remark+"',UserName='"+
            username+"',Style='"+style+" where Code="+request.getParameter("code");
    boolean sert=connection.executeUpdata(sql);
    if(sert)
    {%>
<script language="javascript">
    alert("您输入的车辆信息已经成功修改！！！");
    <%
    response.sendRedirect("car_select.jsp");
    }else
    {
    %>
    alert("您输入的车辆信息信息修改失败！！！");
    history.back();
    <%
    }
    %>
</script>
</body>
</html>
