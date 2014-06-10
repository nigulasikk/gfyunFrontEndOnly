<%--
  Created by IntelliJ IDEA.
  User: qkk
  Date: 14-4-28
  Time: 下午1:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en"><head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../bootstrap/assets/ico/favicon.png">

    <title>高分云共享</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/navbar-static-top.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="bootstrap/assets/js/html5shiv.js"></script>
    <script src="bootstrap/assets/js/respond.min.js"></script>
    <![endif]-->


    <link rel="stylesheet" href="/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>

<body style="">

<!-- Static navbar -->
<%@ include file="common/navbar.jsp" %>


<div class="container">

    <div class="row row-offcanvas row-offcanvas-right">


        <%@ include file="common/sidebar.jsp" %>

        <!--/span-->

        <div class="col-xs-12 col-sm-10">
            <div>
                <ol class="breadcrumb">
                    <li><a href="">我的群组</a></li>

                    <li class="active">北京雾霾</li>
                    <!--
                   <li class="active">Data</li>
                    -->
                </ol>
            </div>

            <div>
                <button type="button" class="btn  btn-primary btn-sm" id="exportToPanBtn">转到云盘</button>
                <button type="button" class="btn btn-default btn-sm" id="importFromPanBtn">从云盘导入</button>
                <button type="button" class="btn btn-default btn-sm" id="groupInfoBtn">群信息</button>
                <button type="button" class="btn btn-default btn-sm" id="addGroupMemberBtn">添加成员</button>
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
                    <td class="col-md-1">
                        <div class="col-md-1">
                            <button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">操作<span class="caret"></span></button>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a>转存到云盘</a>
                                </li>


                                <li><a>删除</a></li>
                            </ul>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>

        </div>
        <!--/span-->


    </div>
    <!--/row-->

</div>
<!--/.container-->

<!-- 群信息 -->
<div class="modal fade" id="groupInfoModel" tabindex="-1" role="dialog" aria-labelledby="groupInfoModelLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="groupInfoModelLabel">群信息</h4>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#recentShareDepartmentsDiv" data-toggle="tab">基本信息</a></li>
                    <li><a href="#allDepartments" data-toggle="tab">成员单位</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane in active fade" id="recentShareDepartmentsDiv">
                        <table class="table">
                            <tbody>
                            <tr>
                                <td class="col-md-2">群名称</td>
                                <td class="col-md-10">北京雾霾</td>
                            </tr>
                            <tr>
                                <td>创建时间</td>
                                <td>2013-11-15 </td>
                            </tr>
                            <tr>
                                <td>创建人</td>
                                <td>工程中心</td>
                            </tr>
                            <tr>
                                <td>成员数</td>
                                <td id="grouMemberCountTd">4</td>
                            </tr>
                            <tr>
                                <td>群简介</td>
                                <td>
                                    <p></p>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="allDepartments">
                        <ul class="list-inline" id="allDepartmentsUl">
                            <li>资源中心</li>
                            <li>资源中心</li>
                            <li>资源中心</li>
                            <li>资源中心</li>
                            <li>资源中心</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="addGroupMemberModel" tabindex="-1" role="dialog" aria-labelledby="addGroupMemberModelLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="addGroupMemberModelLabel">添加群组成员</h4>
            </div>
            <div class="modal-body">
                <label>可添加的单位：</label>
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
                                <input type="checkbox" value="4" class="departmentForSelect" id="departmentForSelect4" name="IRSA">对地中心
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

                <div class="">
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

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="addMemberCompeleteBtn">完成</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="exportToPanModel" tabindex="-1" role="dialog" aria-labelledby="exportToPanModelLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="exportToPanModelLabel">转到云盘</h4>
                <h6 class="modal-title">目录选择</h6>
            </div>
            <div class="modal-body">
                <ul id="exportToPanTree" class="ztree"></ul>
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

<div class="modal fade" id="importFromPanModel" tabindex="-1" role="dialog" aria-labelledby="importFromPanModelModelLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="importFromPanModelModelLabel">从云盘导入</h4>
                <h6 class="modal-title">目录选择</h6>
            </div>
            <div class="modal-body">
                <ul id="importFromPanTree" class="ztree"></ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="saveImportBtn">保存</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<input type="hidden" id="currentDirectoryInput" value="">
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/bootstrap/assets/js/jquery.js"></script>
<script src="/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/modal.js"></script>
<script src="/js/jquery.ztree.core-3.5.min.js"></script>
<script src="/js/group-detail.js"></script>

<input type="hidden" id="groupId" value="1">

<script src="js/groups.js"></script>

</body></html>
