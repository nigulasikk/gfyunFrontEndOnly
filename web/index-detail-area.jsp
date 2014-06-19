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
</head>

<body>

<!-- Static navbar -->
<%@ include file="common/navbar.jsp" %>

<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">

        <%@ include file="common/sidebar.jsp" %>
        <!--/span-->

        <div class="col-md-10">
            <div>
                <ol class="breadcrumb">
                    <li><a href="">我的云盘</a></li>
                    <!--
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                     -->
                    <li class="notcrumb">（已全部加载，共<label id="fileAmountLabel">-</label>个）</li>
                </ol>
            </div>

            <div>
                <div class="btn-group">
                    <button type="button" class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown">
             			离线上传<span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                    	<!-- 
                        <li><a href="#ftpReceiveModel" data-toggle="modal">远程FTP文件接收</a></li>
                         -->
                        <li><a href="#ftpSyncModel" data-toggle="modal">FTP文件或目录上传</a></li>
                    </ul>
                </div>
                <!-- 
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">
                       	上传 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#ftpReceiveModel" data-toggle="modal">单文件上传</a></li>
                        <li><a href="#ftpSyncModel" data-toggle="modal">节点机目录同步</a></li>
                    </ul>
                </div>
                 -->
                <button type="button" class="btn btn-default btn-sm" id="newDirectory">新建文件夹</button>
                <button type="button" class="btn btn-default btn-sm" id="shareFile">分享</button>
                <button type="button" class="btn btn-default btn-sm" id="goBackBtn">返回上一级</button>
                <button type="button" class="btn btn-default btn-sm" id="cloudBtn">云算法</button>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th class="">
                        <div class="checkbox-inline">
                            <input type="checkbox" id="checkAll">
                        </div>
                    </th>
                    <th class="col-md-11">数据简介</th>
                    <th class="col-md-1">操作</th>
                </tr>
                </thead>
                <tbody id="fileListTbody">

        <tr>
            <td >
                <input type="checkbox" name="fileCheckBox">
            </td>
            <td class="col-md-11">
                <div class="row">
                    <div class="col-md-2">
                        <div class="image-box">
                            <img src="/images/winrar.png" width="80" height="70">
                        </div>

                    </div>
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-md-12">
                                <small>文件名称:GF1_WFV1_W57.8_S4.0_20130102_L1A0000009712.tar.gz</small>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <small>文件来源：来自区域订阅</small>
                            </div>
                            <div class="col-md-8">
                                <small>区域订阅名称：华东区域订阅</small>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4"><small>卫星名称:GF1</small></div>
                            <div class="col-md-4"><small> 传感器:WFV1</small></div>
                            <div class="col-md-4"><small>数据级别：LEVEL1A</small></div>
                        </div>
                        <div class="row">
                            <div class="col-md-4"><small>产品编号：1044</small></div>
                            <div class="col-md-4"><small>采集时间：2014-04-23</small></div>
                            <div class="col-md-4"><small>经纬度：[57.2,6.0]</small></div>

                        </div>
                    </div>

                </div>

            </td>
            <td class="col-md-1">
                <div class="col-md-1">
                    <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">操作<span class="caret"></span></button>
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a class="downloadOne">下载</a>
                        </li>
                        <li>
                            <a class="share-one-file">分享</a>
                        </li>
                        <li><a>移动</a></li>
                        <li><a>删除</a></li>
                    </ul>
                </div>
            </td>
        </tr>
                </tbody>
            </table>
            <div align="right">
                  <ul class="pagination">
				</ul>
			</div>
        </div>
        <!--/span-->


    </div>
    <!--/row-->

</div>
<!--/.container-->


<div class="modal fade" id="ftpSyncModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">FTP文件或目录上传</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="FtpSyncForm">
                    <div class="form-group">
                        <label for="inputFtpAddr" class="col-sm-2 control-label">FTP地址</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ftp" id="inputFtpAddr"
                                   placeholder="ftp://ftpserver/folder_path/folder_name" value="ftp://localhost/gfdata/gf1/GF1_PMS1_E85.6_N32.5_20130526_L1A0000015097.zip">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputFtpUsr" class="col-sm-2 control-label">用户名</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputFtpUsr" name="username" placeholder="username" value="test">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputFtpPwd" class="col-sm-2 control-label" >密码</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="password" id="inputFtpPwd" placeholder="password">
                        </div>
                    </div>
                    
                    <input type="hidden" name="parent" id="parentInput"> 
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="cancelSyncFtpBtn">取消</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="syncBtn">立即同步</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 新建文件夹 -->
<div class="modal fade" id="newFolderModel" tabindex="-1" role="dialog" aria-labelledby="newFolderModelLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">新建文件夹</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                	<div id="addFolderErrorAlertDiv" class="alert alert-danger well-sm hidden">
			                  	  文件夹名不能为空
			        </div>
                    <div class="form-group">
                        <label for="inputCreateFolder" class="col-sm-2 control-label">文件夹名</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputCreateFolder" name="newFolderName" placeholder="新文件夹">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" id="createFolderCompeleteBtn" class="btn btn-primary">完成</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<div class="modal fade" id="downloadProgressModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">同步远程FTP文件夹</h4>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>任务名</th>
                        <th>进度</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>xxxxxx.zip</td>
                        <td>10%</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>xxxxxx.zip</td>
                        <td>10%</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>xxxxxx.zip</td>
                        <td>10%</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="">关闭</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="yunReceiveModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">云文件接收</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputFtpAddr" class="col-sm-2 control-label">云地址</label>

                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputFtpAddr"
                                   placeholder="http://pan.cheos.cn/share/ziyuan/gf1/test.zip">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputFtpUsr" class="col-sm-2 control-label">密钥</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputFtpPwd" placeholder="password">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="">保存</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="shareFileModel" tabindex="-1" role="dialog" aria-labelledby="shareModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="shareModalLabel">分享向导</h4>
                <h5 class="modal-title">第一步：请选择分享类型</h5>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-5 text-center">
                        <a href="#" id="shareByDepartmentLink"><img src="images/department.png" class="img-responsive"></a><small>按单位</small>
                    </div>
                    <div class="col-md-5 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/group.png" class="img-responsive"></a><small>按群组</small>
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
<div class="modal fade" id="cloudModel" tabindex="-1" role="dialog" aria-labelledby="cloudModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="shareModalLabel">云算法</h4>
                <h5 class="modal-title">选择云算法</h5>
            </div>
            <div class="modal-body">

                <div class="row">
                    <p></p>
                </div>
                <div class="row">
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByDepartmentLink"><img src="images/j_l1.png" class="img-responsive"></a><small><input type="checkbox">变色（资源中心）</small>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/a.png" class="img-responsive"></a><small><input type="checkbox">去云（资源中心）</small>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/b.png" class="img-responsive"></a><small><input type="checkbox">水稻分析（农业部）</small>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByDepartmentLink"><img src="images/c.png" class="img-responsive"></a><small><input type="checkbox">变色（资源中心）</small>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/d.png" class="img-responsive"></a><small><input type="checkbox">去云（资源中心）</small>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/e.png" class="img-responsive"></a><small><input type="checkbox">水稻分析（农业部）</small>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByDepartmentLink"><img src="images/f.png" class="img-responsive"></a><small><input type="checkbox">变色（资源中心）</small>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/g.png" class="img-responsive"></a><small><input type="checkbox">去云（资源中心）</small>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="#" id="shareByGroupLink"><img src="images/a.png" class="img-responsive"></a><small><input type="checkbox">水稻分析（农业部）</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <a href="alg.jsp">没有你想要的应用?来应用商店看看</a>
                <button type="button" class="btn btn-default" data-dismiss="modal" id="">开始处理</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<div class="modal fade" id="chooseDepartmentModel" tabindex="-1" role="dialog" aria-labelledby="chooseDepartmentModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="chooseDepartmentModalLabel">分享向导</h4>
                <h5 class="modal-title">第二步：请选择分享单位</h5>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#allDepartments" data-toggle="tab">所有单位</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane in active fade" id="allDepartments">
                        <ul class="list-inline">
                       		<li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="3" class="departmentForSelect" id="departmentForSelect3" name="资源卫星中心">资源卫星中心
                                    </label>
                                </div>
                            </li>
                            
                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="4" class="departmentForSelect" id="departmentForSelect4" name="对地中心">对地中心
                                    </label>
                                </div>
                            </li>

                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="5" class="departmentForSelect" id="departmentForSelect5" name="国土资源部">国土资源部
                                    </label>
                                </div>

                            </li>

                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="6" class="departmentForSelect" id="departmentForSelect6" name="国家环保部">国家环保部
                                    </label>
                                </div>

                            </li>

                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="7" class="departmentForSelect" id="departmentForSelect7" name="国家农业部">国家农业部
                                    </label>
                                </div>

                            </li>
                        </ul>
                    </div>

                    <div class="" >
                        <label>已选择的单位：</label>
                        <ul class="list-inline" id="selectedDepartmentsUl">
                        	<!-- 
                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" class="departmentSelected" checked>资源中心
                                    </label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" class="departmentSelected" checked>资源中心
                                    </label>
                                </div>
                            </li>
                             -->
                        </ul>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="shareWithSelectedDepartmentsBtn">分享</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--选择部门modal-->
<div class="modal fade" id="chooseGroupModel" tabindex="-1" role="dialog" aria-labelledby="chooseGroupModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="chooseGroupModalLabel">分享向导</h4>
                <h5 class="modal-title">第二步：请选择分享群组</h5>
            </div>
            <div class="modal-body">
                    <ul class="list-inline">
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">  资源中心
                                </label>
                            </div>

                        </li>

                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>

                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>

                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>

                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                        <li>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox"> 资源中心
                                </label>
                            </div>

                        </li>
                    </ul>

                    <div class="" >
                        <label>已选择的群组：</label>
                        <ul class="list-inline">
                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" checked>资源中心
                                    </label>
                                </div>
                            </li>
                            <li>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" checked>资源中心
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="">分享</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<input type="hidden" id="currentDirectoryInput" value="">
<input type="hidden" id="lastDirectoryInput" value="">
<input type="hidden" id="shareFiles" value="">
<form id="downloadForm" action="/mydata/download.htm" method="POST" target="_blank">
	<input type="hidden" name="fileId" id="downloadFileIdInput">
</form>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="bootstrap/assets/js/jquery.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="bootstrap/js/modal.js"></script>
<script src="bootstrap/js/tab.js"></script>
<script src="/js/index.js"></script>

<%--信息提示--%>
<script src="/ui/terebentina-sco.js-d4cbed7/js/sco.message.js"></script>
</body>
</html>
