<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>教师信息</title>

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
                    <h2 class="text-center"  style="color: #337ab7">教师信息</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 column">
                    <%--toAddBook--%>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/teacher/toAddTeacher">添加教师</a>
                    <a class="btn btn-primary" href="#">显示全部教师</a>
                </div>
                <div class="col-md-7 column">
                    <form action="${pageContext.request.contextPath}/teacher/queryTeacher" method="post" style="float: right" class="form-inline" >
                        <input type="text" name="queryTeacherName" class="form-control" placeholder="请输入要查询的教师名称">
                        <button type="submit" class="btn btn-primary">查询</button>
                        <span style="color: red;font-weight: bold">${error}</span>
                    </form>
                </div>
            </div>
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th class="text-center">教师编号</th>
                    <th class="text-center">教师姓名</th>
                    <th class="text-center">学院编号</th>
                    <th class="text-center">性别</th>
                    <th class="text-center">年龄</th>
                    <th class="text-center">办公室</th>
                    <th class="text-center">教师职称</th>
                    <th class="text-center">联系方式</th>
                    <th class="text-center">邮箱</th>
                    <th class="text-center">家庭住址</th>
                    <th class="text-center">民族</th>
                    <th class="text-center">政治面貌</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="teacher" items="${list}">
                    <tr>
                        <td class="text-center">${teacher.teacherId}</td>
                        <td class="text-center">${teacher.teacherName}</td>
                        <td class="text-center">${teacher.collegeId}</td>
                        <td class="text-center">${teacher.teacherGender}</td>
                        <td class="text-center">${teacher.teacherAge}</td>
                        <td class="text-center">${teacher.teacherRoom}</td>
                        <td class="text-center">${teacher.teacherTitle}</td>
                        <td class="text-center">${teacher.teacherPhone}</td>
                        <td class="text-center">${teacher.teacherEmail}</td>
                        <td class="text-center">${teacher.teacherAddress}</td>
                        <td class="text-center">${teacher.teacherNation}</td>
                        <td class="text-center">${teacher.teacherStatus}</td>
                        <td class="text-center">
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/teacher/toUpdate/${teacher.teacherId}">修改</a>
                            &nbsp;|&nbsp;
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/teacher/deleteTeacher/${teacher.teacherId}">删除</a>
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
