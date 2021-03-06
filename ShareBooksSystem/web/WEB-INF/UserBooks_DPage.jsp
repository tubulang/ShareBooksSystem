<%--
  Created by IntelliJ IDEA.
  User: Cammer
  Date: 2018/6/6
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>查看用户书籍借出情况</title>
    <meta content="text/html" charset="UTF-8"/>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<div id="top">
    <jsp:include page="../bookManagement/manager_top.jsp" flush="true" />
</div>
<div id="left" style="top:50px; position:absolute">
    <jsp:include page="../bookManagement/manager_left.jsp" flush="true" />
</div>
<div id="pan_main" style="left:450px;top:100px;margin: 0 auto;width: 800px;height: 500px;position:absolute">
    <div><a href="nowUserPage.action"><--返回</a></div>
    <% List list = (List)session.getAttribute("userBooksData"); %>

    <% if (session.getAttribute("userBooksData") == null && (int)session.getAttribute("userBooks_DPage") == 0){ %>
    <div style="color: blue; font-weight: bold">该用户没有书籍借出记录</div>
    <% }else if (session.getAttribute("userBooksData") == null && (boolean)session.getAttribute("userBooks_DLastPage")){ %>
    <div style="color: blue; font-weight: bold">已是最后一页</div>
    <div>
        <table>
            <tr>
                <td><% if ((boolean)session.getAttribute("userBooks_DFirstPage")){ %>
                    <span>&nbsp;</span>
                    <% }else{ %>
                    <a href="firstUserBooks_DPage.action">首页</a>
                    <% } %>
                </td>
                <td>
                    <% if ((boolean)session.getAttribute("userBooks_DLastPage")){ %>
                    <span>&nbsp;</span>
                    <% }else{ %>
                    <a href="nextUserBooks_DPage.action">下一页</a>
                    <% } %>
                </td>
                <td>
                    第<%= (int)session.getAttribute("userBooks_DPage") + 1%>页
                </td>
                <td>
                    <% if ((boolean)session.getAttribute("userBooks_DFirstPage")){ %>
                    <span>&nbsp;</span>
                    <% }else {%>
                    <a href="formUserBooks_DPage.action">上一页</a>
                    <% } %>
                </td>
            </tr>
        </table>
    </div>
    <% }else if (session.getAttribute("userBooksData") == null) { %>
    <div style="color: blue; font-weight: bold">你所查询的用户不存在借出记录，无法计算其书籍的借出情况</div>
    <% }else {%>
    <div>
        <table border="1">
            <tr style="background-color: darkgray">
                <td>书名</td>
                <td>作者</td>
                <td>出版社</td>
                <td>价格</td>
                <td>类别</td>
                <td>次数</td>
            </tr>
            <% for (int i = 0; i < list.size(); i++) {%>
                <% List line = (List) list.get(i); %>
                <tr>
                    <%--把每一列的值取出来并显示--%>
                    <td><%= line.get(0) %></td>
                    <td><%= line.get(1) %></td>
                    <td><%= line.get(2) %></td>
                    <td><%= line.get(3) %></td>
                    <td><%= line.get(4) %></td>
                    <td><%= line.get(5) %></td>
                </tr>
            <% } %>
        </table>
    </div>
    <div>
        <table>
            <tr>
                <td><% if ((boolean)session.getAttribute("userBooks_DFirstPage")){ %>
                    <span>&nbsp;</span>
                    <% }else{ %>
                    <a href="firstUserBooks_DPage.action">首页</a>
                    <% } %>
                </td>
                <td>
                    <% if ((boolean)session.getAttribute("userBooks_DLastPage")){ %>
                    <span>&nbsp;</span>
                    <% }else{ %>
                    <a href="nextUserBooks_DPage.action">下一页</a>
                    <% } %>
                </td>
                <td>
                    第<%= (int)session.getAttribute("userBooks_DPage") + 1%>页
                </td>
                <td>
                    <% if ((boolean)session.getAttribute("userBooks_DFirstPage")){ %>
                    <span>&nbsp;</span>
                    <% }else {%>
                    <a href="formUserBooks_DPage.action">上一页</a>
                    <% } %>
                </td>
            </tr>
        </table>
    </div>
    <% } %>
</div>
</body>
</html>
