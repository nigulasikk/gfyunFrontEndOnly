<%--
  Created by IntelliJ IDEA.
  User: Yang.WangShu
  Date: 13-10-30
  Time: 下午3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ include file="common/basicHeaderContent.jsp" %>

    <link rel="stylesheet" href="/css/zTreeStyle/zTreeStyle.css" type="text/css">
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
                    <li><a href="">我的群组</a></li>

                    <li class="active">${group.name}</li>
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
                </tbody>
            </table>

        </div>
        <!--/span-->


    </div>
    <!--/row-->

</div>
<!--/.container-->

<!-- 群信息 -->
<div class="modal fade" id="groupInfoModel" tabindex="-1" role="dialog" aria-labelledby="groupInfoModelLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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
                                    <td class="col-md-10">${group.name }</td>
                                </tr>
                                <tr>
                                    <td>创建时间</td>
                                    <td><fmt:formatDate value="${group.createdate }"/> </td>
                                </tr>
                                <tr>
                                    <td>创建人</td>
                                    <td>${groupOwner }</td>
                                </tr>
                                <tr>
                                    <td>成员数</td>
                                    <td id="grouMemberCountTd">${group.membercount }</td>
                                </tr>
                                <tr>
                                    <td>群简介</td>
                                    <td>
                                        <p>${group.description }</p>

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


<div class="modal fade" id="addGroupMemberModel" tabindex="-1" role="dialog" aria-labelledby="addGroupMemberModelLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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
                                        <input type="checkbox" value="5" class="departmentForSelect" id="departmentForSelect5"name="国土资源部">国土资源部
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

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="addMemberCompeleteBtn">完成</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<div class="modal fade" id="exportToPanModel" tabindex="-1" role="dialog" aria-labelledby="exportToPanModelLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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

<div class="modal fade" id="importFromPanModel" tabindex="-1" role="dialog" aria-labelledby="importFromPanModelModelLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
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
<script src="js/groups.js"></script>

<input type="hidden" id="groupId" value="${group.id }"/>

<%--信息提示--%>
<script src="/ui/terebentina-sco.js-d4cbed7/js/sco.message.js"></script>
</body>
</html>
