/**
 * Created by qkk on 14-6-4.
 */
//扩容 按钮模态效果
$(".expand-hdd").click(function(){
    $("#expandHdd").modal('toggle');
});
//按 交换积分交换空间
$("#exchangeHddSpace").click(function(){
    $("#expandHdd").modal('toggle');
    $("#exchangeHddSpaceModal").modal('toggle');

});
//按 购买空间

$("#buyHddSpace").click(function(){
    $("#expandHdd").modal('toggle');
    $("#buyHddSpaceModal").modal('toggle');
});

//积分换取容量
$("#exchangeIntegralToHdd").click(function(){
    var exchangeHddNum=parseInt($("#exchange-hdd-num").val());
    showTip("换取容量，-"+exchangeHddNum);
    showTipById("换取容量，+"+exchangeHddNum,"total-hdd");
    var totalValue=$(".total-hdd").text();
    var newValue=parseInt(totalValue)
    $(".total-hdd").text(newValue+exchangeHddNum);
});

//购买容量
$("#buy-hdd").click(function(){
    var buyHddNum=parseInt($("#buy-hdd-num").val());
    showTipById("购买容量，+"+buyHddNum+"","total-hdd");
    var totalValue=$(".total-hdd").text();
    var newValue=parseInt(totalValue)
    $(".total-hdd").text(newValue+buyHddNum);

});
