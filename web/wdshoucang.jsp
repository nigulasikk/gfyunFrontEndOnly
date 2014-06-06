<%--
  Created by IntelliJ IDEA.
  User: Yang.WangShu
  Date: 13-10-30
  Time: 下午3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="common/basicHeaderContent.jsp"%>
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css"
	type="text/css">
    <style>
        .row{margin-bottom: 20px;}
    </style>
</head>

<body>

	<!-- Static navbar -->
	<%@ include file="common/navbar.jsp"%>

	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">

			<div class="col-xs-6 col-sm-2 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<div class="well sidebar-nav">
					<ul class="nav nav-pills nav-stacked">
						<li>应用</li>
						<li><a href="alg.jsp">热门</a></li>
						<li><a href="alg.jsp">资源中心</a></li>
						<li><a href="alg.jsp">农业部</a></li>
						<li><a href="alg.jsp">应用中心</a></li>
						<li><a href="alg.jsp">国土部</a></li>
						<li>个人</li>
						<li><a href="wdshangchuan.jsp">我的上传</a></li>
						<li class="active"><a href="wdshoucang.jsp">我的收藏</a></li>
					</ul>
				</div>
				<!--/.well -->
			</div>
			<!--/span-->

			<div class="col-xs-12 col-sm-10">

				<div class="row">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x200" alt="300x200"
								src="images/a.png"
								style="width: 300px; height: 200px;">
							<div class="caption">
								<h3>去云--资源中心</h3>
								<p>可以帮您批量过滤云量过多的数据</p>
								<p>
									<a href="#" class="btn btn-primary use-application-btn" role="button">使用</a> <a
										href="#" class="btn btn-default" role="button">移除</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x200" alt="300x200"
								src="images/c.png"
								style="width: 300px; height: 200px;">
							<div class="caption">
								<h3>去云--资源中心</h3>
								<p>可以帮您批量过滤云量过多的数据</p>
								<p>
									<a href="#" class="btn btn-primary use-application-btn" role="button">使用</a> <a
										href="#" class="btn btn-default" role="button">移除</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x200" alt="300x200"
								src="images/b.png"
								style="width: 300px; height: 200px;">
							<div class="caption">
								<h3>去云--资源中心</h3>
								<p>可以帮您批量过滤云量过多的数据</p>
								<p>
									<a href="#" class="btn btn-primary use-application-btn" role="button">使用</a> <a
										href="#" class="btn btn-default" role="button">移除</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/span-->


		</div>
		<!--/row-->

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
						id="next">下一步</button>
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
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="next2">下一步</button>
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
						id="finish">验证并处理</button>
				</div>
			</div>
		</div>
		<!-- /.modal-dialog -->
	</div>
	
	
	
	<input type="hidden" id="currentDirectoryInput" value="">
	<input type="hidden" id="lastDirectoryInput" value="">
	<input type="hidden" id="shareFiles" value="">
	<form id="downloadForm" action="/mydata/download.htm" method="POST"
		target="_blank">
		<input type="hidden" name="fileId" id="downloadFileIdInput">
	</form>
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="bootstrap/assets/js/jquery.js"></script>
	<script src="bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="bootstrap/js/modal.js"></script>
	<script src="bootstrap/js/tab.js"></script>
	<script src="js/jquery.ztree.core-3.5.min.js"></script>
	<script src="js/alg.js"></script>
</body>
</html>
