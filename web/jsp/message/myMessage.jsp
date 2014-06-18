<%--
  Created by IntelliJ IDEA.
  User: qkk
  Date: 14-6-4
  Time: 下午4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--引入css，为了写代码时候自动提示类，写完之后 ，删除，  因为该css已经在basicHeaderContent中引入--%>
    <link href="/bootstrap/dist/css/bootstrap.css" rel="stylesheet">
    <%@ include file="/common/basicHeaderContent.jsp" %>
    <link rel="stylesheet" href="/css/common/common.css">
    <link rel="stylesheet" href="/css/personalCenter/personalCenter.css">
</head>
<body>
<%@ include file="/common/navbar.jsp" %>
<div class="container">
    <div class="row">
        <%@ include file="/common/sidebar.jsp" %>
        <div class="col-md-10">


        </div>
    </div>
    <hr>

<img src="/images/buildding.png" style="display:block;width:300px;margin:20px auto;">

</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/bootstrap/assets/js/jquery.js"></script>
<script src="/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/tab.js"></script>

</body>
</html>
