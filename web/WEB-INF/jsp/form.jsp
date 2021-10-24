<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>首页</title>

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
                    <!--次导航栏-->
                    <div class="titlediv">
                        <ul class="titlediv_ul">
                            <li class="drop-down"><a href="">学校概况</a>
                                <ul class="drop-down-content">
                                    <li><a href="">学校简介</a></li>
                                    <li><a href="">学校领导</a></li>
                                    <li><a href="">学校章程</a></li>
                                    <li><a href="">校史略记</a></li>
                                    <li><a href="">校园风光</a></li>
                                    <li><a href="">校记校训</a></li>
                                </ul>
                            </li>
                            <li class="drop-down"><a href="">学科科研</a>
                                <ul class="drop-down-content">
                                    <li><a href="">重点学科</a></li>
                                    <li><a href="">本科专业</a></li>
                                    <li><a href="">博硕士点</a></li>
                                    <li><a href="">科研机构</a></li>
                                    <li><a href="">科技管理</a></li>
                                    <li><a href="">学术期刊</a></li>
                                </ul>
                            </li>
                            <li class="drop-down"><a href="">人才培养</a>
                                <ul class="drop-down-content">
                                    <li><a href="#">本科生教育</a></li>
                                    <li><a href="#">研究生教育</a></li>
                                    <li><a href="#">留学生教育</a></li>
                                </ul>
                            </li>
                            <li class="drop-down"><a href=""> 校园文化</a>
                                <ul class="drop-down-content">
                                    <li><a href="#">学生组织</a></li>
                                    <li><a href="#">学生社团</a></li>
                                    <li><a href="#">学生活动</a></li>
                                    <li><a href="#">校园媒体</a></li>
                                </ul>
                            </li>
                            <li class="drop-down"><a href=""> 公共服务</a>
                                <ul class="drop-down-content">
                                    <li><a href="#">湖大校历</a></li>
                                    <li><a href="#">后勤服务</a></li>
                                    <li><a href="#">价格服务</a></li>
                                    <li><a href="#">财务查询</a></li>
                                    <li><a href="#">图书资源</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!--banner-->
                    <div class="bannerBox">
                        <!--图片展示-->
                        <ul>
                            <li><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/banner/banner01.png?versionId=CAEQJBiBgMCes_PG4RciIDAzNWI1OGIyYmIwYjRlMzE4Zjc0YTA0YTk4MmY0MmVi" class="img current" alt=""></li>
                            <li><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/banner/%E6%A0%A1%E5%BA%86.jpg?versionId=CAEQJBiBgMDVsaTI5BciIGJhZjllZWNmYjlmOTQwYTk4MjIzMzhkMmYzODI1OTJl" class="img" alt=""></li>
                            <li><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/banner/banner03.png?versionId=CAEQJBiBgICMtvPG4RciIDAzOWNkOWE4MTE0YzQ5YjU4Y2NhNDI2YTdjY2Q0Njg4" class="img" alt=""></li>
                            <li><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/banner/banner04.png?versionId=CAEQJBiBgIDHs_PG4RciIDAwMzA4ZmNiNzRlYzRkODhiODE0MTg1YTBjZjBmZTg3" class="img" alt=""></li>
                            <li><img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/banner/banner05.png?versionId=CAEQJBiBgMDTsvPG4RciIDg3ZmNlZjg1ZDM3NDRhNGI5MTdlNTE0NmVjM2QzNjM1" class="img" alt=""></li>
                        </ul>
                        <!--圆点展示-->
                        <div class="dots">
                            <span class="square"></span>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <!--新闻栏目-->
                    <div class="information-box">
                        <div class="information-con">
                            <div class="information-head">
                                <h2 class="text-center">湖大要闻</h2>
                                <p class="text-center">Hot News</p>
                            </div>
                            <div class="information-main clearfix">
                                <div class="information-main-fl">
                                    <div class="bd">
                                        <ul>
                                            <li>
                                                <img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/新闻/new01.png?versionId=CAEQJBiBgICui_bG4RciIGI4YmRhOTI2ZjIxMTRkY2JiNjcwYzFjZDE1MTNkOWEz" alt="">
                                                <div class="information-main-back"></div>
                                                <p class="information-main-text">
                                                    我校软件工程专业接受工程认证专家组现场考查
                                                </p>
                                            </li>
                                            <li>
                                                <img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/新闻/new02.png?versionId=CAEQJBiBgMCqi_bG4RciIGZiMzI2YjU4OWVjNjRlNjVhZWMxM2YzMGExMmQ4MmQy" alt="">
                                                <div class="information-main-back"></div>
                                                <p class="information-main-text">
                                                    我校获批19项国家社科基金项目
                                                </p>
                                            </li>
                                            <li>
                                                <img src="https://sms-lxy.oss-cn-shanghai.aliyuncs.com/图片素材/新闻/new03.png?versionId=CAEQJBiBgIChi_bG4RciIDEzNWMzMTdkNDRkZDQyZTVhMTBjYmVhMTE0YzMzZDg4" alt="">
                                                <div class="information-main-back"></div>
                                                <p class="information-main-text">
                                                    学校与新洲区政府研究进阳逻校区规划工作
                                                </p>
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="javascript:void(0)" class="prev"></a>
                                    <a href="javascript:void(0)" class="next"></a>
                                </div>
                                <div class="information-main-fr">
                                    <div class="hd clearfix">
                                        <ul>
                                            <li>综合新闻</li>
                                            <li>学术·学者·学生</li>
                                            <li>通知公告</li>
                                        </ul>
                                    </div>
                                    <div class="bd">
                                        <ul>
                                            <li>
                                                <span>2021/09/28</span>
                                                <a href="#" title="01">湖北大学孝感校友会举行换届大会</a>
                                            </li>
                                            <li>
                                                <span>2021/09/28</span>
                                                <a href="#" title="02">我校教师李欣率领湖北队获全运会五人制足球赛冠军</a>
                                            </li>
                                            <li>
                                                <span>2021/09/28</span>
                                                <a href="#" title="03">湖北大学珠海校友会正式成立</a>
                                            </li>
                                            <li>
                                                <span>2021/09/27</span>
                                                <a href="#" title="04">2021年国际学生开学典礼举行</a>
                                            </li>
                                            <li>
                                                <span>2021/09/20</span>
                                                <a href="#" title="05">庆祝湖北大学办学90周年志愿者动员培训大会举行</a>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <span>2021/09/27</span>
                                                <a href="#" title="06">湖北省数学学会公共数学专业委员会2021年学术年会举行</a>
                                            </li>
                                            <li>
                                                <span>2021/09/27</span>
                                                <a href="#" title="07">新文科背景下高校外语学科建设论坛在湖北大学举行</a>
                                            </li>
                                            <li>
                                                <span>2021/09/27</span>
                                                <a href="#" title="08">湖北大学建校九十周年专场学术报告预告（9月27日-10月3日）</a>
                                            </li>
                                            <li>
                                                <span>2021/09/27</span>
                                                <a href="#" title="09">【全国高校思想政治工作网】刘怀元：推动高校思想政治工作守正创新当把握“五性”</a>
                                            </li>
                                            <li>
                                                <span>2021/09/23</span>
                                                <a href="#" title="10">“纪念黄邦和先生系列学术讲座”拉开帷幕</a>
                                            </li>
                                        </ul>
                                        <ul>
                                            <li>
                                                <span>2021/09/03</span>
                                                <a href="#" title="11">关于湖北大学2021年9月理论学习安排的通知</a>
                                            </li>
                                            <li>
                                                <span>2021/09/05</span>
                                                <a href="#" title="12">湖北大学建校90周年爱心捐赠倡议书</a>
                                            </li>
                                            <li>
                                                <span>2021/09/09</span>
                                                <a href="#" title="13">关于推荐2022届优秀本科毕业生免试攻读研究生的通知</a>
                                            </li>
                                            <li>
                                                <span>2021/09/09</span>
                                                <a href="#" title="14">学校正大门及周边区域改造工程公告</a>
                                            </li>
                                            <li>
                                                <span>2021/09/17</span>
                                                <a href="#" title="15">关于严明2021年中秋、国庆期间有关纪律要求的通知</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="information-more">
                                        <a href="#">查看更多</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">

                        jQuery(".information-main-fl").slide({
                            mainCell: ".bd ul",
                            effect: "leftLoop",
                            autoPlay: true,
                            trigger: "click",
                            mouseOverStop: false
                        });//轮播

                        jQuery(".information-main-fr").slide({
                            autoPlay: false,
                            trigger: "mouseover",
                            delayTime: 700,
                            pnLoop: false
                        })//tab切换

                    </script>

                    <!--所有课程-->
                    <div class="oddsBox">
                        <div class="title">
                            <h3 class="text-center">最新课程</h3>
                        </div>
                        <div class="title">
                            <p class="text-center"> <a href="${pageContext.request.contextPath}/courseList">全部课程</a></p>
                        </div>
                    </div>
                    <div style="display: flex;flex-wrap: wrap;width: 2001.200px">
                        <c:forEach var="course" items="${list}">
                            <ul class="thumbnails">
                                <li class="span4">
                                    <div class="thumbnail"  style="height: 580px;width: 400px;">
                                        <img src="${course.coursePic}" style="width: 250px;height: 300px">
                                        <div class="caption">
                                            <h3>${course.courseName}</h3>

                                            <p>${course.courseIntro}</p>

                                            <p><a href="${pageContext.request.contextPath}/moreDetail/${course.courseId}" class="btn btn-primary">浏览</a></p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </c:forEach>
                    </div>
                    <!--友情链接-->
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
</body>
</html>
