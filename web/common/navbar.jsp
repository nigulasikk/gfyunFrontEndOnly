<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    /* 图标 */
    .icon01, .icon02, .icon03, .icon04, .icon05, .icon06, .icon07, .icon08, .icon09, .icon10,
    .icon011, .icon012, .icon013, .icon014, .icon015, .icon016, .icon017, .icon018, .icon019, .icon020,
    .icon021, .icon022, .icon023, .icon024, .icon025, .icon026, .icon027, .icon028, .icon029, .icon030,
    .icon031, .icon032, .icon033, .icon034, .icon035, .icon036, .icon037, .icon038, .icon039, .icon040,
    .icon041, .icon042, .icon043, .icon044, .icon045, .icon046, .icon047, .icon048, .icon049, .icon050
    { background: url(../../images/icon/icons.png); width:16px; height:16px; border:0; display:block; vertical-align:middle; margin:4px; float:left; cursor:pointer; }
    .icon01 { background-position:0 0 ;  }
    .icon02 { background-position: -16px 0 ;  }
    .icon03 { background-position: -32px 0 ; }
    .icon04 { background-position: -48px 0 ; }
    .icon05 { background-position: -64px 0 ; }
    .icon06 { background-position: -80px 0 ; }
    .icon07 { background-position: -96px 0 ; }
    .icon08 { background-position: -112px 0 ; }

    .icon011 { background-position: 0px -16px ; }
    .icon012 { background-position: -16px -16px; }
    .icon013 { background-position: -32px -16px; }
    .icon014 { background-position: -48px -16px; }

    .icon021 { background-position: 0 -32px; }
    .icon022 { background-position: -16px -32px; }
    .icon023 { background-position: -32px -32px; }
    .icon024 { background-position: -48px -32px; }
    .icon025 { background-position: -64px -32px; }
    .icon026 { background-position: -80px -32px; }
    .icon027 { background-position: -96px -32px; }
    .icon028 { background-position: -112px -32px; }

    .icon031 { background-position: 0 -48px; }
    .icon032 { background-position: -16px -48px; }
    .icon033 { background-position: -32px -48px; }
    .icon034 { background-position: -48px -48px; }
    .icon035 { background-position: -64px -48px; }
    .icon036 { background-position: -80px -48px; }
    .icon037 { background-position: -96px -48px; }
    .icon038 { background-position: -112px -48px; }
    .icon039 { background-position: -128px -48px; }

    .icon041 { background-position: 0 -64px; }
    .icon042 { background-position: -16px -64px; }
    .icon043 { background-position: -32px -64px; }
    .icon044 { background-position: -48px -64px; }
    .icon045 { background-position: -64px -64px; }
    .icon046 { background-position: -80px -64px; }
    .icon047 { background-position: -96px -64px; }
    .icon048 { background-position: -112px -64px; }

    .icon031:hover { background-position: 0 -144px; }
    .icon032:hover { background-position: -16px -144px; }
    .icon033:hover { background-position: -32px -144px; }
    .icon034:hover { background-position: -48px -144px; }
    .icon035:hover { background-position: -64px -144px; }
    .icon036:hover { background-position: -80px -144px; }
    .icon037:hover { background-position: -96px -144px; }
    .icon038:hover { background-position: -112px -144px; }
    .icon039:hover { background-position: -128px -144px; }

    /* header
------------------------------------------------------------------------ */
    #header { /*padding: 4px 0 2px 0;*/ height: 131px; line-height: 30px; min-width: 1000px; position: relative; color: #FFF;font-size: 12px; min-width: 1050px;}
    #header .float-left { float: left; height: 24px; line-height: 24px;}
    #header .float-right { float: right; height: 24px; line-height: 24px; margin-right: 8px;}

    .float-left ul#username { display: inline-block;list-style: none; }
    .float-left ul#username li { padding-left: 15px; float: left; margin-right: 10px; margin-top: 3px; margin-bottom: 2px;  }
    .float-left ul li span, .float-right ul li span { display:inline; }

    .float-right a#backhome { margin: 1px 10px 0 10px; }
    .float-right a#backhome img { margin-top: 4px; }
    .float-right ul { overflow:hidden; zoom:1; position: relative; z-index:1; height: 24px; line-height: 24px; display: inline; }
    .float-right ul li { float:left; display:inline; padding: 0 5px 0 9px; cursor:pointer; margin-top: 3px; margin-bottom: 2px; border-left:2px transparent solid; /*border-right:1px transparent solid; position: relative; */}
    .float-right ul li.program-shop { position: relative; z-index: 1; padding-left: 5px; }
    .float-right ul li.program-shop input { cursor:pointer; }
    .float-right ul li.program { position: relative; z-index: 1; padding-left: 5px; }

    .float-right ul li.cover { background-color:#dffdff; -moz-border-radius-topleft:5px; -khtml-border-top-left-radius:5px; -webkit-border-top-left-radius:5px; -moz-border-radius-topright:5px; -khtml-border-top-right-radius:5px; -webkit-border-top-right-radius:5px; border-left:1px #0c5a88 solid; border-right:1px #0c5a88 solid; border-top:1px #0c5a88 solid; color:#036; _border:0; }

    .float-right .programdiv { background-color:#dffdff; padding:5px; position: absolute; left:-1px; top: 21px; cursor:pointer; border:1px #0c5a88 solid; border-top-style: none; -moz-border-radius-bottomleft:5px; -khtml-border-bottom-left-radius:5px; -webkit-border-bottom-left-radius:5px; -moz-border-radius-topright:5px; -khtml-border-top-right-radius:5px; -webkit-border-top-right-radius:5px; -moz-border-radius-bottomright:5px; -khtml-border-bottom-right-radius:5px; -webkit-border-bottom-right-radius:5px; min-width:140px; _border:0; line-height:20px; display:none;}
    .float-right .programdiv a, .float-right .programdiv a:hover, .float-right .programdiv a:visited { color:#036; }
    .float-right .programdiv p { clear:both; height: 24px; line-height: 24px; }
    .float-right #shoppingCart input { display: block; padding: 2px 5px; margin-right: 10px; float: right; }
    .float-right #shoppingCart span { padding-left: 18px; display: block; color:#036; }

    /* search
    ------------------------------------------------------------------------ */

    #search { width: 960px; margin: 0 auto; clear: both; height: 85px; padding-bottom: 13px; }
    #search .department-logo { margin: 11px 0 0 34px; display: inline-block; float: left; position: absolute; }
    #search .department-logo img { padding: 0 1px;}
    #search .search-content, .search-layout { padding-left: 158px; vertical-align: middle; }
    #search .search-content span a, .search-layout span a{ display: block; float: left; margin: 32px 30px 0 0; }
    #search-box{ padding-top: 23px; min-width: 800px; max-width: 950px; }
    #search .text-box { display: block; width: 483px; height: 34px; }
    #search .text-box #search-text { height: 34px; background: transparent; border: 0; float: left; font-size: 128%; font-style: normal; font-weight: normal; line-height: 34px\0; vertical-align: middle; width: 470px; padding: 0 4px; background: url(../../images/background/search_input02.png) no-repeat; margin: 0 5px 0 0; }
    #search .search-text-box { display: block; width: 483px; height: 34px; background: url(../../images/background/search_input02.png) no-repeat; }
    #search .search-text-box input { height: 34px; background: transparent; border: 0; float: left; font-size: 128%; font-style: normal; font-weight: normal; line-height: 34px\0; vertical-align: middle; width: 432px; padding: 0 4px; }
    #search .search-text-box span { height: 34px; display: inline-block; background: url(../../images/button/btn-search-xml.png) no-repeat center; width: 35px;  cursor: pointer;}
    .search-hot { display: block; margin-top:6px;}
    .search-hot a.hot-title:link, #search .search-hot a.hot-title:visited, #search .search-hot a.hot-title:hover, #search .search-hot a.hot-title:focus { color: #FFF; text-decoration: none; margin: 10px 5px 5px 0; cursor: default; }
    .search-hot a.hot:link, #search .search-hot a.hot:visited { color: #FFF; text-decoration: none; margin: 10px 20px 5px 0; }
    .search-hot a.hot:hover, #search .search-hot a.hot:focus { color: #F60; text-decoration: underline; }
    #search .va { vertical-align: top; }
    #search .button-box { height: 32px; padding-left: 16px; margin-top: 3px; }
    #search .button-box #search-button, #search .button-box #search-button2 { height: 32px; padding: 0 28px; border: none; cursor: pointer; background: url(../../images/button/btn_search01.png) no-repeat; width: 109px; }


    .searche-border { height: 34px; background: transparent; border: 0; float: left; font-size: 128%; font-style: normal; font-weight: normal; line-height: 34px\0; vertical-align: middle; width: 470px; padding: 0 4px; background: url(../../images/background/search_input02.png) no-repeat; margin: 0 5px 0 0; }
    .search-box {height: 32px; padding-left: 16px; vertical-align: top;}
    .search-button { height: 32px; padding: 0 28px; border: none; cursor: pointer; background: url(../../images/button/btn_search01.png) no-repeat; width: 109px; }

    .data-search { width:400px; z-index: 1; border: 1px solid #C3C3C2; background: #ffffff; padding: 10px; position: relative; top: -20px; left: 54px; }
    .data-search .close { float: right; cursor: pointer; }
    .data-search h3 { font-weight: bold; margin-bottom: 4px; }
    .data-switch { width: 260px; height: 30px; border-bottom:1px solid #dcdcdc; }
    .data-switch-button { background: url(../../images/button/btn-xml-bg.png); width: 80px; height: 29px; line-height:29px; text-align:center; display: block; margin-top: 2px; float: left; margin-right: 2px; cursor: pointer; }
    .data-switch-button:hover, .data-switch-cover { background-position: 0px -29px; }
    .data-search-txt { width: 260px; height: 30px; border:1px solid #dcdcdc; border-top: none;}
    .data-search-button { height: 34px; }

    /* topbar.css
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

    .txthead { height:60px; width:600px;line-height: 16px; padding-top: 30px; margin-left: 150px;}
    .txthead a, .txthead a:link, .txthead a:visited, .txthead a:hover { color:#FFFFFF;  font-size:14px;font-weight:bold;}
    .txthead p { margin-top:10px; color: #fff;}

    a.white {
        color: #FFF;
        text-decoration: none;
    }
    /*背景*/
    body{background-color:  #f4f5f5;
        /*background: white; *//* 为较旧的或者不支持的浏览器设置备用属性 */
        background: -moz-linear-gradient(top, #dedede, white 8%);
        background: -webkit-gradient(linear, 0 0, 0 8%, from(#dedede), to(white));
    }
    .container{margin-top:40px;min-height: 800px;}
    #header{ background:url(/images/background/bodyback.png) repeat-x #f4f4f4; }
    #department-background{height: 133px;background: url("/images/background/headback.png") no-repeat top center;}

    /*tootip*/
    .tooltip-inner{width:115px;}
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