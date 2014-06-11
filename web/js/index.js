//var PAGE_SIZE=10;
//var PAGING_BTNS_ONE_PAGE=5;
//var lastDirectoryArray = new Array;
$(document).ready(function () {
//	var currentDic = $("#currentDirectoryInput").val();
//	if(currentDic==""){
//		currentDic=null;
//		$("#goBackBtn").attr("disabled","disabled");
//	}
//    refreshFilesTable(currentDic,1,PAGE_SIZE);

//把 click弹出改成hover弹出
    $('.dropdown-toggle').click(function () {
        $(this).parent().toggleClass("open");
        }
    );
    //全选的单击事件
    $("#checkAll").click(function(){
    	if(this.checked){
    		for(var i=0;i<$("input[name='fileCheckBox']").length;i++){
    			$("input[name='fileCheckBox']")[i].checked=true;
    		}
    	}else{
    		for(var i=0;i<$("input[name='fileCheckBox']").length;i++){
    			$("input[name='fileCheckBox']")[i].checked=false;
    		}
    	}
    });
    
    //创建新文件夹的modal
    $("#newDirectory").click(function () {
    	$("#newFolderModel").modal('toggle');
    });
    
//    //点击创建文件夹的完成按钮的事件
//    $("#createFolderCompeleteBtn").click(function(){
//    	var name = $("#inputCreateFolder").val();
//    	if(name==""){
//    		//文件名为空，提示
//    		$("#addFolderErrorAlertDiv").removeClass("hidden");
//    	}else{
//    		//保存
//    		$("#addFolderErrorAlertDiv").addClass("hidden");
//    		var parentId = $("#currentDirectoryInput").val();
//    		if(parentId == "") parentId=null;
//
//    		$.post("/index/createFolder.htm",{parent:parentId,newFolderName:$("#inputCreateFolder").val()},function(res){
//    			if(res==true){
//    				$("#inputCreateFolder").val("");
//    				$("#newFolderModel").modal('toggle');
//
//    				var currentDic = $("#currentDirectoryInput").val();
//    				if(currentDic==""){
//    					currentDic=null;
//    				}
//
//    				refreshFilesTable(currentDic,1,PAGE_SIZE);
//    				alert("保存成功");
//    			}else{
//    				alert("保存失败，请检查后重试");
//    			}
//    		});
//    	}
//    });
    
//    //点击立即同步
//    $("#syncBtn").click(function(){
//    	var parentId = $("#currentDirectoryInput").val();
//    	$("#parentInput").val(parentId);
//    	$.post("/mydata/upload.htm",$("#FtpSyncForm").serialize(),function(res){
//    		var currentDic = $("#currentDirectoryInput").val();
//			if(currentDic==""){
//				currentDic=null;
//			}
//    		refreshFilesTable(currentDic,1,PAGE_SIZE);
//			alert(res.msg);
//		});
//    });
    
    //分享按钮的点击事件
    $("#shareFile").click(function () {
    	var checkedItems = $("input[name='fileCheckBox']:checked");
    	var checkedCount = checkedItems.length;
    	
    	if(checkedCount > 0 ){
    		var ids = '';
    		for(var i=0;i<checkedCount;i++){
    			ids+=$(checkedItems[i]).attr('data')+',';
    		}
    		$("#shareFiles").val(ids);
    		$('#shareFileModel').modal('toggle');
    	}else{
    		alert("请先选择数据再做分享");
    	}
    });

//    单个文件夹分享
$(".share-one-file").click(function(){
    $('#shareFileModel').modal('toggle');
});
    //按部门分享的超链接点击后
    $("#shareByDepartmentLink").click(function(){
        $('#shareFileModel').modal('toggle');
        $('#chooseDepartmentModel').modal('toggle');
    });

    //按群组分享的超链接点击后
    $("#shareByGroupLink").click(function(){
        $('#shareFileModel').modal('toggle');
        $('#chooseGroupModel').modal('toggle');
    });
    
    //按单位分享第二步中单位选择下单位列表的单击事件
    $(".departmentForSelect").click(function(target){
        var checkbox = $("#selectedDepartmentLiId"+this.value);
        if(this.checked){
        	var selectDepartId = "selectedDepartmentLiId"+this.value;
        	var departSelectedId = "departmentSelected"+this.value;
        	var selectValue = this.value;
        	if(checkbox.length==0){
            	var html = ' <li id="'+selectDepartId+'" class="selectedDepartsLi">'
            	+ '<div class="checkbox">'
            	+    '<label>'
            	+        '<input type="checkbox" class="departmentSelected" id="'+departSelectedId+'" value="'+selectValue+'" checked>'+this.name
            	+    '</label>'
            	+ '</div>'
            	+'</li>';
            	$("#selectedDepartmentsUl").append(html);
            }
        	
        	$("#departmentSelected"+selectValue).click(function(){
        		$("#departmentForSelect"+selectValue).removeAttr("checked");
        		$("#"+selectDepartId).remove();
        	});
        }else{
        	checkbox.remove();
        }
    });
    
    //点击单位间共享的分享按钮
    $("#shareWithSelectedDepartmentsBtn").click(function(){
    	var selectDeparts = $(".departmentSelected:checked");
    	var countSelected = selectDeparts.length;
    	var rs = '';
    	for(var i=0;i<countSelected;i++){
    		rs += selectDeparts[i].value +',';
    	}
    	
    	$.post("/index/shareFilesWithDepartments.htm",{selectedDepartments:rs,shareFiles:$("#shareFiles").val()},function(res){
    		if(res==true){
    			alert("分享成功");
    		}else{
    			alert("分享失败，请检查后重试");
    		}
    	});
    	
    	$(".selectedDepartsLi").remove();
    	var checkedDeparts = $(".departmentForSelect:checked");
    	for(var i=0;i<checkedDeparts.length;i++){
    		checkedDeparts[i].checked=false;
		}
    	
    });
    
    //返回上级目录
    $("#goBackBtn").click(function(){
    	var lastDirectory = lastDirectoryArray.pop();
    	$("#currentDirectoryInput").val(lastDirectory);
        refreshFilesTable(lastDirectory,1,PAGE_SIZE);
    });
    
    //运处理Modal
    $("#cloudBtn").click(function () {
    	$("#cloudModel").modal('toggle');
    });
});

//function refreshFilesTable(folderId,page,rows) {
//    $.post("/index/myfilelist.htm", {folderId: folderId,page:page,rows:rows}, function (files) {
//        $("#fileAmountLabel").text(files.length);
//
//        $("#fileListTbody").html("");
//
////        files.result.forEach(function (file) {
//        for(var i=0; i<files.result.length;i++){
//        	var file = files.result[i];
//        	//如果是文件夹
//        	if(file.folder==1){
//        		var html = "<tr>"+
//				                "<td class=''>"+
//				                    '<div class="checkbox-inline">'+
//				                        '<input type="checkbox" name="fileCheckBox" data="'+file.id+'">'+
//				                    '</div>'+
//				                '</td>'+
//				                '<td class="col-md-11">'+
//				                    '<div>'+
//				                        '<div class="row">'+
//				                            '<div class="col-md-2">'+
//				                                '<div class="image-box">'+
//				                                    '<img src="/images/folder.png" width="80" height="70" class="img-responsive">'+
//				                                '</div>'+
//				                            '</div>'+
//				                            '<div class="col-md-10">'+
//				                                '<small><a href="#" class="fileNameLink" data="'+file.id+'">'+ file.name +'</a></small>'+
//				                            '</div>'+
//				                        '</div>'+
//				                   ' </div>'+
//				                   '<td class="col-md-1">'+
//
//				                    '<div class="btn-group">'+
//				                        '<button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">'+
//				                           	'操作 <span class="caret"></span>'+
//				                        '</button>'+
//				                        '<ul class="dropdown-menu" role="menu">'+
//				                            '<li><a href="#shareFileModel" data-toggle="modal" class="shareFileClz" data="'+file.id+'">分享</a></li>'+
//				                            '<li><a href="#" data-toggle="modal" class="fileDeleteClz" data="'+file.id+'">删除</a></li>'+
//				                        '</ul>'+
//				                    '</div>'+
//				                '</td>'+
//				              '</tr>';
//        		$("#fileListTbody").append(html);
//        	}else{
//
////        		var fileInfo = new Function("return "+file.name)();
//        		var fileInfo = eval('('+file.description+')');
//        		var html = '<tr>'+
//				                '<td class="">'+
//				                    '<div class="checkbox-inline">'+
//				                        '<input type="checkbox" name="fileCheckBox" data="'+file.id+'">'+
//				                    '</div>'+
//				                '</td>'+
//				                '<td class="col-md-11">'+
//				                    '<div>'+
//				                        '<div class="row">'+
//				                            '<div class="col-md-2">'+
//				                                '<div class="image-box">'+
//				                                    '<img src="/images/winrar.png" width="80" height="70" class="img-responsive">'+
//				                                '</div>'+
//				                            '</div>'+
//				                            '<div class="col-md-10">'+
//				                                '<div class="row">'+
//				                                    '<div class="col-md-12"><small>文件名：'+fileInfo.orginalName+'</small></div>'+
//				                                '</div>'+
//				                                '<div class="row">'+
//				                                    '<div class="col-md-4"><small>卫星名称:'+fileInfo.satelliteName+'</small></div>'+
//				                                    '<div class="col-md-4"><small> 传感器：'+fileInfo.sensor+' </small></div>'+
//				                                    '<div class="col-md-4"><small>数据级别：'+fileInfo.product_level+'</small></div>'+
//				                                '</div>'+
//				                                '<div class="row">'+
//				                                	'<div class="col-md-4"><small>数据级别：'+fileInfo.product_id+'</small></div>'+
//				                                    '<div class="col-md-4"><small>采集时间：'+fileInfo.produceTime+'</small></div>'+
//				                                    '<div class="col-md-4"><small>经纬度：['+fileInfo.latitude + ',' + fileInfo.longitude+']</small></div>'+
//
//				                                '</div>'+
//				                            '</div>'+
//				                        '</div>'+
//				                    '</div>'+
//				                '<td class="col-md-1">'+
//				                    '<div class="btn-group">'+
//				                        '<button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">'+
//				                           	'操作 <span class="caret"></span>'+
//				                        '</button>'+
//				                        '<ul class="dropdown-menu" role="menu">'+
//				                            '<li><a href="#" data-toggle="modal">在地图上显示</a></li>'+
//				                            '<li><a href="#" data-toggle="modal" class="downloadFile" data="'+file.id+'">下载</a></li>'+
//				                            '<li><a href="#shareFileModel" data-toggle="modal" class="shareFileClz" data="'+file.id+'">分享</a></li>'+
//				                            '<li><a href="#" data-toggle="modal" class="fileDeleteClz" data="'+file.id+'">删除</a></li>'+
//				                        '</ul>'+
//				                    '</div>'+
//				                '</td>'+
//				            '</tr>';
//            	$("#fileListTbody").append(html);
//        	}
//        }
//
//        $("#lastDirectoryInput").val($("#currentDirectoryInput").val());
//        //点击文件夹，进入文件夹
//        $(".fileNameLink").click(function(target){
//        	if($("#currentDirectoryInput").val()==""){
//        		lastDirectoryArray.push(null);
//        	}else{
//        		lastDirectoryArray.push($("#currentDirectoryInput").val());
//        	}
//        	$("#currentDirectoryInput").val($(this).attr("data"));
//        	refreshFilesTable($(this).attr("data"),1,PAGE_SIZE);
//        });
//
//        //文件的删除事件
//        $(".fileDeleteClz").click(function(target){
//        	$.post("/index/deletefile.htm",{fileId:$(this).attr("data")},function(res){
//        		res?alert("删除成功"):alert("删除失败");
//        		var currentDic = $("#currentDirectoryInput").val();
//        		if(currentDic==""){
//        			currentDic=null;
//        		}
//        		refreshFilesTable(currentDic,1,PAGE_SIZE);
//        	});
//        });
//
//        //下载
//        $(".downloadFile").click(function(target){
//        	$("#downloadFileIdInput").val($(this).attr("data"));
//        	$("#downloadForm").submit();
//        });
//
//        //文件分享
//        $(".shareFileClz").click(function(target){
//        	$("#shareFiles").val($(this).attr("data"));
//        });
//
//        //分页
//    	$(".pagination").html("");
//    	if(files.totalPages==1){
//    		//当总页数只有1页的时候
//    		var lis ='<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>';
//    		$(".pagination").append(lis);
//    	}else if(files.totalPages<=PAGING_BTNS_ONE_PAGE){
//    		//当总页数小于5页的时候，显示5个分页按钮
//    		var lis = '';
//    		for(var i=1;i<=files.totalPages;i++){
//    			if(i==files.page){
//    				lis+='<li class="active"><a href="#">'+i+'<span class="sr-only">(current)</span></a></li>';
//    			}else{
//    				lis+='<li><a href="#" class="pagingLink">'+i+'</a></li>';
//    			}
//    		}
//    		$(".pagination").append(lis);
//    	}else{
//    		//如果总页数大于5页的时候
//    		var lis = '<li><a href="#" class="pagingFirst">&laquo;</a></li>';
//    		var middleIndex=PAGING_BTNS_ONE_PAGE/2+1;
//    		if(files.page<=middleIndex){
//    			for(var i=1;i<=PAGING_BTNS_ONE_PAGE;i++){
//        			if(i==files.page){
//        				lis+='<li class="active"><a href="#">'+i+'<span class="sr-only">(current)</span></a></li>';
//        			}else{
//        				lis+='<li><a href="#" class="pagingLink">'+i+'</a></li>';
//        			}
//        		}
//    		}else if(files.page>=files.totalPages-middleIndex){
//    			for(var i=files.totalPages-PAGING_BTNS_ONE_PAGE;i<files.totalPages;i++){
//        			if(i==files.page){
//        				lis+='<li class="active"><a href="#">'+i+'<span class="sr-only">(current)</span></a></li>';
//        			}else{
//        				lis+='<li><a href="#" class="pagingLink">'+i+'</a></li>';
//        			}
//        		}
//    		}else{
//    			lis += '<li><a href="#" class="pagingLink">'+(files.page-2)+'</a></li>';
//    			lis += '<li><a href="#" class="pagingLink">'+(files.page-1)+'</a></li>';
//    			lis += '<li class="active"><a href="#">'+files.page+'<span class="sr-only">(current)</span></a></li>';
//    			lis += '<li><a href="#" class="pagingLink">'+(files.page+1)+'</a></li>';
//    			lis += '<li><a href="#" class="pagingLink">'+(files.page+2)+'</a></li>';
//    		}
//    		lis += '<li><a href="#" class="pagingLast">&raquo;</a></li>';
//    		$(".pagination").append(lis);
//    	}
//
//    	$(".pagingLink").click(function(){
//    		var currentDic = $("#currentDirectoryInput").val();
//    		if(currentDic==""){
//    			currentDic=null;
//    		}
//    		refreshFilesTable(currentDic,this.innerText,PAGE_SIZE);
//        });
//    	$(".pagingFirst").click(function(){
//    		var currentDic = $("#currentDirectoryInput").val();
//    		if(currentDic==""){
//    			currentDic=null;
//    		}
//    		refreshFilesTable(currentDic,1,PAGE_SIZE);
//        });
//    	$(".pagingLast").click(function(){
//    		var currentDic = $("#currentDirectoryInput").val();
//    		if(currentDic==""){
//    			currentDic=null;
//    		}
//    		refreshFilesTable(currentDic,files.totalPages,PAGE_SIZE);
//        });
//
//    	//判断如何处理全选checkbox
//        $("input[name='fileCheckBox']").click(function(){
//        	if($("input[name='fileCheckBox']").length == $("input[name='fileCheckBox']:checked").length){
//        		$("#checkAll")[0].checked=true;
//        	}else{
//        		$("#checkAll").removeAttr("checked");
//        	}
//        });
//
//        $("#checkAll").removeAttr("checked");
//
//        if(folderId!=null){
//        	$("#goBackBtn").removeAttr("disabled");
//        }else{
//        	$("#goBackBtn").attr("disabled","disabled");
//        }
//    });
//
//}

//给sidebar增加样式
$(".sidebar-nav-border .nav li").eq(0).addClass("active2");