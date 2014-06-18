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
//    验证输入是否为数字
    if(checkNumber(exchangeHddNum)){
//        showTip("换取容量，-"+exchangeHddNum);
//        showTipById("换取容量，+"+exchangeHddNum,"total-hdd");
        showMessage("恭喜你，成功用"+exchangeHddNum+"积分，换取"+exchangeHddNum+"容量！")
        var totalValue=$(".total-hdd").text();
        var newValue=parseInt(totalValue)
        $(".total-hdd").text(newValue+exchangeHddNum);
        $("#exchangeHddSpaceModal").modal('toggle');
    }else{
        alert("你的输入有误，交换的积分只能为数字！");
    }

});

//购买容量
$("#buy-hdd").click(function(){
    var buyHddNum=parseInt($("#buy-hdd-num").val());
    //    验证输入是否为数字
    if (checkNumber(buyHddNum)) {
//        showTipById("购买容量，+"+buyHddNum+"","total-hdd");
        showMessage("购买容量"+buyHddNum+"G");
        var totalValue=$(".total-hdd").text();
        var newValue=parseInt(totalValue)
        $(".total-hdd").text(newValue+buyHddNum);
        $("#buyHddSpaceModal").modal("toggle");
    } else {
        alert("你的输入有误，交换的积分只能为数字！");
    }



});

//正则验证数字
function checkNumber(value){
    var patten=/\d{1,}/;
    return patten.test(value);
}