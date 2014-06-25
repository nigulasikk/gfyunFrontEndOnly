//积分提示工具激活
//popover配置项
var integralOptions={html:true};
$("#integral-detail").popover(integralOptions);

//bootstrap 一周统计图表
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

var myLine = new Chart(document.getElementById("one-week-line-canvas").getContext("2d")).Line(lineChartData);

//赚取积分 图表
var doughnutData = [
    {
        value: 30,
        color:"#F7464A",
    },
    {
        value : 50,
        color : "#46BFBD"
    },
    {
        value : 100,
        color : "#FDB45C"
    },
    {
        value : 40,
        color : "#949FB1"
    },
    {
        value : 120,
        color : "#4D5360"
    }

];

//var myDoughnut = new Chart(document.getElementById("doughnut-canvas").getContext("2d")).Doughnut(doughnutData);
//var myDoughnut = new Chart(document.getElementById("doughnut-canvas2").getContext("2d")).Doughnut(doughnutData);

//蛛网图--消耗积分

var radarChartDataUsed = {
    labels : ["下载云盘数据","接受分享数据","使用别人的应用","群分享数据转存","积分换取容量"],
    datasets : [
        {
            fillColor : "rgba(151,187,205,0.5)",
            strokeColor : "rgba(151,187,205,1)",
            pointColor : "rgba(151,187,205,1)",
            pointStrokeColor : "#fff",
            data : [28,48,40,19,96]
        }
    ]

}
//蛛网图--赚取积分

var radarChartDataEarn = {
    labels : ["登录","ftp上传","订单转存到云盘","单位分项数据被接受","分享数据被下载","上传应用","上传应用被使用","区域订阅","群分享数据被转存"],
    datasets : [
//        {
//            fillColor : "rgba(220,220,220,0.5)",
//            strokeColor : "rgba(220,220,220,1)",
//            pointColor : "rgba(220,220,220,1)",
//            pointStrokeColor : "#fff",
//            data : [65,59,90,81,56]
//        },
        {
            fillColor : "rgba(151,187,205,0.5)",
            strokeColor : "rgba(151,187,205,1)",
            pointColor : "rgba(151,187,205,1)",
            pointStrokeColor : "#fff",
            data : [28,48,40,19,96,40,10,30,70,55]
        }
    ]

}

var myRadarUse = new Chart(document.getElementById("radar-used").getContext("2d")).Radar(radarChartDataUsed,{scaleShowLabels : false, pointLabelFontSize : 10});

var myRadarEarn = new Chart(document.getElementById("radar-earn").getContext("2d")).Radar(radarChartDataEarn,{scaleShowLabels : false, pointLabelFontSize : 10});


