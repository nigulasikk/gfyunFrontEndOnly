<%--
  Created by IntelliJ IDEA.
  User: Yang.WangShu
  Date: 13-10-30
  Time: 下午3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="common/basicHeaderContent.jsp" %>
    <link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css"
          type="text/css">
    <link rel="stylesheet" href="/css/alg/alg.css">
    <link rel="stylesheet" href="/css/common/common.css">
    <%--icheck选择按钮样式--%>
    <link rel="stylesheet" href="/ui/iCheck-master/skins/square/blue.css">

    <%--用后删除--%>

</head>

<body>


<!-- Static navbar -->
<%@ include file="common/navbar.jsp" %>

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">
        <%@ include file="common/sidebar.jsp" %>

        <div class="col-md-10">


            <div class="row shop-nav">

                <div class="col-md-4">
                    <a href="/alg.jsp">
                        <div class="well bg-blue shop-nav-item shop-nav-item-active">
                            <span class="glyphicon glyphicon-shopping-cart"></span>

                            <h3>应用商店</h3>

                            <p><span class="h3">20</span>个在线应用</p>

                            <div class="application-black-layer"></div>

                        </div>
                    </a>

                </div>
                <div class="col-md-4">
                    <a href="/alg-my-storage.jsp">
                        <div class="well bg-red shop-nav-item">
                            <span class="glyphicon glyphicon-heart-empty"></span>

                            <h3>我的收藏</h3>

                            <p><span class="h3">6</span>个在线应用</p>

                            <div class="application-black-layer"></div>

                        </div>
                    </a>

                </div>
                <div class="col-md-4">
                    <a href="/alg-my-upload.jsp">
                        <div class="well bg-black shop-nav-item">
                            <span class="glyphicon glyphicon-upload"></span>

                            <h3>我的上传</h3>

                            <p><span class="h3">4</span>个在线应用</p>

                            <div class="application-black-layer"></div>

                        </div>
                    </a>


                </div>


            </div>
            <%--</div>--%>
            <%--<!--/row-->--%>
            <%--展现开始--%>
            <section class="application-center">

                <div class="row">
                    <div class="col-md-6">
                        <div class="application application-double-height application-bg-light-blue">

                            <span class="glyphicon glyphicon-eye-open application-big-font"></span>

                            <h3>空气环境</h3>

                            <p>以暗元法为主，反演获取气溶胶光学厚度，进而根据混合层厚度和相对湿度，利用相关模型，获取地面PM2.5浓度</p>

                            <div class="application-black-layer"> </div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>

                        </div>

                    </div>
                    <div class="col-md-3">
                        <div class="application application-single-height application-bg-purple">
                            <span class="glyphicon glyphicon-dashboard application-small-font"></span>
                            <h4>水稻分析</h4>

                            <p>对水稻的覆盖比分析</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>

                        <div class="application application-single-height application-bg-green">
                            <span class="glyphicon glyphicon-stats application-small-font"></span>
                            <h4>空间分析</h4>

                            <p>为数据进行空间分析</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">


                        <div class="application application-double-height application-bg-orange">
                            <span class="glyphicon glyphicon-tint application-small-font"></span>
                            <h4>水纹分析</h4>

                            <p>为数据进行水纹分析</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="application application-single-height application-bg-black">
                            <span class="glyphicon glyphicon-certificate application-small-font"></span>
                            <h4>变色</h4>

                            <p>为数据进行变色处理</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-3">

                        <div class="application application-single-height application-bg-grey">
                            <span class="glyphicon glyphicon-screenshot application-small-font"></span>
                            <h4>位置矫正</h4>

                            <p>为数据进行位置矫正</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="application application-single-height application-bg-red">
                            <span class="glyphicon glyphicon-tree-conifer application-small-font"></span>
                            <h4>植物覆盖统计</h4>

                            <p>为数据进行覆盖统计</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-3">

                        <div class="application application-single-height application-bg-deep-blue">
                            <span class="glyphicon glyphicon-repeat application-small-font"></span>
                            <h4>缩略图矫正</h4>

                            <p>为数据进行旋转处理</p>

                            <div class="application-black-layer"></div>
                            <div class="application-operation">
                                <div class="operate use-application-btn">使用</div>
                                <div class="operate store-application-btn">收藏</div>
                            </div>
                        </div>
                    </div>

                </div>
            </section>

            <%--展现结束--%>
            <ul class="pagination" style="float: right;">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </div>
</div>
<!--/.container-->

<div class="modal fade" id="use-application-modal" tabindex="-1"
     role="dialog" aria-labelledby="use-application-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="use-application-modal-label">使用向导</h4>
                <h5 class="modal-title">第一步：请选择处理数据</h5>
            </div>
            <div class="modal-body">
                <ul id="exportToPanTree" class="ztree"></ul>
            </div>
            <!-- /.modal-content -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="next">下一步
                </button>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<div class="modal fade" id="setParamModal" tabindex="-1" role="dialog"
     aria-labelledby="setParamModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="setParamModalLabel">使用向导</h4>
                <h5 class="modal-title">第二步:设置参数</h5>
            </div>
            <div class="modal-body">


                <form role="form">
                    <div class="form-group">
                        <label for="exampleInputEmail1">输入参数XML:</label>
                        <textarea class="form-control" rows="10"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="next2">下一步
                </button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="choose-savepath-modal" tabindex="-1"
     role="dialog" aria-labelledby="use-application-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="use-application-modal-label">使用向导</h4>
                <h5 class="modal-title">第三步：请选择处理结果保存目录</h5>
            </div>
            <div class="modal-body">
                <ul id="chooseSavePathTree" class="ztree"></ul>
            </div>
            <!-- /.modal-content -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="">新建目录</button>
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="finish">验证并处理
                </button>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>


<div class="modal fade" id="upload-alg-modal" tabindex="-1"
     role="dialog" aria-labelledby="use-application-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="use-application-modal-label">上传向导</h4>
                <h5 class="modal-title">第一步：上传算法包</h5>
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <label for="exampleInputFile">上传算法(zip)格式</label> <input
                            type="file" id="exampleInputFile">

                        <p class="help-block">如果有多个算法,请将算法合并为一个zip包.所有算法需放至根目录,否则无法通过验证</p>
                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="toParamXml">下一步
                </button>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>


<div class="modal fade" id="param-xml-modal" tabindex="-1"
     role="dialog" aria-labelledby="use-application-modal-label"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="use-application-modal-label">使用向导</h4>
                <h5 class="modal-title">第二步：请输入参数格式XML</h5>
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <label for="exampleInputEmail1">输入格式XML:</label>
                        <textarea class="form-control" rows="10"></textarea>
                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="toTest">下一步
                </button>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>

<div class="modal fade" id="test-modal" tabindex="-1" role="dialog"
     aria-labelledby="use-application-modal-label" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="use-application-modal-label">使用向导</h4>
                <h5 class="modal-title">第三步：测试</h5>
            </div>
            <div class="modal-body">
                <p>2014-04-04 12:12:23 准备测试数据中...</p>

                <p>2014-04-04 12:13:11 正在运行...</p>

                <p>2014-04-04 12:14:14 测试完成...</p>

                <p>2014-04-04 12:14:15 您的算法符合平台要求</p>
            </div>
            <!-- /.modal-content -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="">取消
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal" id="save-alg">保存</button>

            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>

<div class="modal fade" id="operate-data-modal" tabindex="-1"
     role="dialog" aria-labelledby="operate-data-modal-label"
     aria-hidden="true">
    <div class="modal-dialog" style="width: 1000px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="operate-data-modal-label">应用操作台</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 choose-data-section">
                        <h5>选择路径</h5>
                        <ul id="operate-choose-data" class="ztree"></ul>
                    </div>
                    <div class="col-md-4">
                        <h5>工作台</h5>
                        <div style="width: 300px;height: 300px;background-color: #000000;"></div>
                    </div>
                    <div class="col-md-2">
                        <h5>选择算法</h5>
                        <input type="checkbox">
                        <input type="checkbox" checked>
                        <input type="radio" name="iCheck">
                        <input type="radio" name="iCheck" checked>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"
                        id="excute-data">处理
                </button>
            </div>
        </div>
    </div>
    <!-- /.modal-dialog -->
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="bootstrap/assets/js/jquery.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bootstrap/js/modal.js"></script>
<script src="bootstrap/js/tab.js"></script>
<script src="js/jquery.ztree.core-3.5.min.js"></script>
<script type="text/javascript" src="/ui/zTree_v3/js/jquery.ztree.excheck-3.5.js"></script>

<script src="js/alg.js"></script>
<%--信息提示--%>
<script src="/ui/terebentina-sco.js-d4cbed7/js/sco.message.js"></script>
<%--icheck 选择按钮样式--%>
<script src="ui/iCheck-master/icheck.js"></script>
<script>
    $("#operate-data-modal").modal();
</script>
</body>
</html>
