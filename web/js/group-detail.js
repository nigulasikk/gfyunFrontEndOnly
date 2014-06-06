$(document).ready(function () {
    //群信息单击事件
    $("#groupInfoBtn").click(function(){
    	$.post("/group/listGroupMembers.htm",{groupId:$("#groupId").val()},function(res){
    		$("#allDepartmentsUl").html("");
    		for(var i=0;i<res.length;i++){
    			$("#allDepartmentsUl").append('<li>'+res[i]+'</li>');
    		}
    	});
        $("#groupInfoModel").modal('toggle');
    });
    //添加组员单击事件
    $("#addGroupMemberBtn").click(function(){
        $("#addGroupMemberModel").modal('toggle');
    });
    
    //转到云盘单击事件
    $("#exportToPanBtn").click(function(){
    	if($.fn.zTree.getZTreeObj("exportToPanTree")==undefined){
	    	var setting = {
	    			view: {
	    				selectedMulti : false
	    			},
	    			async: {
	    				enable:true,
	    				url: "/mydata/nodelist.htm",
	    				autoParam:["id"],
	    				otherParam:{"ignoreFiles":true}
	    			}
	    	};
	    	$.fn.zTree.init($("#exportToPanTree"), setting);
    	}
        $("#exportToPanModel").modal('toggle');
    });
    //从云盘导入单击事件
    $("#importFromPanBtn").click(function(){
    	if($.fn.zTree.getZTreeObj("importFromPanTree")==undefined){
    		var setting = {
        			view: {
        				selectedMulti : false
        			},
        			async: {
        				enable:true,
        				url: "/mydata/nodelist.htm",
        				autoParam:["id"]
        			}
        	};
        	$.fn.zTree.init($("#importFromPanTree"), setting);
    	}
        $("#importFromPanModel").modal('toggle');
    });
    
    $("#saveImportBtn").click(function(){
    	$.post("/groupfile/importfile.htm",{},function(res){
    		//TODO:
    	});
    });
    
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
    
    $("#addMemberCompeleteBtn").click(function(){
    	var selectDeparts = $(".departmentSelected:checked");
    	var countSelected = selectDeparts.length;
    	var rs = '';
    	for(var i=0;i<countSelected;i++){
    		rs += selectDeparts[i].value +',';
    	}
    	
    	$.post("/group/addMembers.htm",{selectedDepartments:rs,groupId:$("#groupId").val()},function(res){
    		if(res==true){
    			$.post("/group/loadGroupMemberCount.htm",{groupId:$("#groupId").val()},function(res){
    				$("#grouMemberCountTd").html(res);
    			});
    			alert("添加成功");
    		}else{
    			alert("添加失败，请检查后重试");
    		}
    	});
    	
    	$(".selectedDepartsLi").remove();
    	var checkedDeparts = $(".departmentForSelect:checked");
    	for(var i=0;i<checkedDeparts.length;i++){
    		checkedDeparts[i].checked=false;
		}
    });
});