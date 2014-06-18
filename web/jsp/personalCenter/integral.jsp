<%--
  Created by IntelliJ IDEA.
  User: qkk
  Date: 14-6-4
  Time: 下午4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--引入css，为了写代码时候自动提示类，写完之后 ，删除，  因为该css已经在basicHeaderContent中引入--%>
    <link href="/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <%@ include file="/common/basicHeaderContent.jsp" %>
    <link rel="stylesheet" href="/css/common/common.css">
    <link rel="stylesheet" href="/css/personalCenter/personalCenter.css">
</head>
<body>
<%@ include file="/common/navbar.jsp" %>
<div class="container">
    <div class="row">
        <%@ include file="/common/sidebar.jsp" %>
        <div class="col-md-10">
            <%--<div class="self-introduce row">--%>
                <%--<div class="col-sm-2">--%>
                    <%--<img src="/images/head.jpg" alt="头像" class="img-rounded">--%>
                    <%--<div class="progress progress-striped active" style="position: relative;margin-top: 10px;margin-bottom: 10px;">--%>
                        <%--<span class="lever-detail">460/1100</span>--%>
                        <%--<div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<p class="lever-name">初级用户</p>--%>

                <%--</div>--%>
                <%--<div class="col-sm-10">--%>
                    <%--<h3>个人主页</h3>--%>
                    <%--<div class="fields">--%>
                        <%--<span class="field-name"><span class="glyphicon glyphicon-tree-deciduous"></span>&nbsp;单位名称：</span>--%>
                        <%--<span >国防科工局重大专项工程中心</span>--%>
                    <%--</div>--%>
                    <%--<div class="fields">--%>
                        <%--<span class="field-name"><span class="glyphicon glyphicon-qrcode"></span>&nbsp;用户代码：</span>--%>
                        <%--<span >cheos</span>--%>
                    <%--</div>--%>



                    <%--<div class="fields">--%>
                        <%--<span class="field-name"><span class="glyphicon glyphicon-user"></span>&nbsp;单位联系人：</span>--%>
                        <%--<span >工程中心</span>--%>
                    <%--</div>--%>
                    <%--<div class="fields">--%>
                        <%--<span class="field-name"><span class="glyphicon glyphicon-phone"></span>&nbsp;联系电话：</span>--%>
                        <%--<span >13812345678</span>--%>
                    <%--</div>--%>
                    <%--<div class="fields">--%>
                        <%--<span class="field-name"><span class="glyphicon glyphicon-envelope"></span>&nbsp;E-mail：</span>--%>
                        <%--<span >cheos@gfg.com</span>--%>
                    <%--</div>--%>
                    <%--<div class="fields">--%>
                        <%--<span class="field-name"><span class="glyphicon glyphicon-star"></span>&nbsp;云盘积分：</span>--%>
                        <%--<span >88</span>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
                <h3 class="text-center" style="width: 700px;">近一周积分变化图</h3>
                <canvas id="canvas" height="450" width="700"></canvas>

        </div>
    </div>
    <hr>
    <section class="timeline">
        <h2 class="headline">时间轴</h2>
        <div class="row">
            <div class="split-line" style="width:180px;">
                <%--一年时间记录 开始--%>
                <div class="year-overlay">
                    <span class="ind-arr"></span>
                    <span class="year-label">2014年</span>
                    <%--一天--%>
                    <div class="one-day-overlay">
                        <span>6-17</span>
                        <div class="items">
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+5</span>

                                    <div class="timeline-title">
                                        登录奖励
                                    </div>
                                    <p>
                                        上午6：05，用户登录
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：95+5=100</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+10</span>

                                    <div class="timeline-title">
                                        订单转存
                                    </div>
                                    <p>
                                        上午9：41，订单文件转存到云盘。
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：100+10=110</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+2</span>

                                    <div class="timeline-title">
                                        区域订阅
                                    </div>
                                    <p>
                                        上午9：58，华东区域订阅
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：110+2=112</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+50</span>

                                    <div class="timeline-title">
                                        上传文件
                                    </div>
                                    <p>
                                        上午10：28，上传文件25个。
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：112+50=162</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+2</span>

                                    <div class="timeline-title">
                                         分享成功
                                    </div>
                                    <p>
                                        上午10：34，分享给农业部并且被接受。
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：162+2=164</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+2</span>

                                    <div class="timeline-title">
                                        分享内容被下载
                                    </div>
                                    <p>
                                        上午10：34，你分享在“北京雾霾”群组里的文件被下载7次。
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：164+14=178</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+100</span>

                                    <div class="timeline-title">
                                        上传算法
                                    </div>
                                    <p>
                                        上午11：01，上传“去云”算法。
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：178+100=278</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+10</span>

                                    <div class="timeline-title">
                                        算法被使用
                                    </div>
                                    <p>
                                        上午11：01，上传的“去云”算法被国土部使用
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：278+10=288</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-20</span>

                                    <div class="timeline-title">
                                        使用算法
                                    </div>
                                    <p>
                                        上午9：28，10个文件使用“去云”算法
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：288-20=268</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-5</span>

                                    <div class="timeline-title">
                                        云盘扩容
                                    </div>
                                    <p>
                                        上午9：28，使用积分20，换取20G云盘容量
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：268-20=248</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-20</span>

                                    <div class="timeline-title">
                                        下载文件
                                    </div>
                                    <p>
                                        上午9：28，下载10个文件
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：248-20=228</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-1</span>

                                    <div class="timeline-title">
                                        接受分享
                                    </div>
                                    <p>
                                        上午9：28，农业部分享的一个文件
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：228-1=227</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-1</span>

                                    <div class="timeline-title">
                                        群分享转存
                                    </div>
                                    <p>
                                        上午9：28，从“北京雾霾”群组转存一个文件
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：227-1=226</p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+1</span>

                                    <div class="timeline-title">
                                        群分享内容被转存
                                    </div>
                                    <p>
                                        上午9：28，从“北京雾霾”群组转存一个文件
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：226+1=227</p>
                                </div>
                            </div>


                        </div>
                    </div>
                    <%--一天 结束--%>
                    <%--一天--%>
                    <div class="one-day-overlay">
                        <span>6-7</span>

                        <div class="items">
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+5</span>

                                    <div class="timeline-title">
                                        登录奖励
                                    </div>
                                    <p>
                                        上午6：18，用户登录
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：105+5=110</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-10</span>

                                    <div class="timeline-title">
                                        下载扣除
                                    </div>
                                    <p>
                                        上午9：28，下载云盘文件
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：110-10=100</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content-right">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">-5</span>

                                    <div class="timeline-title">
                                        使用算法
                                    </div>
                                    <p>
                                        上午9：28，使用去云算法
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：100-5=95</p>
                                </div>
                            </div>


                        </div>
                    </div>
                    <%--一天 结束--%>
                    <%--一天--%>
                    <div class="one-day-overlay">
                        <span>6-6</span>

                        <div class="items">
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+5</span>

                                    <div class="timeline-title">
                                        登录奖励
                                    </div>
                                    <p>
                                        上午11：28，用户登录
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：80+5=85</p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="dot"></div>
                                <div class="timeline-item-content">
                                    <span class="glyphicon glyphicon-tasks"></span>
                                    <span class="score">+20</span>

                                    <div class="timeline-title">
                                        上传奖励
                                    </div>
                                    <p>
                                        上午12：28，通过ftp上传资源
                                        <%--GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz--%>
                                    </p>
                                    <p class="integral-calculate-result">云盘积分：85+20=105</p>

                                </div>
                            </div>
                        </div>
                    </div>
                    <%--一天 结束--%>

                </div>


            </div>
        </div>
    </section>

</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/bootstrap/assets/js/jquery.js"></script>
<script src="/bootstrap/dist/js/bootstrap.min.js"></script>
<%--表格插件--%>
<script src="/ui/Chart.js-master/Chart.js"></script>
<script src="/js/personalCenter/integral.js"></script>

</body>
</html>
