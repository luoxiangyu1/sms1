<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>添加学生</title>

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
                    <h2 class="text-center"  style="color: #337ab7">添加学生</h2>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/student/addStudent" method="post">
                    <div class="form-group">
                        <label>姓名：</label>
                        <input type="text" name="stuName" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>性别：</label>
                        <input type="text" name="stuGender" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>年龄：</label>
                        <input type="text" name="stuAge" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>学院编号：</label>
                        <input type="text" name="collegeId" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>专业编号：</label>
                        <input type="text" name="majorId" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>班级编号：</label>
                        <input type="text" name="classId" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>联系方式：</label>
                        <input type="text" name="stuPhone" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>邮箱：</label>
                        <input type="text" name="stuEmail" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>家庭住址：</label>
                        <input type="text" name="stuAddress" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>民族：</label>
                        <input type="text" name="stuNation" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>政治面貌：</label>
                        <input type="text" name="stuStatus" class="form-control" required>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">点击确定！
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">添加</button>
            </form>
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
</style>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>
