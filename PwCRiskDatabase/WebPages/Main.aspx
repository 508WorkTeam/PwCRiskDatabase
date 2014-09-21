<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PwCRiskDatabase.WebPages.Main" %>

<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
<meta content="风险库管理" name="keywords">
<meta content="风险库管理" name="description">
<link rel="shortcut icon" href="http://www.weiphp.cn/favicon.ico">
<title>风险库管理</title>
<link href="./css/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="./css/base.css" rel="stylesheet">
<link href="./css/module.css" rel="stylesheet">
<link href="./css/weiphp.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="/Public/static/bootstrap/js/html5shiv.js?v=1411220175"></script>
<![endif]-->

<!--[if lt IE 9]>
<script type="text/javascript" src="/Public/static/jquery-1.10.2.min.js"></script>
<![endif]-->
<!---蓝锂002适配修改 QQ:125682133--->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="./js/jquery-2.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="./js/bootstrap.js"></script>
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/dialog.js"></script>
<script type="text/javascript" src="./js/admin_common.js"></script>
<script type="text/javascript" src="./js/admin_image.js"></script>
<script type="text/javascript">
    var STATIC = "/Public/static";
    var ROOT = "";
</script>
<!-- 页面header钩子，一般用于加载插件CSS文件和代码 -->

</head>
<body>
	<!-- 头部 -->
	<!-- 提示 -->
<div id="top-alert" class="top-alert-tips alert-error" style="display: none;">
  <a class="close" href="javascript:;"><b class="fa fa-times-circle"></b></a>
  <div class="alert-content">这是内容</div>
</div>
<!-- 导航条
================================================== -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
       <a class="brand" title="风险库管理" href="#"><img src="./images/top_logo.png" title="风险库管理" height="45"></a>
            
            
            <div class="top_nav">
                <ul class="nav" style="margin-right:0">
                        <li class="dropdown admin_nav">
                            <a href="#" class="dropdown-toggle login-nav" data-toggle="dropdown" style="">admin <b class="pl_5 fa fa-sort-down"></b></a>
                            <ul class="dropdown-menu" style="display:none">
                                <li><a href="#">后台管理</a></li>
                                <li><a href="#">修改密码</a></li>
                                <li><a href="#">退出</a></li>
                            </ul>
                        </li>
                    </ul>
                            </div>
        </div>
</div>
	<!-- /头部 -->
	
	<!-- 主体 -->
	
<div id="main-container" class="container">
	<div class="sidebar">
    	<ul class="sidenav">
          <li>
              <a class="sidenav_parent " href="javascript:;"><b class="ficon fa fa-minus-square"></b>宏观政策风险</a>
              <ul class="sidenav_sub" style="">
                  <li class="active"> <a href="#">政策变化 </a> <b class="active_arrow"></b></li>
             </ul>
          </li>
          
          <li>
              <a class="sidenav_parent" href="javascript:;"><b class="ficon fa fa-plus-square"></b>营销风险</a>
              <ul class="sidenav_sub" style="display:none">
                  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      规模过低 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      销售渠道话语权过高 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      客户信息无法掌握 </a><b class="active_arrow"></b></li>
					  
					  </ul>
          </li>
		  <li>
              <a class="sidenav_parent" href="javascript:;"><b class="ficon fa fa-plus-square"></b>竞争对手风险</a>
              <ul class="sidenav_sub" style="display:none">
                <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      同业竞争 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      混业竞争 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      定位模糊 </a><b class="active_arrow"></b></li>
             </ul>
          </li>
		  <li>
              <a class="sidenav_parent" href="javascript:;"><b class="ficon fa fa-plus-square"></b>产品、服务与创新风险</a>
              <ul class="sidenav_sub" style="display:none">
                <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      产品设计缺陷 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      新市场风险 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      新技术风险 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      产品可行性与研究风险 </a><b class="active_arrow"></b></li>
					  <li class=""> <a href="#"> 
                      <i class="icon-chevron-right"> </i>
                      产品细节服务不到位 </a><b class="active_arrow"></b></li>
             </ul>
          </li>
        </ul>
  </div>
<div class="main_body">
	A0101

  </div>

</div>
</div>
	<!-- /主体 -->

	<!-- 底部 -->
	
    <!-- 底部
    ================================================== -->
<footer class="footer">
      <div class="container">
          <p>
          	<a href="#">关于我们</a>  |  
            <a href="#">使用说明</a>   |   
            by Z&S
            </p>
      </div>
</footer>

<script type="text/javascript">
    (function () {
        var ThinkPHP = window.Think = {
            "ROOT": "", //当前网站地址
            "APP": "/index.php?s=", //当前项目地址
            "PUBLIC": "/Public", //项目公共目录地址
            "DEEP": "/", //PATHINFO分割符
            "MODEL": ["3", "1", "html"],
            "VAR": ["m", "c", "a"]
        }
    })();
</script>
 
  <script type="text/javascript">
      $(function () {
          //搜索功能
          $("#search").click(function () {
              var url = $(this).attr('url');
              var query = $('.search-form').find('input').serialize();
              query = query.replace(/(&|^)(\w*?\d*?\-*?_*?)*?=?((?=&)|(?=$))/g, '');
              query = query.replace(/^&/g, '');
              if (url.indexOf('?') > 0) {
                  url += '&' + query;
              } else {
                  url += '?' + query;
              }
              window.location.href = url;
          });

          //回车自动提交
          $('.search-form').find('input').keyup(function (event) {
              if (event.keyCode === 13) {
                  $("#search").click();
              }
          });

      })
</script> 
 
	
</div>

	<!-- /底部 -->

</body></html>
