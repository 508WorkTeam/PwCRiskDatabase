function init_function() {
    $(".danger-link").bind("click", function () {
        if ($(this).children('p').html() == '<a href="#">查看案例</a>') {
            $(this).children('p').html('<a href="#">收起案例</a>');
        }
        else {
            $(this).children('p').html('<a href="#">查看案例</a>');
        }
        $($(this).next()).slideToggle();

    })

    $(".child-li").bind("click", function () {
        
        $(".child-li").each(function (index, domEle) {
            /*if ($(domEle).children('input').val() == $(this).children('input').val()) {
                alert("jajsda");
                return false;
            }*/
           if( $(domEle).hasClass("active")){
                $(domEle).removeClass("active")
            }
        });
        //alert($(this).children('input').val());
        $(this).addClass("active");
        $(".dangers-content").html("");
        //init_content();
    })
}

function init_content() {
    var content01 = fill_content(d_id01, d_content01, case_outline01, case_content01);
    var content02 = fill_content(d_id02, d_content02, case_outline02, case_content02);
    
    $(".dangers-content").append(content01);
    $(".dangers-content").append(content02);
}
function fill_content(index,d_desc,d_control,case_outline,case_content) {
    var html_ontent = '<div class="dangers-p">' +
    '<h3>风险' + d_id + '</h3>' +
    '<p>' + d_content +
        '</p>' +
        '<div>' +
        '<div class="danger-link">' +
        '<p><a href="#">查看案例</a></p></div>' +
        '<div class="danger-example" style="display:none">' +
            '<hr />' +
            '<p><b>案例概述</b></p> ' +
            '<p><i>' + case_outline + '</i></p>' +
            '<p><b>案例内容</b></p>' +
            '<p><i>' + case_content + '</i></p>' +
            '<hr />' +
        '</div>' +
        '</div>' +
        '</div>';
    return html_ontent;
}
function getData() {
    $.ajax({
        type: "post",
        url: "/Data/data01.json",
        dataType: "json",
        success: function (data) {
            alert(data);
        },
        error: function () {
            alert("服务器连接失败");
        }
    });
}

var list = new Array(
    "计划与组织",
    "获取与实施",
    "交付与支持",
    "监控与优化");
function fill_leftside_first()
{
    $.each(list, function (i, item) {
        $(".sidenav").append('<li><a class="sidenav_parent " href="javascript:;"><b class="ficon fa ficon fa fa-plus-square"></b>' + item + '</a><ul id= "' + item + '"class="sidenav_sub" style="display:none"></ul></li>');
    });
}

var map = {
    "IT战略": "计划与组织",
    "IT计划": "计划与组织",
    "IT组织架构": "计划与组织",
    "IT技术架构": "计划与组织",
    "IT独立性": "计划与组织",
    "设备采购": "获取与实施",
    "供应商管理": "获取与实施",
    "外包管理": "获取与实施",
    "系统开发/变更": "获取与实施",
    "数据迁移": "获取与实施",
    "IT交付": "交付与支持",
    "系统管理": "交付与支持",
    "办公设备管理与支持": "交付与支持",
    "内部沟通管理": "交付与支持",
    "日常运维": "交付与支持",
    "系统出现故障，导致业务中断": "交付与支持",
    "信息泄露": "交付与支持",
    "IT服务能力监控与评估": "监控与优化",
    "IT内控的监控": "监控与优化",
    "IT合规的控制": "监控与优化"
};
function fill_leftside_second() {
    for (key in map)
    {
        var first = map[key];
        var $classname = "#" + first;
        $($classname).append('<li id = "' + key + '" class="child-li"> <a href="#">' + key + '</a> <b class="active_arrow"></b></li>');
    }
}
function initclick()
{
    $(".sidenav_parent").bind("click", function () {
        if ($(this).children("b")[0].className == "ficon fa fa-minus-square") {
            $(this).children("b")[0].className = "ficon fa ficon fa fa-plus-square";
            $(this).next().toggle("fast");
        }
        else {
            $(this).children("b")[0].className = "ficon fa fa-minus-square";
            $(this).next().toggle("fast");
        }
    });
    $(".child-li").bind("click", function () {
        $(".active").removeClass("active");
        this.className = "active child-li";
    });
}
function initselect()
{
    $(".sidenav_parent")[0].click();
    $(".child-li")[0].click();
}