<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <script src="static/js/script.js"></script>
    <script type="text/javascript" src="static/js/jquery.js"></script>
    <script type="text/javascript" src="static/js/jquery.SuperSlide.2.1.1.js"></script>

    <title>课程详情</title>

    <%--bootstrap美化页面--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body>

<div class="container-fluid">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="wrapperBox">
                <!--导航栏-->
                <div class="navBox">
                    <!--首导航栏-->
                    <div class="navbar">
                        <div class="logo" style="float: left"><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/图标/logo.png?versionId=CAEQJBiBgID86vDG4RciIDU3OTJiZDY5NmRjYTQ0NjM4NGRkMGY4YjVkZTQ3MjE1"></div>
                        <div class="title" style="text-align:center;vertical-align:middle;"><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/图标/word.png?versionId=CAEQJBiBgIDu6vDG4RciIDExOWU2YzMyNzU4ZTQzZWU4YjI5YjYxZWE2ODRiNTVl"></div>
                        <nav style="float:right">
                            <ul>
                                <li>
                                    <a href="">学生登录</a>
                                    <div class="btnbg-x"></div>
                                </li>
                                <li>
                                    <a href="">老师登录</a>
                                    <div class="btnbg-x"></div>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/goAdminLogin" target="_blank">管理员登录</a>
                                    <div class="btnbg-x"></div>
                                </li>
                                <li>
                                    <a href="">退出</a>
                                    <div class="btnbg-x"></div>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <h2 class="text-center">详细信息</h2>
                    <div class="jumbotron">
                        <img src="${course.coursePic}" class="img-responsive" style="width: 420px;height: 500px;float: right">
                        <h3>课程编号：</h3>
                        <p>${course.courseId}</p>
                        <h3>课程名称：</h3>
                        <p>${course.courseName}</p>
                        <h3>课程类型：</h3>
                        <p>${course.courseType}</p>
                        <h3>学院名称：</h3>
                        <p>${course.collegeName}</p>
                        <h3>学分：</h3>
                        <p>${course.courseCredit}</p>
                        <h3>学时：</h3>
                        <p>${course.coursePeriod}</p>
                        <h3>课程介绍：</h3>
                        <p>${course.courseIntro}</p>
                        <p><a href="${pageContext.request.contextPath}/courseList" class="btn btn-primary">返回</a></p>
                    </div>


                        <div style="height: 100%"></div>
                        <div class="listlinkBox" style="text-align: center">
                            <div class="linkBox">
                                <h4>教务概况</h4>
                                <p><a href="">主要领导</a></p>
                                <p><a href="">岗位职责</a></p>
                                <p><a href="">教学指导委员会</a></p>
                            </div>
                            <div class="linkBox">
                                <h4>教务管理</h4>
                                <p><a href="">排课选课</a></p>
                                <p><a href="">考务管理</a></p>
                                <p><a href="">成绩管理</a></p>
                                <p><a href="">学籍管理</a></p>
                            </div>
                            <div class="linkBox">
                                <h4>质量监控</h4>
                                <p><a href="">教学计划</a></p>
                                <p><a href="">教学检查</a></p>
                                <p><a href="">评估结果</a></p>
                            </div>
                            <div class="linkBox">
                                <h4>教学研究</h4>
                                <p><a href="">培养方案</a></p>
                                <p><a href="">专业建设</a></p>
                                <p><a href="">课程建设</a></p>
                                <p><a href="">教材建设</a></p>
                            </div>
                            <div class="linkBox">
                                <h4>实践教学</h4>
                                <p><a href="">实习实训</a></p>
                                <p><a href="">学科竞赛</a></p>
                                <p><a href="">毕业论文</a></p>
                                <p><a href="">创新创业</a></p>
                            </div>
                            <div class="linkBox">
                                <h4>教学资源</h4>
                                <p><a href="">教室管理</a></p>
                                <p><a href="">实验室管理</a></p>
                                <p><a href="">体育场管理</a></p>
                            </div>
                        </div>
                        <!--版权-->
                        <div class="copyBox clear">
                            <p>伊河新村开发组&nbsp&nbsp 组长：李鑫阳&nbsp&nbsp组员：罗翔宇&nbsp&nbsp王茜&nbsp&nbsp干欣雨&nbsp&nbsp刘佳仪&nbsp&nbsp高思敏</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->--%>
        <%--<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>--%>
        <%--<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->--%>
        <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>--%>

<%--    <style>--%>
<%--        .img-responsive{--%>
<%--            position: absolute;--%>
<%--            left: 900px;--%>
<%--            top: 100px;--%>
<%--        }--%>
<%--        .jumbotron{--%>
<%--            position: relative;--%>
<%--        }--%>
<%--    </style>--%>

</body>
</html>
