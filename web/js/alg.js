//checkbox设置
var setting = {
    check: {
        enable: true
    },
    data: {
        simpleData: {
            enable: true
        }
    }
};
//目录设置
var settingTree = {

    data: {
        simpleData: {
            enable: true
        }
    }
};
setting.check.chkboxType = { "Y" : "ps", "N" : "ps" };
var zNodes =[
    { id:1, pId:0, name:"ftp上传", open:true},
    { id:11, pId:1, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz", open:true},
    { id:12, pId:1, name:"GGF1_WFV1_W57.8_S4.0_20130102_L1A0000009712.tar.gz", open:true},
    { id:2, pId:0, name:"来自分享", open:true},
    { id:3, pId:0, name:"来自订单", open:true},
    { id:4, pId:0, name:"区域订阅", open:true},
    { id:5, pId:0, name:"云算法生成", open:true},
    { id:6, pId:0, name:"自定义创建文件名", open:true},
    { id:7, pId:0, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz", open:true},
    { id:21, pId:2, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true},
    { id:22, pId:2, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true},
    { id:31, pId:3, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true},
    { id:41, pId:4, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true},
    { id:42, pId:4, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true},
    { id:61, pId:6, name:"自定义文件2", open:true},
    { id:51, pId:5, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001873.tar.gz", open:true},
    { id:611, pId:61, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true},

];
$(document).ready(function() {

    $.fn.zTree.init($("#exportToPanTree"), setting, zNodes);
    $.fn.zTree.init($("#chooseSavePathTree"), settingTree, zNodes);



	$(".use-application-btn").click(function(){
        if(confirm("你使用的是农业部上传的算法，使用一次要扣除积分20，你确定要使用吗？"))
        {
            $("#use-application-modal").modal('toggle');

        }

//		if($.fn.zTree.getZTreeObj("exportToPanTree")==undefined){
//	    	var setting = {
//	    			view: {
//	    				selectedMulti : false
//	    			},
//	    			async: {
//	    				enable:true,
//	    				url: "/gfyun-demo/mydata/nodelist.htm",
//	    				autoParam:["id"],
//	    				otherParam:{"ignoreFiles":false}
//	    			}
//	    	};
//	    	$.fn.zTree.init($("#exportToPanTree"), setting);
//    	}
		
	});
	
	$("#next").click(function(){
		$("#setParamModal").modal('toggle');
	});
	
	$(".store-application-btn").click(function(){
		alert("收藏成功");
	});
	
	$("#next2").click(function(){
		$("#choose-savepath-modal").modal('toggle');
//		if($.fn.zTree.getZTreeObj("chooseSavePathTree")==undefined){
//	    	var setting = {
//	    			view: {
//	    				selectedMulti : false
//	    			},
//	    			async: {
//	    				enable:true,
//	    				url: "/gfyun-demo/mydata/nodelist.htm",
//	    				autoParam:["id"],
//	    				otherParam:{"ignoreFiles":true}
//	    			}
//	    	};
//	    	$.fn.zTree.init($("#chooseSavePathTree"), setting);
//    	}
	});
	
	$("#finish").click(function(){
		alert("后台已经开始你的处理请求,处理完成后会在您设定的目录内生成处理结果");
        showTip("使用算法，-20");
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

    $("#save-alg").click(function(){
        showTip("上传算法，+200");
    });
	
});
//给sidebar增加样式
$(".sidebar-nav-border .nav li").eq(3).addClass("active2");