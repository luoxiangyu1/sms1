<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>

    <%--bootstrap美化页面--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <style>
        body {
            background: url("https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/图片/desert.png?versionId=CAEQJBiBgICbg4Pr4RciIGY0MzU0NTg0YmI5YjQ2ODg4ZDc4NmYwMzFjNjRjMWEy") no-repeat center fixed;
            background-size: cover;
        }
        input {
            margin-left: 15px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }
        .button {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 5px;
            width: 80px;
            height: 31px;
            font-size: 16px;
        }
        #all {
            transform: translateY(50%);
            background-color: white;
            height: 250px;
            border-radius: 5px;
        }
        .btn-primary {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237, .7);
            color: aliceblue;
        }
    </style>

</head>
<body>
<%--<a href="${pageContext.request.contextPath}/courseShow" class="btn btn-primary">返回</a>--%>
<div class="container">
    <div class="col-md-offset-3 col-sm-6" id="all">
        <h1 style="text-align: center;color: skyblue">登陆</h1>
        <form action="${pageContext.request.contextPath}/admin/adminLogin" method="post" class="form-horizontal">
            <div class="form-group">
                <label for="adminName" class="col-sm-2 control-label col-md-offset-2">用户名：</label>
                <div class="col-sm-6"><input type="text" name="adminName" id="adminName" required></div>
            </div>
            <div class="form-group">
                <label for="adminPwd" class="col-sm-2 control-label col-md-offset-2">密码：</label>
                <div class="col-sm-6"><input type="password" name="adminPwd" id="adminPwd" required></div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-4">
                    <input type="submit" class="button" value="登录">
                </div>
            </div>
        </form>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</body>
</html>
