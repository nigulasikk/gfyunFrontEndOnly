<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--sidebar侧边栏-->
<link rel="stylesheet" href="/css/common/sidebar.css">

<div class="col-xs-6 col-sm-2 sidebar-offcanvas" id="sidebar" role="navigation">
    <div class="sidebar-nav-border">
     <ul class="nav nav-pills nav-stacked">
        <li >
            <a href="/index.jsp">
            <span class="glyphicon glyphicon-hdd"></span>&nbsp;&nbsp;我的云盘
            </a>
        </li>
        <li><a href="/share.jsp">
           <span class="glyphicon glyphicon-share"></span>&nbsp;&nbsp;我的分享</a></li>
        <li><a href="/groups.jsp">
           <span class="glyphicon glyphicon-tower"></span>&nbsp;&nbsp;我的群组</a></li>
        <li><a href="/alg.jsp">
            <span class="glyphicon glyphicon-gbp"></span>&nbsp;&nbsp;算法库</a></li>
    </ul>
        <div class="hdd-volume">云盘容量：</div>
        <div class="progress" style="position: relative;margin-top: 5px;height: 20px;height: 7px;margin-bottom:5px;">
            <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 10%">
            </div>
        </div>
        <p>

          <small class="used-hdd">460</small>G/<small class="total-hdd">1100</small>G
            <a class="expand-hdd pull-right">扩容</a>
        </p>
    </div>
    <!--/.well -->
</div>



<!-- 扩容 -->
<div class="modal fade" id="expandHdd" tabindex="-1" role="dialog" aria-labelledby="expandHdd"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" >扩容向导</h4>
                <h5 class="modal-title">第一步：请选择扩容方式</h5>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5 text-center">
                        <a id="exchangeHddSpace" >
                            <span style="font-size: 50px;" class="glyphicon glyphicon-transfer"></span>
                        </a><br><br>
                        <small>积分换取容量</small>
                    </div>
                    <div class="col-md-5 text-center">
                        <a id="buyHddSpace" >
                            <span style="font-size: 50px;" class="glyphicon glyphicon-usd"></span>
                        </a><br><br>
                        <small>买容量</small>
                    </div>
                    <div class="col-md-1"></div>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 扩容   积分换取-->
<div class="modal fade" id="exchangeHddSpaceModal" tabindex="-1" role="dialog" aria-labelledby="exchangeHddSpaceModal"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" >积分换取容量</h4>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <span class="input-group-addon">积分:</span>
                    <input id="exchange-hdd-num" type="text" class="form-control" placeholder="请输入要交换的积分数量">
                </div>
                <br>
                <p class="text-right">
                    <small>
                        积分兑换说明：1个积分=1G云盘容量
                    </small>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="exchangeIntegralToHdd">兑换</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 扩容   人民币换取-->
<div class="modal fade" id="buyHddSpaceModal" tabindex="-1" role="dialog" aria-labelledby="buyHddSpaceModal"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" >购买容量</h4>
            </div>
            <div class="modal-body">
                <div class="input-group">
                    <span class="input-group-addon">积分:</span>
                    <input id="buy-hdd-num" type="text" class="form-control" placeholder="请输入要购买的容量">
                </div>
                <br>
                <p class="text-right">
                    <small>
                        积分兑换说明：1元=1G云盘容量
                    </small>
                </p>
                <h5>选择支付方式</h5>
                <input type="radio"><span style="padding-left: 10px;">支付宝</span>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio"><span style="padding-left: 10px;">银联支付</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="buy-hdd">购买</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<script src="/js/common/sidebar.js"></script>
