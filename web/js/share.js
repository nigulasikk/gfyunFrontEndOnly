$(document).ready(function(){
    //加了bootstrap之后 ，操作下拉条不能open
    $('.dropdown-toggle').click(function () {
            $(this).parent().toggleClass("open");
        }
    );
    $(".share-accept").click(function(){
        $(this).parents("tr").remove();
        showTip("接受分享，-1");
    });
    $(".cancel-sheare-one").click(function(){
        $(this).parents("tr").remove();

    });
    //$('#ftpReceiveModel').modal('toggle');
//	$.post("/index/listSharedFiles.htm", function (files) {
//		$("#fileListTbody").html("");
//
//		for(var i=0; i<files.length;i++){
//			var file = files[i];
//	       	//如果是文件夹
//	       	if(file.folder==1){
//	       		var html = generateFolderHtml(file);
//	       		$("#fileListTbody").append(html);
//	       	}else{
//	       		var html = generateFileHtml(file);
//	       		$("#fileListTbody").append(html);
//	       	}
//		}
//		$(".cancelShareFileClz").click(function(){
//			var fileId = $(this).attr("data");
//			$.post("/index/cancelShareFile.htm",{fileId:fileId},function(res){
//				if(res==true){
//					$("#shareFile"+fileId).remove();
//					alert("取消成功");
//				}else{
//					alert("取消失败，请确认后重试");
//				}
//			});
//		});
//	});
	//
	$('#shareTab a').click(function (e) {
		  e.preventDefault();
		  $(this).tab('show');
	});
});
//
//function generateFolderHtml(file){
//	return '<tr id="shareFile'+file.id+'">'+
//			    "<td class=''>"+
//			    '<div class="checkbox-inline">'+
//			        '<input type="checkbox" name="fileCheckBox" data="'+file.id+'">'+
//			    '</div>'+
//			'</td>'+
//			'<td>'+
//			    '<div>'+
//			        '<div class="row">'+
//			            '<div class="col-md-2">'+
//			                '<div class="image-box">'+
//			                    '<img src="/images/folder.png" width="80" height="70" class="img-responsive">'+
//			                '</div>'+
//			            '</div>'+
//			            '<div class="col-md-10">'+
//			                '<small>'+ file.filename +'</small>'+
//			            '</div>'+
//			        '</div>'+
//			   ' </div>'+
//			  '</td>'+
//			  '<td>'+getFormatDateByLong(file.sharedate,"yyyy-MM-dd hh:mm:ss")+'</td>'+
//			  '<td>'+file.downloadcount+'</td>'+
//			  '<td>'+
//			        '<div class="btn-group">'+
//			            '<button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">'+
//			               	'操作 <span class="caret"></span>'+
//			            '</button>'+
//			        '<ul class="dropdown-menu" role="menu">'+
//			            '<li><a href="#shareFileModel" data-toggle="modal" class="shareFileClz" data="'+file.id+'">在地图上显示</a></li>'+
//			            '<li><a href="#" data-toggle="modal" class="cancelShareFileClz" data="'+file.id+'">取消分享</a></li>'+
//			        '</ul>'+
//			    '</div>'+
//			'</td>'+
//			'</tr>';
//}

//function generateFileHtml(file){
//	var fileInfo = eval('('+file.filename+')');
//	return '<tr id="shareFile'+file.id+'">'+
//                '<td class="">'+
//                    '<div class="checkbox-inline">'+
//                        '<input type="checkbox" name="fileCheckBox" data="'+file.id+'">'+
//                    '</div>'+
//                '</td>'+
//                '<td>'+
//                    '<div>'+
//                        '<div class="row">'+
//                            '<div class="col-md-2">'+
//                                '<div class="image-box">'+
//                                	'<img src="/images/winrar.png" width="80" height="70" class="img-responsive">'+
//                                '</div>'+
//                            '</div>'+
//                            '<div class="col-md-10">'+
//                                '<div class="row">'+
//                                    '<div class="col-md-12"><small>'+fileInfo.orginalName+'</small></div>'+
//                           		'</div>'+
//                                '<div class="row">'+
//                                    '<div class="col-md-4"><small>卫星名称:'+fileInfo.satelliteName+'</small></div>'+
//                                    '<div class="col-md-4"><small> 传感器：'+fileInfo.sensor+' </small></div>'+
//                                    '<div class="col-md-4"><small> 传感器：'+fileInfo.product_level+' </small></div>'+
//                                '</div>'+
//                                '<div class="row">'+
//	                            	'<div class="col-md-4"><small>数据级别：'+fileInfo.product_id+'</small></div>'+
//	                                '<div class="col-md-4"><small>采集时间：'+fileInfo.produceTime+'</small></div>'+
//	                                '<div class="col-md-4"><small>经纬度：['+fileInfo.latitude + ',' + fileInfo.longitude+']</small></div>'+
//                            '</div>'+
//                            '</div>'+
//                        '</div>'+
//                    '</div>'+
//                '</td>'+
//                '<td>'+getFormatDateByLong(file.sharedate,"yyyy-MM-dd hh:mm:ss")+'</td>'+
//                '<td>'+file.downloadcount+'</td>'+
//                '<td>'+
//                    '<div class="btn-group">'+
//                        '<button type="button" class="btn btn-default dropdown-toggle btn-sm" data-toggle="dropdown">'+
//                           	'操作 <span class="caret"></span>'+
//                        '</button>'+
//                        '<ul class="dropdown-menu" role="menu">'+
//                            '<li><a href="#" data-toggle="modal">在地图上显示</a></li>'+
//                            '<li><a href="#shareFileModel" data-toggle="modal" class="cancelShareFileClz" data="'+file.id+'">取消分享</a></li>'+
//                        '</ul>'+
//                    '</div>'+
//                '</td>'+
//            '</tr>';
//}

//给sidebar增加样式
$(".sidebar-nav-border .nav li").eq(1).addClass("active2");