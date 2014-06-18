
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

        <div class="col-md-10" id="groupHeadDiv">
            <div class="path-bar">
                <ol class="breadcrumb"  style="background-color: #eaf4fe;color:#0C8DF1;height: 45px;">
                    <li>我的群组</li>
                    <li>  <button type="button" class="btn btn-default btn-sm" id="createGroupBtn">创建群组</button></li>
                </ol>
            </div>
        </div><!--/span-->
        <div class="row">
            <div class="col-md-3"><div class="panel panel-info"><div class="panel-heading"><div class="panel-title"><a href="group-detail-new.jsp" class="groupNameLink" data="1">北京雾霾</a></div></div><div class="panel-body"><div class="row"><div class="col-md-5"><small>创建者：</small></div><div class="col-md-7 aligh-left"><small>工程中心</small></div></div><div class="row"><div class="col-md-5"><small>时间：</small></div><div class="col-md-7 aligh-left"><small>2014/4/15</small></div></div></div></div></div><div class="col-md-3"><div class="panel panel-info"><div class="panel-heading"><div class="panel-title"><a href="#" class="groupNameLink" data="2">杭州内涝</a></div></div><div class="panel-body"><div class="row"><div class="col-md-5"><small>创建者：</small></div><div class="col-md-7 aligh-left"><small>工程中心</small></div></div><div class="row"><div class="col-md-5"><small>时间：</small></div><div class="col-md-7 aligh-left"><small>2013/11/15</small></div></div></div></div></div><div class="col-md-3"><div class="panel panel-info"><div class="panel-heading"><div class="panel-title"><a href="#" class="groupNameLink" data="3">石家庄地震</a></div></div><div class="panel-body"><div class="row"><div class="col-md-5"><small>创建者：</small></div><div class="col-md-7 aligh-left"><small>工程中心</small></div></div><div class="row"><div class="col-md-5"><small>时间：</small></div><div class="col-md-7 aligh-left"><small>2013/11/15</small></div></div></div></div></div>
            <div class="col-md-3"><div class="panel panel-info"><div class="panel-heading"><div class="panel-title"><a href="group-detail-new.jsp" class="groupNameLink" data="1">日本地震</a></div></div><div class="panel-body"><div class="row"><div class="col-md-5"><small>创建者：</small></div><div class="col-md-7 aligh-left"><small>国土资源部</small></div></div><div class="row"><div class="col-md-5"><small>时间：</small></div><div class="col-md-7 aligh-left"><small>2014/3/12</small></div></div></div></div></div>
            <div class="col-md-3"><div class="panel panel-info"><div class="panel-heading"><div class="panel-title"><a href="group-detail-new.jsp" class="groupNameLink" data="1">云南干旱</a></div></div><div class="panel-body"><div class="row"><div class="col-md-5"><small>创建者：</small></div><div class="col-md-7 aligh-left"><small>农业部</small></div></div><div class="row"><div class="col-md-5"><small>时间：</small></div><div class="col-md-7 aligh-left"><small>2013/10/12</small></div></div></div></div></div>
            <div class="col-md-3"><div class="panel panel-info"><div class="panel-heading"><div class="panel-title"><a href="group-detail-new.jsp" class="groupNameLink" data="1">温州台风</a></div></div><div class="panel-body"><div class="row"><div class="col-md-5"><small>创建者：</small></div><div class="col-md-7 aligh-left"><small>气象部</small></div></div><div class="row"><div class="col-md-5"><small>时间：</small></div><div class="col-md-7 aligh-left"><small>2013/12/16</small></div></div></div></div></div>
        </div>
    </div><!--/row-->

</div><!--/.container-->

<div class="modal fade" id="createGroupModal" tabindex="-1" role="dialog" aria-labelledby="createGroupModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="createGroupModalLabel">创建群组</h4>
            </div>
            <div class="modal-body">
                <p class="text-center">创建共享群，单位间轻松共享数据</p>
                <form class="form-horizontal" role="form">
                    <!--
                    <div class="form-group has-error">
                    -->
                    <div class="form-group">
                        <label for="inputGroupName" class="col-sm-2 control-label">群组名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputGroupName" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textareaForDesc" class="col-sm-2 control-label">简介</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" rows="3" id="textareaForDesc" placeholder=""></textarea>
                        </div>
                    </div>
                </form>
                <div id="addGroupErrorAlertDiv" class="alert alert-danger well-sm hidden">
                   	群组名不能为空
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="createGroupCompeleteBtn">创建</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<form id="groupDeitalForm" action="/group/groupDetail.htm" method="post">
	<input name="groupId" type="hidden" value=""/>
</form>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="bootstrap/assets/js/jquery.js"></script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<script src="js/DateUtils.js"></script>
<script src="js/groups.js"></script>
</body>
</html>
