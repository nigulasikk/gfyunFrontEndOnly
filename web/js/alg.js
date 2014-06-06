$(document).ready(function() {
	$(".use-application-btn").click(function(){
		$("#use-application-modal").modal('toggle');
		
		if($.fn.zTree.getZTreeObj("exportToPanTree")==undefined){
	    	var setting = {
	    			view: {
	    				selectedMulti : false
	    			},
	    			async: {
	    				enable:true,
	    				url: "/gfyun-demo/mydata/nodelist.htm",
	    				autoParam:["id"],
	    				otherParam:{"ignoreFiles":false}
	    			}
	    	};
	    	$.fn.zTree.init($("#exportToPanTree"), setting);
    	}
		
	});
	
	$("#next").click(function(){
		$("#setParamModal").modal('toggle');
	});
	
	$(".store-application-btn").click(function(){
		alert("收藏成功");
	});
	
	$("#next2").click(function(){
		$("#choose-savepath-modal").modal('toggle');
		if($.fn.zTree.getZTreeObj("chooseSavePathTree")==undefined){
	    	var setting = {
	    			view: {
	    				selectedMulti : false
	    			},
	    			async: {
	    				enable:true,
	    				url: "/gfyun-demo/mydata/nodelist.htm",
	    				autoParam:["id"],
	    				otherParam:{"ignoreFiles":true}
	    			}
	    	};
	    	$.fn.zTree.init($("#chooseSavePathTree"), setting);
    	}
	});
	
	$("#finish").click(function(){
		alert("后台已经开始你的处理请求,处理完成后会在您设定的目录内生成处理结果");
	});
	
	$("#newApplicationBtn").click(function(){
		$("#upload-alg-modal").modal('toggle');
	});
	
	$("#toParamXml").click(function(){
		$("#param-xml-modal").modal('toggle');
	});
	
	$("#toTest").click(function(){
		$("#test-modal").modal('toggle');
	});
	
});
//给sidebar增加样式
$(".sidebar-nav-border .nav li").eq(3).addClass("active2");