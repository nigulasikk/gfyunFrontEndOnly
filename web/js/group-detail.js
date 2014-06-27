//checkbox设置
var setting = {
    check: {
        enable: true,
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
var iconImg="/images/icon/sat16.png";

var zNodes =[
    { id:1, pId:0, name:"ftp上传", open:true},
    { id:11, pId:1, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz", open:true,icon:iconImg},
    { id:12, pId:1, name:"GGF1_WFV1_W57.8_S4.0_20130102_L1A0000009712.tar.gz", open:true,icon:iconImg},
    { id:2, pId:0, name:"来自分享", open:true},
    { id:3, pId:0, name:"来自订单", open:true},
    { id:4, pId:0, name:"区域订阅", open:true},
    { id:5, pId:0, name:"云算法生成", open:true},
    { id:6, pId:0, name:"自定义创建文件名", open:true},
    { id:7, pId:0, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001064.tar.gz", open:true,icon:iconImg},
    { id:21, pId:2, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true,icon:iconImg},
    { id:22, pId:2, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true,icon:iconImg},
    { id:31, pId:3, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true,icon:iconImg},
    { id:41, pId:4, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true,icon:iconImg},
    { id:42, pId:4, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true,icon:iconImg},
    { id:61, pId:6, name:"自定义文件2", open:true},
    { id:51, pId:5, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001873.tar.gz", open:true,icon:iconImg},
    { id:611, pId:61, name:"GF1_WFV1_W57.8_S4.0_20130102_L1A0000001879.tar.gz", open:true,icon:iconImg}

];



$(document).ready(function(){
    $.fn.zTree.init($("#treeDemo"), setting, zNodes);
    $.fn.zTree.init($("#treeDemoCatlog"), settingTree, zNodes);

});

$(document).ready(function () {
    //下载文件
    $(".downloadOne").click(function(){
        if(confirm("下载此文件要消耗20个积分，你确定要下载吗？")){
//            showTip("下载文件，-20");
            showMessage("下载文件，-20");
        }
    });
    //群信息单击事件
    $("#groupInfoBtn").click(function(){
//    	$.post("/group/listGroupMembers.htm",{groupId:$("#groupId").val()},function(res){
//    		$("#allDepartmentsUl").html("");
//    		for(var i=0;i<res.length;i++){
//    			$("#allDepartmentsUl").append('<li>'+res[i]+'</li>');
//    		}
//    	});
        $("#groupInfoModel").modal('toggle');
    });
    //添加组员单击事件
    $("#addGroupMemberBtn").click(function(){
        $("#addGroupMemberModel").modal('toggle');
    });
    
    //转到云盘单击事件
    $("#exportToPanBtn").click(function(){
//    	if($.fn.zTree.getZTreeObj("exportToPanTree")==undefined){
//	    	var setting = {
//	    			view: {
//	    				selectedMulti : false
//	    			},
//	    			async: {
//	    				enable:true,
//	    				url: "/mydata/nodelist.htm",
//	    				autoParam:["id"],
//	    				otherParam:{"ignoreFiles":true}
//	    			}
//	    	};
//	    	$.fn.zTree.init($("#exportToPanTree"), setting);
//    	}
        $("#exportToPanModel").modal('toggle');
    });
    $(".exportGroupToHddOne").click(function(){
        $("#exportToPanModel").modal('toggle');
    });
//    群组数据导入到云盘
    $("#groupExportToHddConfirm").click(function(){
        showMessage("转存文件，-1");

    });
    //从云盘导入单击事件
    $("#importFromPanBtn").click(function(){
//    	if($.fn.zTree.getZTreeObj("importFromPanTree")==undefined){
//    		var setting = {
//        			view: {
//        				selectedMulti : false
//        			},
//        			async: {
//        				enable:true,
//        				url: "/mydata/nodelist.htm",
//        				autoParam:["id"]
//        			}
//        	};
//        	$.fn.zTree.init($("#importFromPanTree"), setting);
//    	}
        $("#importFromPanModel").modal('toggle');
    });
    
//    $("#saveImportBtn").click(function(){
//    	$.post("/groupfile/importfile.htm",{},function(res){
//    	});
//    });
    
    //选择单位
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
    
//    $("#addMemberCompeleteBtn").click(function(){
//    	var selectDeparts = $(".departmentSelected:checked");
//    	var countSelected = selectDeparts.length;
//    	var rs = '';
//    	for(var i=0;i<countSelected;i++){
//    		rs += selectDeparts[i].value +',';
//    	}
//
//    	$.post("/group/addMembers.htm",{selectedDepartments:rs,groupId:$("#groupId").val()},function(res){
//    		if(res==true){
//    			$.post("/group/loadGroupMemberCount.htm",{groupId:$("#groupId").val()},function(res){
//    				$("#grouMemberCountTd").html(res);
//    			});
//    			alert("添加成功");
//    		}else{
//    			alert("添加失败，请检查后重试");
//    		}
//    	});
//
//    	$(".selectedDepartsLi").remove();
//    	var checkedDeparts = $(".departmentForSelect:checked");
//    	for(var i=0;i<checkedDeparts.length;i++){
//    		checkedDeparts[i].checked=false;
//		}
//    });
});