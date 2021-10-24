 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>所有课程展示</title>

    <%--bootstrap美化页面--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">


</head>
<body>

<div class="container-fluid">

    <div class="row">
        <div class="col-md-1" style=" height: 100%;background-color: #303133">
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
                        <h2 class="text-center"  style="color: #337ab7">课程信息</h2>
                    </div>
            </div>
            <div class="row">
                <div class="col-md-4 column">
                    <%--toAddBook--%>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/toAddCourse">添加课程</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/allCourse">显示全部课程</a>
                </div>
                <div class="col-md-7 column">
                    <form action="${pageContext.request.contextPath}/course/queryCourse" method="post" style="float: right" class="form-inline" >
                        <input type="text" name="queryCourseName" class="form-control" placeholder="请输入要查询的课程名称">
                        <button type="submit" class="btn btn-primary">查询</button>
                        <span style="color: red;font-weight: bold">${error}</span>
                    </form>
                </div>
            </div>
            <table class="table table-hover table-striped table-bordered">
                <thead>
                <tr>
                    <th class="text-center" width="85px">课程编号</th>
                    <th class="text-center" width="85px">学院编号</th>
                    <th class="text-center" width="100px">课程名称</th>
                    <th class="text-center" width="50px">学分</th>
                    <th class="text-center" width="50px">学时</th>
                    <th class="text-center" width="120px">建议修读学期</th>
                    <th class="text-center" width="100px">课程类型</th>
                    <th class="text-center" width="200px">操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="course" items="${list}">
                    <tr>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.courseId}</td>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.collegeId}</td>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.courseName}</td>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.courseCredit}</td>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.coursePeriod}</td>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.courseYear}</td>
                        <td class="text-center" style="text-align:center;vertical-align:middle;">${course.courseType}</td>
                        <td class="text-center">
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/toDetail/${course.courseId}">详细信息</a>
                            |
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/toUpdate/${course.courseId}">修改</a>
                            &nbsp|&nbsp
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/deleteCourse/${course.courseId}">删除</a>
                            |
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/toUploadPic/${course.courseId}">上传图片</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <h4 class="text-center">第${page.pageNum}页|共${page.pages}页</h4>
            <div class="text-center">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/allCourse?page=1">第一页</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/allCourse?page=
<c:if test="${page.prePage == 0}">1</c:if>
<c:if test="${page.prePage != 0}">${page.prePage}</c:if>">上一页</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/allCourse?page=
<c:if test="${page.nextPage == 0}">${page.pages}</c:if>
<c:if test="${page.nextPage != 0}">${page.nextPage}</c:if>">下一页</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/course/allCourse?page=${page.pages}">最后页</a>
            </div>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>
