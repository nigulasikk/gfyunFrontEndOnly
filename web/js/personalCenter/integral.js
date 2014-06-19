//积分提示工具激活
//popover配置项
var integralOptions={html:true};
$("#integral-detail").popover(integralOptions);

//bootstrap 图标
var lineChartData = {
    labels : ["6-6","6-7","6-8","6-9","6-10","6-11","6-12"],

    datasets : [
        {
            fillColor : "rgba(220,220,220,0.5)",
            strokeColor : "rgba(220,220,220,1)",
            pointColor : "rgba(220,220,220,1)",
            pointStrokeColor : "#fff",
            data : [65,59,90,81,56,55,100]
        }
//        ,
//        {
//            fillColor : "rgba(151,187,205,0.5)",
//            strokeColor : "rgba(151,187,205,1)",
//            pointColor : "rgba(151,187,205,1)",
//            pointStrokeColor : "#fff",
//            data : [28,48,40,19,96,27,100]
//        }
    ]

}

var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData);
	