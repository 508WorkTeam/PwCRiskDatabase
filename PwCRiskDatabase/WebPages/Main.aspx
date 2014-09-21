<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="PwCRiskDatabase.WebPages.Main" %>

<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
<title>风险库管理</title>

<link href="/Styles/font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="/Styles/base.css" rel="stylesheet">
<link href="/Styles/weiphp.css" rel="stylesheet">
<link href="/Styles/main.content.css" rel="stylesheet">

<script type="text/javascript" src="/Libs/jquery-2.js"></script>
<script type="text/javascript" src="/Scripts/main.js"></script>


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
       <a class="brand" title="风险库管理" href="#"><img src="/Images/top_logo.png" title="风险库管理" height="45"></a>
            
            
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
        </ul>
  </div>
<div class="main_body">
    <div class="dangers-content">
	
    
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
      $(function () {
          //init_content();
          //init_function();
          fill_leftside_first();
          fill_leftside_second();
          initclick();
          initselect();
         // getData();
      })
</script> 
 
	
</div>

	<!-- /底部 -->

</body></html>
