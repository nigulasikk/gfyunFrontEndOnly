/**
 * Created with IntelliJ IDEA.
 * User: Yang.WangShu
 * Date: 13-11-6
 * Time: 上午9:51
 * To change this template use File | Settings | File Templates.
 */
//每行显示几个群组
var GROUPS_PER_ROW=4;

$(document).ready(function(){
    //加了bootstrap之后 ，操作下拉条不能open
    $('.dropdown-toggle').click(function () {
            $(this).parent().toggleClass("open");
        }
    );
    //$('#ftpReceiveModel').modal('toggle');
    //创建群组的按钮被点击
    $("#createGroupBtn").click(function(){
        $('#createGroupModal').modal('toggle');
    });
    
    $("#createGroupCompeleteBtn").click(function(){
        $('#createGroupModal').modal('toggle');

//    	if($("#inputGroupName").val()==""){
//    		$("#addGroupErrorAlertDiv").removeClass("hidden");
//    	}else{
//    		$.post("/group/createGroup.htm",{name:$("#inputGroupName").val(),description:$("#textareaForDesc").val()},function(res){
//    			if(res==true){
//    				$("#addGroupErrorAlertDiv").addClass("hidden");
//    				 refreshGroupList();
//    				alert("创建成功");
//    			}else{
//    				alert("创建失败，请核对后重试");
//    			}
//    		});
//    	}
    });

   // refreshGroupList();
});

//
//function refreshGroupList(){
//
//	$("#groupHeadDiv > .row").remove();
//
//	$.post("/group/listMyGroups.htm",{},function(groups){
//		for(var i=0;i<groups.length;){
//			var html = '<div class="row">';
//			for(var c=1;c<=GROUPS_PER_ROW && i<groups.length;c++){
//	    		var group = groups[i++];
//	    		html+='<div class="col-md-3">'+
//					  	'<div class="panel panel-info">'+
//					  		'<div class="panel-heading">'+
//						    	'<div class="panel-title">'+
//						    	 	'<a href="#" class="groupNameLink" data="'+group.id+'">'+group.name+'</a>'+
//						    	 '</div>'+
//						    '</div>'+
//						    '<div class="panel-body">'+
//						    	'<div class="row">'+
//						    		'<div class="col-md-5"><small>创建者：</small></div>'+
//						    		'<div class="col-md-7 aligh-left"><small>'+group.owner+'</small></div>'+
//						    	'</div>'+
//						    	'<div class="row">'+
//						    		'<div class="col-md-5"><small>时间：</small></div>'+
//						    		'<div class="col-md-7 aligh-left"><small>'+getFormatDateByLong(group.createdate,'yyyy/MM/dd')+'</small></div>'+
//						    	'</div>'+
//						    '</div>'+
//						  '</div>'+
//					   '</div>';
//	    	}
//	    	html+='</div>';
//
//	    	$(html).appendTo("#groupHeadDiv");
////	    	$("#groupHeadDiv").appendTo(html);
//	    }
//
////		$(".groupNameLink").click(function(){
////			var groupId=$(this).attr("data");
////			$("input[name='groupId']").val(groupId);
////			$("#groupDeitalForm").submit();
////		});
//	});
//}
//给sidebar增加样式
$(".sidebar-nav-border .nav li").eq(2).addClass("active2");