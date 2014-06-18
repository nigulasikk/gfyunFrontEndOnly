<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>

</style>
<div id="header">
    <div id="userinfo" class="float-right">
        <ul>
            <li id="create-order">
                <span class="icon01"></span>
                <span title="点击创建一个订单">创建订单</span>
            </li>
            <li class="program">
                <span class="icon02"></span>
                <span id="userCenter"  data-toggle="tooltip" data-placement="bottom"  data-trigger="manual">个人中心</span>

                <div class="programdiv" style="display: none;">
                    <p>
                        <a name="myOrder" title="点击查看我的订单">
                            <span class="icon08"></span>
                            <span>我的订单</span>
                            <span id="my-order">（<a href="#" title="总订单数">75</a>）</span>
                        </a>
                    </p>
                    <p>
                        <a name="myIntegral" title="点击查看我的消息">
                            <span class="icon012"></span>
                            <span>我的积分</span>
                            <span id="my-integral">（<a class="integral-num" title="未读消息">3</a>）</span>
                        </a>

                    </p>
                    <p>
                        <a name="myCloud" title="点击查看我的消息">
                            <span class="icon012"></span>
                            <span>我的云盘</span>
                            <span id="my-integral">（<a class="cloud-num" title="未读消息">2</a>）</span>
                        </a>
                    </p>
                    <p>
                        <a name="myMessage" title="点击查看我的消息">
                            <span class="icon012"></span>
                            <span>我的消息</span>
                            <span id="my-message">（<a href="" title="未读消息">70</a>）</span>
                        </a>
                    </p>
                </div>
            </li>
            <li id="data-search">
                <a class="white" href="#" title="搜索系统中满足需求的遥感数据">
                    <span class="icon03"></span>
                    <span>数据获取</span>
                </a>
            </li>
            <li id="data-publish">
                <a class="white" href="#" title="共享您拥有的遥感数据">
                    <span class="icon04"></span>
                    <span>数据发布</span>
                </a>
            </li>
            <li class="program">
                <span title="查看我的购物车" class="icon05"></span>
                <span id="shoppingCartInnerSpan" title="点击查看我的购物车">购物车（24）</span>
                <div class="programdiv" id="shoppingCart" style="display: none;">
                    <span id="itemCount">当前有24条数据</span>
                    <span id="totalPrice">合计0元</span>
                    <input id="settlementButton" type="button" value="去结算">
                </div>
            </li>
            <li class="program">
                <div>
                    <span class="icon06"></span>
                    <span>快捷方式</span>
                </div>
                <div class="programdiv" style="display: none;">
                    <p>
                        <a id="route" title="点击进入网格管理后台">
                            <span class="icon011"></span>
                            <span>网格管理</span>
                        </a>
                    </p>

                    <p>
                        <a href="#" id="vedio" title="视频会商">
                            <span class="icon02"></span>
                            <span>视频会商</span>
                        </a>
                    </p>
                    <p>
                        <a href="" id="questionnaire" title="为高分网格系统建设提出建议">
                            <span class="icon013"></span>
                            <span>意见反馈</span>
                        </a>
                    </p>
                    <p>
                        <a href="" id="help" title="查阅系统帮助">
                            <span class="icon014"></span>
                            <span>帮助</span>
                        </a>
                    </p>
                </div>
            </li>
        </ul>
        <a id="backhome" href="#">
            <img src="/images/button/backhome.png" title="返回系统首页" width="76" height="22">
        </a>
        <form id="gotoSettlementForm" method="post">
        </form>
    </div>
    <div class="float-left">
        <ul id="username">
            <li style="padding-left: 0px; margin-top: 4px; margin-bottom: 2px; ">
                <a href="#">
                    <img src="/images/logo/top_logo_cheos.png" title="返回系统首页" width="98" height="22">
                </a>
            </li>
            <li class="name">
                <span class="icon08"></span>
                <span>您好，<a class="white" href="#"><strong>cheos</strong></a></span>
            </li>
            <li class="login-out">
                <a class="white changeAdmin" href="#">
                    <span class="icon07"></span>
                    <span>注销</span>
                </a>
            </li>

        </ul>
    </div>
    <div id="department-background">
        <div id="search">
            <div id="search-bar">
                <form id="search-form" action="#" method="post">
                    <div class="department-logo">
                        <img border="0" src="/images/logo/button_001.png" alt="单位图标" title="单位图标">
                    </div>
                    <!-- 用户信息 -->
                    <div class="txthead">
                        <a>农科院农业资源与农业区划所</a>
                        <p>农科院农业资源与农业区划所,是以土壤肥料、农业资源利用和区域发展为主导的国家级公益性综合研究机构。</p>
                    </div>
                    <div class="clear"></div>
                    <!-- 选项卡 -->

                </form>
            </div>
        </div>
    </div>
</div>
<script src="/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/js/common/common.js"></script>