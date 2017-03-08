<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.sql.*"%>
<jsp:useBean id="connection" scope="page" class="com.wy.JDBConnection"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link rel="stylesheet" href="../CSS/style.css">
    <title>
        car page
    </title>
</head>
<%!
    ResultSet rs=null;
    String sql;
    int code;
    int pagesize=10;
    int rowcount=0;
    int pagecount=1;
%>
<jsp:include page="mtop.jsp"/>

<body bgcolor="#ffffff">
<table width="785" height="189" border="1" align="center" cellpadding="0" cellspacing="0"bordercolor="#FFFFFF" bordercolordark="#333333" bordercolorlight="#FFFFFF">
    <tr>
        <td height="38" align="center" colspan="5">企业信息</td>
    </tr>
    <tr align="right">
        <td height="29" colspan="5"><a href="car_add.jsp">发布企业信息</a></td>
    </tr>
    <tr>
        <td width="114" height="29" align="center">企业类型</td>
        <td width="277" height="29" align="center">企业名称</td>
        <td width="108" height="29" align="center">经营范围</td>
        <td width="186" height="29" align="center">所属区域</td>
        <td width="92" height="29" align="center">地址</td>
        <td width="92" height="29" align="center">操作</td>

    </tr>
    <%

        sql="select * from tb_CarMessage order by IssueDate desc ";
        try
        {
            rs=connection.executeQuery(sql);
            if(!rs.next())
            {
    %>
    <script language="javascript">
        alert("没有动态信息");
        history.back();
    </script>
    <%
    }else
    {
        rs.last();
        rowcount=rs.getRow();
        int showpage=1;
        pagecount=((rowcount%pagesize)==0?(rowcount/pagesize):(rowcount/pagesize)+1);
        String topage=request.getParameter("topage");
        if(topage!=null)
        {
            showpage=Integer.parseInt(topage);
            if(showpage>pagecount){
                showpage=pagecount;
            }else if(showpage<=0){
                showpage=1;
            }
        }
        rs.absolute((showpage-1)*pagesize+1);
        for(int i=1;i<=pagesize;i++)
        {
            code=rs.getInt("ID");
    %>
    <tr>
        <td width="114" height="32" align="center"><%=code%></td>
        <td width="277" height="32" align="center"><%=rs.getString("EnterpriseSort")%></td>
        <td width="108" height="32" align="center"><%=rs.getString("EnterpriseName")%></td>
        <td width="186" height="32" align="center"><%=rs.getString("Operation")%>
        </td><td width="92" height="29" align="center"><%=rs.getString("WorkArea")%></td>
        <td width="92" height="29" align="center"><%=rs.getString("Address")%>></td>
        <td height="32" align="center">
            <a href="enterprise_xiangxi.jsp?id=<%=code%>">详细</a>
            <a href="enterprise_change.jsp?id=<%=code%>">&nbsp;修改</a></td>
        <a href="enterprise_delete.jsp?id=<%=code%>">&nbsp;删除</a></td>
    </tr>
    <%
            if(!rs.next())
                break;
        }
    %>
    <tr>
        <td height="30" colspan="8" align="right">

            <table width="786" align="center">
                <tr>
                    <td width="786" height="30" colspan="9" align="right">
                        共<%=pagecount%>页&nbsp;&nbsp;
                        <a href="enterprise_select.jsp?topage=<%=1%>">第一页</a>&nbsp;&nbsp;
                        <a href="enterprise_select.jsp?topage=<%=showpage-1%>">上一页</a>&nbsp;&nbsp;
                        <a href="enterprise_select.jsp?topage=<%=showpage+1%>">下一页</a>&nbsp;&nbsp;
                        <a href="enterprise_select.jsp?topage=<%=pagecount%>">最后一页</a>&nbsp;&nbsp;

                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <%
            }
        }catch(Exception e)
        {e.printStackTrace();}
    %>
</table><jsp:include page="../down.jsp"/>
</body>
</html>
