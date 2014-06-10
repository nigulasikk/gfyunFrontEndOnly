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

            <span style="font-size: 12px;">460G/1100G</span>
            <a class="expand-hdd pull-right">扩容</a>
        </p>
    </div>
    <!--/.well -->
</div>

<%--<script src="/js/common/sidebar.js"></script>--%>
<!--
<ul class="nav">
<li><a href="/index.jsp"><span class="glyphicon glyphicon-cloud" style="font-size: 18px;color: #000000;margin-right: 7px;vertical-align: bottom;"></span>我的云盘</a></li>
<li><a href="/share.jsp"><span class="glyphicon glyphicon-share" style="font-size: 18px;color: #000000;margin-right: 7px;vertical-align: bottom;"></span>我的分享</a></li>
<li><a href="/groups.jsp"><span class="glyphicon glyphicon-tower" style="font-size: 18px;color: #000000;margin-right: 7px;vertical-align: bottom;"></span>我的群组</a></li>
<li><a href="/alg.jsp"><span class="glyphicon glyphicon-cloud-download" style="font-size: 18px;color: #000000;margin-right: 7px;vertical-align: bottom;"></span>算法库</a></li>
</ul>
-->