<%--
  Created by IntelliJ IDEA.
  User: Yang.WangShu
  Date: 13-11-5
  Time: 上午11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="common/basicHeaderContent.jsp" %>

</head>

<body>

<!-- Static navbar -->
<%@ include file="common/navbar.jsp" %>

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

        <%@ include file="/common/sidebar.jsp" %>

        <div class="col-xs-12 col-sm-10">
            <div class="path-bar">
                <ol class="breadcrumb"  style="background-color: #eaf4fe;height: 35px;color:#0C8DF1;">
                    <li>我的分享</li>

                    <!--
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                     -->
                    <li class="notcrumb">（已全部加载，共<label id="fileAmountLabel">-</label>个）</li>
                </ol>
            </div>
            <ul class="nav nav-tabs" id="shareTab">
            	<li class="active"><a href="#shareToMe" data-toggle="tab">分享给我的</a></li>
                <li ><a href="#myShared" data-toggle="tab">我分享的</a></li>

            </ul>
            <div class="tab-content">
				<div class="tab-pane in  fade" id="myShared">
                   <table class="table table-striped table-hover">
		                <thead>
		                    <tr>
		                        <th>
		                            <div class="checkbox-inline">
		                                <input type="checkbox">
		                            </div>
		                        </th>
		                        <th class="col-md-8">分享文件</th>
		                        <th class="col-md-2">分享日期</th>
		                        <th class="col-md-1">下载</th>
		                        <th class="col-md-1">操作</th>
		                    </tr>
		                </thead>
	                	<tbody id="fileListTbody">
                        <tr>
                            <td >
                                <input type="checkbox" name="fileCheckBox">
                            </td>
                            <td class="col-md-8">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="image-box">
                                            <img src="/images/winrar.png" width="80" height="70">
                                        </div>

                                    </div>
                                    <div class="col-md-10">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <small>文件名称:GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz</small>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <small>文件来源：ftp上传</small>
                                            </div>
                                            <div class="col-md-8">
                                                <small>上传单位：资源卫星中心</small>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><small>卫星名称:GF1</small></div>
                                            <div class="col-md-4"><small> 传感器:WFV1</small></div>
                                            <div class="col-md-4"><small>数据级别：LEVEL1A</small></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><small>产品编号：1054</small></div>
                                            <div class="col-md-4"><small>采集时间：2014-04-21</small></div>
                                            <div class="col-md-4"><small>经纬度：[59.8,3.0]</small></div>

                                        </div>
                                    </div>

                                </div>

                            </td>
                            <td class="col-md-2">2014-04-25</td>
                            <td class="col-md-1">1</td>
                            <td class="col-md-1">
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">操作<span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a>在地图上显示</a>
                                        </li>
                                        <li>
                                            <a class="cancel-sheare-one">取消分享</a>

                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td >
                                <input type="checkbox" name="fileCheckBox">
                            </td>
                            <td class="col-md-8">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="image-box">
                                            <img src="/images/winrar.png" width="80" height="70">
                                        </div>

                                    </div>
                                    <div class="col-md-10">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <small>文件名称:GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz</small>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <small>文件来源：ftp上传</small>
                                            </div>
                                            <div class="col-md-8">
                                                <small>上传单位：农业部</small>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><small>卫星名称:GF1</small></div>
                                            <div class="col-md-4"><small> 传感器:WFV1</small></div>
                                            <div class="col-md-4"><small>数据级别：LEVEL1A</small></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><small>产品编号：1054</small></div>
                                            <div class="col-md-4"><small>采集时间：2014-04-25</small></div>
                                            <div class="col-md-4"><small>经纬度：[57.8,4.0]</small></div>

                                        </div>
                                    </div>

                                </div>

                            </td>
                            <td class="col-md-2">2014-04-25</td>
                            <td class="col-md-1">9</td>
                            <td class="col-md-1">
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">操作<span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a>在地图上显示</a>
                                        </li>
                                        <li>
                                            <a class="cancel-sheare-one">取消分享</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
	                	</tbody>
            		</table>
				</div>
				
				<div class="tab-pane in fade active" id="shareToMe">
                   <table class="table table-striped table-hover">
		                <thead>
		                    <tr>
		                        <th>
		                            <div class="checkbox-inline">
		                                <input type="checkbox">
		                            </div>
		                        </th>
		                        <th class="col-md-7">分享文件</th>
		                        <th class="col-md-3">分享日期</th>
		                        <th class="col-md-1">下载</th>
		                        <th class="col-md-1">操作</th>
		                    </tr>

		                </thead>
	                	<tbody id="shareToMeListTbody">

                        <tr>
                            <td >
                                <input type="checkbox" name="fileCheckBox">
                            </td>
                            <td class="col-md-8">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="image-box">
                                            <img src="/images/winrar.png" width="80" height="70">
                                        </div>

                                    </div>
                                    <div class="col-md-10">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <small>文件名称:GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz</small>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <small>文件来源：ftp上传</small>
                                            </div>
                                            <div class="col-md-8">
                                                <small>上传单位：农业部</small>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><small>卫星名称:GF1</small></div>
                                            <div class="col-md-4"><small> 传感器:WFV1</small></div>
                                            <div class="col-md-4"><small>数据级别：LEVEL1A</small></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4"><small>产品编号：1054</small></div>
                                            <div class="col-md-4"><small>采集时间：2014-04-25</small></div>
                                            <div class="col-md-4"><small>经纬度：[57.8,4.0]</small></div>

                                        </div>
                                    </div>

                                </div>

                            </td>
                            <td class="col-md-2">2014-04-25</td>
                            <td class="col-md-1">0</td>
                            <td class="col-md-1">
                                <div class="col-md-1">
                                    <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">操作<span class="caret"></span></button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a class="share-accept">接受</a>
                                        </li>
                                        <li>
                                            <a>忽略</a>
                                        </li>

                                    </ul>
                                </div>
                            </td>
                        </tr>
	                	</tbody>
            		</table>
				</div>
            </div>
        </div><!--/span-->

    </div><!--/row-->

</div><!--/.container-->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="bootstrap/assets/js/jquery.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bootstrap/js/tab.js"></script>
<script src="js/DateUtils.js"></script>
<script src="js/share.js"></script>

</body>
</html>
