<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .search-div{padding:30px 0 0 10px;-webkit-border-radius:4px;width: 300px;height: 65px;display: none;position: absolute;top: 15px;left:-190px;background-color: #0C8DF1;z-index: 3;}
</style>
<div class="bs-blue-nav">
    <div class="container">
            <a href="/index.jsp" style="background:url('/images/gaofenyun.png')0 0 no-repeat;float: left;width: 245px;height: 80px;"></a>
            <div id="top-bar">
                <ul class="nav-list">


                    <li class="nav-item">
                        <span class="glyphicon glyphicon-user"></span>

                        <div class="dropdown" style="display: inline;">
                            <a data-toggle="dropdown" href="#">
                                资源卫星中心<span class="caret" style="border-top: 4px solid #FFFFFF;"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="/jsp/personalCenter/personalCenter.jsp"><span class="glyphicon glyphicon-home"></span>个人主页</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="/jsp/personalCenter/integral.jsp"><span class="glyphicon glyphicon-star"></span>我的积分</a>
                                </li>

                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span
                                        class="glyphicon glyphicon-off"></span>退出云盘</a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="dropdown">
                            <a data-toggle="dropdown" href="#">
                                更多<span class="caret" style="border-top: 4px solid #FFFFFF;"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">
                                    <span
                                            class="glyphicon glyphicon-wrench"></span>意见反馈</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span
                                        class="glyphicon glyphicon-question-sign"></span>帮助中心</a>
                                </li>

                                <%--<li role="presentation" class="divider"></li>--%>
                                <%--<li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span--%>
                                        <%--class="glyphicon glyphicon-off"></span>退出</a></li>--%>
                            </ul>
                        </div>
                    </li>
                    <%--<li><input type="text" placeholder="搜索资源" class="xtag" onfocus="this.isfocus = true;"></li>--%>
                    <li class="nav-item">
                            <span class="glyphicon glyphicon-search nav-search">
                                <div class="search-div">
                                    <input type="text" value="" style="width: 230px;border:0 none;">
                                     <span class="glyphicon glyphicon-search"></span>
                                </div>
                            </span>
                    </li>

                </ul>


            </div>

    </div>

</div>
<script src="/bootstrap/assets/js/jquery.js"></script>
<script>
    $(".nav-search").hover(function () {
        $(".search-div").css("display","block");
    }, function () {
        $(".search-div").css("display","none");
    });
</script>