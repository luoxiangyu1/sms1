<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>添加课程</title>

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
                    <h2 class="text-center"  style="color: #337ab7">添加课程</h2>
                </div>
            </div>
            <div class="col-md-7">
                <div style="align-items: center">
                    <form action="${pageContext.request.contextPath}/course/addCourse" method="post">
                        <div class="form-group">
                            <label>所属学院：</label>
                            <%--                            <input type="text" name="collegeId" class="form-control" required>--%>
                            <select name="collegeId" class="combobox">
                                <c:forEach var="college" items="${list}">
                                    <option value="${college.collegeId}">${college.collegeName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>课程名称：</label>
                            <input type="text" name="courseName" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>学分：</label>
                            <input type="text" name="courseCredit" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>学时：</label>
                            <input type="text" name="coursePeriod" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>建议修读学期：</label>
<%--                            <input type="text" name="courseYear" class="form-control" required>--%>
                            <select name="courseYear" class="combobox       c1">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>课程介绍：</label>
                            <%--                            <input type="text" name="courseIntro" class="form-control"required>--%>
                            <textarea name="courseIntro"rows="10" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>课程类型：</label>
                            <%--                            <input type="text" name="courseType" class="form-control" required>--%>
                            <select name="courseType" class="combobox">
                                <c:forEach var="type" items="${list1}">
                                    <option value="${type.courseType}">${type.courseType}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">点击确定！
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary" >添加</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .form-group{
        display: flex;
    }
    .form-group>label {
        width: 125px;
    }
    .form-group>input {
        width: 350px;
    }
    .form-group>textarea {
        width: 350px;
    }
    .form-group>select {
        width: 350px;
    }
</style>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>
