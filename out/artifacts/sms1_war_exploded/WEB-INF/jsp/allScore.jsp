<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>成绩管理</title>

    <%--bootstrap美化页面--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body>

<div class="container-fluid">

    <div class="row">
        <div class="col-md-1" style="height: 100%;background-color: #303133">
            <ul class="nav nav-list">
                <li class="nav-header">选项</li>
                <li class="active"><a href="${pageContext.request.contextPath}/admin/main">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/course/allCourse">课程管理</a></li>
                <li><a href="${pageContext.request.contextPath}/student/allStudent">学生管理</a></li>
                <li><a href="${pageContext.request.contextPath}/teacher/allTeacher">教师管理</a></li>
                <li><a href="${pageContext.request.contextPath}/score/allScore">成绩管理</a></li>
                <li class="divider">&nbsp;</li>
                <li><a href="${pageContext.request.contextPath}/courseShow">退出</a></li>
            </ul>
        </div>
        <div class="col-md-11" style="height: 100%">
            <div class="row clearfix">
                <div class="page-header">
                    <h2 class="text-center"  style="color: #337ab7">成绩信息</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 column">
                    <%--toAddBook--%>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/score/toAddScore">添加成绩</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/score/allScore">显示全部成绩</a>
                </div>
                <div class="col-md-7 column">
                    <form action="${pageContext.request.contextPath}/score/queryScore" method="post" style="float: right" class="form-inline" >
                        <input type="text" name="queryStuId" class="form-control" placeholder="请输入要查询的学号" required>
                        <button type="submit" class="btn btn-primary">查询</button>
                        <span style="color: red;font-weight: bold">${error}</span>
                    </form>
                </div>
            </div>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th class="text-center">成绩编号</th>
                    <th class="text-center">学号</th>
                    <th class="text-center">课程名称</th>
                    <th class="text-center">平时成绩</th>
                    <th class="text-center">期末成绩</th>
                    <th class="text-center">总成绩</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="score" items="${list}">
                    <tr>
                        <td class="text-center">${score.scoreId}</td>
                        <td class="text-center">${score.stuId}</td>
                        <td class="text-center">${score.courseId}</td>
                        <td class="text-center">${score.scoreUsual}</td>
                        <td class="text-center">${score.scoreExam}</td>
                        <td class="text-center">${score.scoreTotal}</td>
                        <td class="text-center">
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/score/toUpdate/${score.scoreId}">修改</a>
                            &nbsp;|&nbsp;
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/score/deleteScore/${score.scoreId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>
