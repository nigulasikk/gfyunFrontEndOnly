/* 购物车、个人中心、快捷方式 */
jQuery(".program").hover(function () {
    jQuery(this).addClass("cover");
    jQuery(".programdiv", this).show();
}, function () {
    jQuery(this).removeClass("cover");
    jQuery(".programdiv", this).hide();
});

/* 点击去我的消息 */
jQuery("a[name='myIntegral']").click(function () {
    window.location.assign("/jsp/personalCenter/integral.jsp");
    $(".integral-num").text("0");

});

//  showTip("登录加分，+5");
function showTip(text){
    // 积分提示
    var userName=$("#userCenter");
    userName.attr("data-original-title",text);
    userName.tooltip('show');
    //两秒后消失
    setTimeout(function(){
        destroyTip();
    },2000);
    function destroyTip(){
        userName.tooltip('destroy');

    }
}
//信息提示，换一种  界面提示方式
function showMessage(text){
    // e.preventDefault();
    $.scojs_message(text, $.scojs_message.TYPE_OK);
}
// showMessage("登录积分，+1");
function showTipById(text,id){
    // 积分提示
    var userName=$("."+id);
    userName.attr("data-original-title",text);
    userName.attr("data-placement",'bottom');
    userName.tooltip('show');
    //两秒后消失
    setTimeout(function(){
        destroyTip();
    },2000);
    function destroyTip(){
        userName.tooltip('destroy');

    }
}
//切换用户
$(".changeAdmin").click(function(){
    $(".name span a strong").text("nyb");
});