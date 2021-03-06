
<!DOCTYPE HTML>
<!--[if lt IE 7]>      <html lang="zh-CN" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="zh-CN" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="zh-CN" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="zh-CN" class="no-js">
<!--<![endif]-->
<!-- 定义html5类型,注解不要放开头,否则文档识别会失败 -->
<!-- 定义载入的语言类型,如果需要强调为中文，则用zh-CN 一般情况下用en -->
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<!-- 注意i6下同名class不能继承.为提升优先级,可以直接把特别申明的内容定义在文件头部. -->
<!-- 强行加载第一个加载,免的有什么异常 -->
<!-- html5shim 可以让 IE9 或者更低版本的 IE 浏览器支持 HTML5。 -->
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script language="javascript" type="text/javascript" src="assets/js/html5shiv.js"></script>
<![endif]-->
<!-- 定义语言载入的编码格式 -->
<meta charset="utf-8"/>
<title>Bootstrap框架-Bootstrap学习</title>
<meta http-equiv="content-type" content="text/html" />
<meta name="author" content="KingHack" />
<meta name="description" content="基于注解的方式对Bootstrap官方网站代码进行了重新构建和深度解析以适应IE大部分版本以及其它浏览器的最新版本,便于学习者快速掌握上手Bootstrap开发框架。 Bootstrap是Twitter推出的一个用于前端开发的开源工具包。它由Twitter的设计师Mark Otto和Jacob Thornton合作开发，是一个CSS/HTML框架。它使用了流行的浏览器技术，给web开发提供了时尚的版式，表单，buttons，表格，网格系统等等。"/>
<!-- 关于文档的关键字标签 -->
<meta name="keywords" content="Bootstrap, Bootstrap 中文, Bootstrap 翻译, Bootstrap 中文翻译, Bootstrap 学习, 框架, 前端框架, CSS, HTML, JavaScript"/>
<!-- 确保设备能正常显示响应式页面 -->
<!-- 告诉webkit内核浏览器初始缩放比例为1 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>


<!-- 判断浏览器版本.IE7以下版本,bootstrap支持不了.加个提示 -->
<!--[if IE]>      
      <!--[if IE 6]>
          <!--<h5>您使用的浏览器版本是IE6,本站不支持此版本.请升级您的浏览器</h5>-->
      <![endif]-->
<!-- 判断浏览器版本IE6以下版本 -->
<!--[if lt IE 6]> 
           <!-- <h5>您使用的浏览器版本低于IE7,本站不支持低版本浏览器.请升级您的浏览器</h5> -->
      <![endif]-->
<!--[if IE 7]>
          
      <![endif]-->
<![endif]-->

<!-- bootstrap不同版本之间有区别，不要用混了。 -->
<!-- Le styles -->
<!-- CSS基础样式 -->
<!-- 注意这个地方与官网载入地方不同 -->
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css"/>

<!-- IE9以下没有响应式效果 -->
<!--[if lte IE 6]>
    <link rel="stylesheet" type="text/css" href="bootstrap/2.2.1/css/bootstrap-ie6.css" media="screen" >
    <![endif]-->
<!--[if lte IE 7]>
    <link rel="stylesheet" type="text/css" href="bootstrap/2.2.1/css/ie.css" media="screen" >
    <![endif]-->

<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-responsive.css"/>
<!-- 本文档的自定义css -->
<link rel="stylesheet" type="text/css" href="assets/css/docs.css"/>
<link rel="stylesheet" type="text/css" href="assets/css/docs-cn.css"/>
<!--[if lte IE 6]>
<style type="text/css">
h1, h3, h3, .masthead p, .subhead p, .marketing h2
{
	font-family: "Helvetica Neue",Helvetica,'microsoft yahei ui', 'microsoft yahei','simhei',Arial,sans-serif;
	font-weight: normal;
}	    
.marketing-img{
 width: expression(this.width > 290 && this.width > this.height ? 290 : true);
 height: expression(this.height > 145 || this.height > this.width ? 145 : true);
}  
.example-sites img {
 width: expression(this.width > 450 && this.width > this.height ? 450 : true);
 height: expression(this.height > 230 || this.height > this.width ? 230 : true);    
   
</style>
<![endif]-->
<!--[if lte IE 7]>
    <link rel="stylesheet" type="text/css" href="assets/css/docs-cn-ie7.css" media="screen" >
    <![endif]-->

<!--[if lte IE 8]>
    <link rel="stylesheet" type="text/css" href="assets/css/docs-cn-ie8.css" media="screen" >
    <![endif]-->
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="assets/css/docs-cn-ie.css" media="screen" >
<![endif]-->


<!-- 引用google的js语法高亮插件 -->
<link rel="stylesheet" type="text/css" href="assets/js/google-code-prettify/prettify.css"/>

<!-- Le fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png"/>
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png"/>
<!-- 这个地方要注意,ico文件也是可以载入的 -->
<link rel="shortcut icon" href="assets/ico/favicon.png"/>  

</head>

<!-- 使用bootstrap-scrollspy.js 在置顶导航条上实现滚动侦测 -->
<!-- 对应的地方加上$('#navbar').scrollspy()即可 -->
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<!-- 页面分为三大块,Navbar,main body,footer -->

    <!-- Navbar
    ================================================== -->
    <!-- 定义个navbar -->
    <!-- 基础框架 -->
    <!-- 同一个class 不同文件都有的情况下,都可能加载.重合部分覆盖 -->
    <!-- 定义在文档整体和相邻元素之间的布局关系 -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <!-- 定义个内部框架表现的基调,位置大小背景等 -->
        <div class="navbar-inner">
            <!-- 定义实现块的css,具体内容都包含在container中 -->
            <div class="container">
                <!-- 定义响应时用的按钮元素,界面大小改变时会用到 -->
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- 定义品牌链接导航 -->
                <!-- 不知道为什么这么定义 -->
                <a class="brand" href="./index.html">Bootstrap</a>
                <!-- 定义了个响应触发点 -->
                <div class="nav-collapse collapse">
                    <!-- 定义导航列表 -->
                    <ul class="nav">
                        <!-- 首页链接高亮 -->
                        <li class="">
                            <a href="./index.html">首页</a>
                        </li>
                        <!-- 一个导航分类一个li -->
                        <li class="active">
                            <a href="./getting-started.html">入门</a>
                        </li>
                        <li class="">
                            <a href="./scaffolding.html">框架</a>
                        </li>
                        <li class="">
                            <a href="./base-css.html">基本CSS样式</a>
                        </li>
                        <li class="">
                           <a href="./components.html">组件</a>
                        </li>
                        <li class="">
                            <a href="./javascript.html">JavaScript插件</a>
                        </li>
                        <li class="">
                            <a href="./customize.html">定制</a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Subhead
    ================================================== -->
    <!-- 定义文档的页眉（介绍信息）。 -->
    <!-- 这个地方是html5与html4不同的地方,要特别注意,id是供#锚文本用的 -->
    <header class="jumbotron subhead" id="overview">
        <div class="container">
            <h1>入门介绍</h1>
            <p class="lead">概述该项目和内容, 及其如何开始使用一个简单的模板.</p>
        </div>
    </header>
    
    <!-- 具体内容块 -->
    <div class="container">
        <!-- 二部分组成,一个是左边的竖排导航,一个是右边的内容区 -->
        <!-- Docs nav
        ================================================== -->
        <!-- 都是基于块结构的,并且不需要响应. -->
        <!-- 整个页面分为4大块,左一位导航,剩下3块内容区 -->
        <div class="row">
            <!-- 竖排导航 -->
            <!-- 12/4=3 分配好位置 注意这里不是导航class不同 -->
            <div class="span3 bs-docs-sidebar">
                <ul class="nav nav-list bs-docs-sidenav">
                    <li><a href="#download-bootstrap"><i class="icon-chevron-right"></i> 下载</a></li>
                    <li><a href="#file-structure"><i class="icon-chevron-right"></i>文件结构</a></li>
                    <li><a href="#contents"><i class="icon-chevron-right"></i>包含内容</a></li>
                    <li><a href="#html-template"><i class="icon-chevron-right"></i>HTML模版</a></li>
                    <li><a href="#examples"><i class="icon-chevron-right"></i>例子</a></li>
                    <li><a href="#what-next"><i class="icon-chevron-right"></i>接下来?</a></li>
                </ul>
            </div>
            <!-- 具体内容,定义几个节部分 -->
            <div class="span9">
                <!-- Download
                ================================================== -->
                <section id="download-bootstrap">
                    <!-- 定义个首部 -->
                    <div class="page-header">
                        <h1>1.下载</h1>
                        <p class="lead">在下载前，请确保有一个代码编辑器(官方建议使用 <a href="http://sublimetext.com/2">Sublime Text 2</a>,不过我用的是 <small>phpDesigner 8</small>) 和了解一些HTML和CSS的知识. 这里不会在讨论源文件, 但他们是可提供下载的. 这里将专注于如何入门已经完成好的Bootstrap.</p>
                        <p>以下下载文件均来至官方</p>
                    </div>
                    <!-- 一个区里面独立的二个小方块 -->
                    <!-- 12/2=6 -->
                    <!-- 标题+内容+链接按钮 -->
                    <div class="row-fluid">
                        
                        <div class="span6">
                            <h2>下载已编译完成文件</h2>
                            <p><strong>最快速的开始方式:</strong>获得已编译和压缩版本的CSS, JS和图像. 没有文档和原文件.</p>
                            <p><a class="btn btn-large btn-primary" href="http://twitter.github.com/bootstrap/assets/bootstrap.zip" >下载 Bootstrap</a></p>
                        </div>
                        <div class="span6">
                            <h2>下载源文件</h2>
                            <p>从GitHub直接下载最新版本，获取所有CSS和JavaScript的源文件, 以及文档.</p>
                            <p><a class="btn btn-large" href="https://github.com/twitter/bootstrap/zipball/master">下载 Bootstrap 源文件</a></p>
                        </div>
                    </div>

               
                </section>
                
                <!-- File structure
                ================================================== -->
                <section id="file-structure">
                    <!-- 不需要并排显示内容,所以不需要div -->
                    <div class="page-header">
                        <h1>2.文件结构</h1>
                    </div>
                    <!-- 这个地方是需要强调的 -->
                    <p class="lead">在下载的压缩包中你可以看到如下的文件结构和内容。所有文件按逻辑进行分类存储，并且提供了编译和压缩两个版本的文件。</p>
                    <!-- 不需要强调的,就不需要加class了 -->
                    <p>将下载的文件解压缩之后就可以看到如下的文件结构：</p>
                    <!-- 固定文本格式大块输出 -->
                    <pre class="prettyprint linenums">
bootstrap/
  ├── css/
  │   ├── bootstrap.css
  │   ├── bootstrap.min.css
  ├── js/
  │   ├── bootstrap.js
  │   ├── bootstrap.min.js
  └── img/
      ├── glyphicons-halflings.png
      └── glyphicons-halflings-white.png
                    </pre>
                    <p>这就是Bootstrap的基本结构：编译后的文件可以快速应用于任何web项目。我们提供了编译版的CSS和JS文件 (<code>bootstrap.*</code>)，也同时提供了编译并压缩之后的CSS和JS文件 (<code>bootstrap.min.*</code>)。图片文件是使用 <a href="http://imageoptim.com/">ImageOptim</a> 工具进行压缩的，这个工具是Mac平台上用于压缩PNG文件的一个app。</p>
                    <p>请注意，所有的JavaScript插件都依赖jQuery库。</p>
                
                </section>
                
                <!-- Contents
                ================================================== -->
                <section id="contents">
                    <!-- 类似于目录说明的东西 -->
                    <!-- 简介,目录列表说明, -->
                    <div class="page-header">
                        <h1>3.包含内容</h1>
                    </div>
                    <p>Bootstrap为各式各样的东西配备有HTML, CSS和JS, 但它们可以被概括成少数几个在<a href="/">Bootstrap 文档</a> 顶部可见的类别.</p>
                    <h2>文档章节</h2>
                    <h4><a href="scaffolding.html">框架</a></h4>
                    <p>全局性的样式文件，用于重置背景、链接样式、栅格系统等，并包含两个简单的布局结构。</p>
                    <h4><a href="base-css.html">基本CSS样式</a></h4>
                    <p>常见的HTML元素, 如排版, 代码, 表格, 表单, 和按钮等样式. 还包括<a href="http://glyphicons.com">Glyphicons</a> , 一个伟大的小图标集.</p>
                    <h4><a href="components.html">组件</a></h4>
                    <p>常见界面组件, 如标签和圆角, 导航, 警示, 页面标题等基本样式.</p>
                    <h4><a href="javascript.html">JavaScript插件</a></h4>
                    <p>和组件类似，这些Javascript插件用来实现提示(tooltip)、弹出框(popover)、模态对话框(modal)等具有交互性的组件。</p>
                    
                    
                    <h2>组件列表</h2>
                    <p><strong>组件库</strong> 和 <strong>JavaScript插件集</strong> 一同提供了以下组件元素。</p>
                    <ul>
                        <li>按钮组 / Button groups</li>
                        <li>按钮下拉菜单 / Button dropdowns</li>
                        <li>导航, 标签, 圆角, 和 列表 / Navigational tabs, pills, and lists</li>
                        <li>导航条 / Navbar</li>
                        <li>标签 / Labels</li>
                        <li>标记 / Badges</li>
                        <li>排版组件和主角单元 / Page headers and hero unit</li>
                        <li>缩略图 / Thumbnails </li>
                        <li>警告对话框 / Alerts</li>
                        <li>进度条 / Progress bars</li>
                        <li>对话框 / Modals</li>
                        <li>下拉菜单 / Dropdowns</li>
                        <li>工具提示 / Tooltips</li>
                        <li>弹出提示 / Popovers</li>
                        <li>折叠 / Accordion</li>
                        <li>轮播 / Carousel</li>
                        <li>输入提醒 / Typeahead</li>
                    </ul>
                    <p>在未来的指南中, 我们可以慢慢的通过这些组件分别介绍更多的细节. 在此之前, 文档的每条信息都是关于如何使用并定制它们.</p>
                </section>
                
                <!-- HTML template
                ================================================== -->
                <section id="html-template">
                    <div class="page-header">
                        <h1>4. HTML 模板</h1>
                    </div>
                    <p class="lead">一个简短的介绍插入到内容的方式, 我们可以专注于投入对Bootstrap的使用. 要做到这一点, 我们将利用一个基本的HTML模板, 其中包括我们所提到的<a class="#file-structure">文件结构</a>.</p>
                    <p>现在, 这里是一个<strong>典型的HTML文件</strong> :</p>
                    <pre class="prettyprint linenums">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;Bootstrap 101 Template&lt;/title&gt;
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;Hello, world!&lt;/h1&gt;
    &lt;script src="http://code.jquery.com/jquery.js"&gt;&lt;/script&gt;
  &lt;/body&gt;
&lt;/html&gt;
                    </pre>
                    <p>为了使其成为一个<strong>Bootstrap模板</strong> , 只需包含相应的 CSS and JS 文件:</p>
                    <pre class="prettyprint linenums">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
  &lt;head&gt;
    &lt;title&gt;Bootstrap 101 Template&lt;/title&gt;
    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;
    &lt;!-- Bootstrap --&gt;
    &lt;link href="css/bootstrap.min.css" rel="stylesheet" media="screen"&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;h1&gt;Hello, world!&lt;/h1&gt;
    &lt;script src="http://code.jquery.com/jquery.js"&gt;&lt;/script&gt;
    &lt;script src="js/bootstrap.min.js"&gt;&lt;/script&gt;
  &lt;/body&gt;
&lt;/html&gt;
                    </pre>
                    <p><strong>设置成功!</strong>  加入这两个文件, 你就可以通过Bootstrap开始开发任何网站和应用程序了.</p>
                </section>
                
                <!-- Examples
                ================================================== -->
                <section id="examples">
                    <div class="page-header">
                        <h1>5.例子</h1>
                    </div>
                    <p class="lead">以下几个布局示例的基础模板. 鼓励使用者对这些例子进行扩展开发, 而不是简单的把它们作为最终结果来使用.</p>
                    <!-- 定义一组小块的内容 -->
                    <!-- 定义个3X3大小的案例列表 -->
                    <!-- 3*3 -->
                    <ul class="thumbnails bootstrap-examples">
                        <li class="span3">
                            <!-- 图+名称+介绍 -->
                            <a class="thumbnail" href="examples/starter-template.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-starter.png">
                            </a>
                            <h4>入门模板</h4>
                            <p>一个包含Bootstrap CSS和JavaScript的精简HTML文件.</p>
                        </li>
                        <li class="span3">
                            <a class="thumbnail" href="examples/hero.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-marketing.png">
                            </a>
                            <h4>固定布局模式</h4>
                            <p>拥有一个hero单元的主要消息框和三个支撑元素(supporting elements).</p>
                        </li>
                        <li class="span3">
                            <a class="thumbnail" href="examples/fluid.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-fluid.png">
                            </a>
                            <h4>流动布局</h4>
                            <p>使用我们最新的响应式设计元素, 通过流式网格(栅格)系统建立一个无缝的液态布局.</p>
                        </li>
                        
                        <li class="span3">
                            <a class="thumbnail" href="examples/marketing-narrow.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-marketing-narrow.png">
                            </a>
                            <h4>窄屏模式</h4>
                            <p>对于小项目或团队的简单、轻量级的窄屏传统普通模式.</p>
                        </li>
                        <!-- 2.3.1加入 -->
                        <li class="span3">
              <a class="thumbnail" href="examples/justified-nav.html">
                <img src="assets/img/examples/bootstrap-example-justified-nav.png" alt="">
              </a>
              <h4>合理导航</h4>
              <p>带有一个等宽导航的营销类页面.</p>
            </li>
            <!-- /2.3.1加入 -->
                        <li class="span3">
                            <a class="thumbnail" href="examples/signin.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-signin.png">
                            </a>
                            <h4>登录</h4>
                            <p>一个自定义的准登录框, 较大的表单控件和灵活的布局.</p>
                        </li>
                        <li class="span3">
                            <a class="thumbnail" href="examples/sticky-footer.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-sticky-footer.png">
                            </a>
                            <h4>粘页脚(Sticky footer)</h4>
                            <p>固定高度的页脚紧贴页面底部.</p>
                        </li>
                        
                                                
                        <li class="span3">
                            <a class="thumbnail" href="examples/carousel.html">
                                <img class="listimg" src="assets/img/examples/bootstrap-example-carousel.png">
                            </a>
                            <h4>大屏幕轮播Banner</h4>
                            <p>一个具交互、突出轮播的基本网格网站.</p>
                        </li>
                        <!-- 一行三个,中文下,有错位的情况,可以多加几个强行列成一行 -->
                        <li class="span3"></li>
                        <li class="span3"></li>

                        

                    </ul>
                </section>
                
                <!-- Next
                ================================================== -->
                <section id="what-next">
                    <div class="page-header">
                    <h1>接下来?</h1>
                    <p class="lead">查看文档顶部的分类, 例子和代码片段, 或自定义Bootstrap为你即将开展的项目做一次彻底改变.</p>
                    <!-- 按钮UI定义逻辑:类型 尺寸(大小) 特别注明-->
                    <a class="btn btn-large btn-primary" href="./scaffolding.html" >查看Bootstrap文档</a>
                    <a class="btn btn-large" href="./customize.html" style="margin-left: 5px;">自定义Bootstrap</a>
                    </div>
                </section>
                
                
            </div>
        </div>
    </div>



    



<!-- Footer
    ================================================== --> 
<!-- 自定义footer css -->
<!-- 这个地方是为了兼容加了个bs-docs-social 官网是没有的. -->
<!--[if lte IE 9]>
<div class="bs-docs-social">
<![endif]-->
<footer class="footer"> 
  <!-- 内置块css定义 -->
  <div class="container"> 
    <!-- 一行一排 -->
    <p>由 <a href="http://twitter.com/mdo" target="_blank">@mdo</a> 和 <a href="http://twitter.com/fat" target="_blank">@fat</a> 倾心制作开发,由KingHack学习并注解</p>
    <p>开源依照 <a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License v2.0</a>, 文档依照 <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
    <p>Icons取自<a href="http://glyphicons.com">Glyphicons Free</a> ,授权依照 <a href="http://creativecommons.org/licenses/by/3.0/">CC BY 3.0</a>.</p>
    <!-- 尾部链接 -->
    <ul class="footer-links">
      <li><a href="http://blog.getbootstrap.com">博客</a></li>
      <li class="muted">&middot;</li>
      <li><a href="https://github.com/twitter/bootstrap/issues?state=open">问题反馈</a></li>
      <!-- 使用内置标准点分割 -->
      <li class="muted">&middot;</li>
      <li><a href="https://github.com/twitter/bootstrap/blob/master/CHANGELOG.md">路线图与更新日志</a></li>
      <!--[if lte IE 9]>
      
      <p>不完全支持Internet Explorer,请在360安全浏览器或者是金山猎豹浏览的极速模式中浏览</p>
      <![endif]-->
    </ul>
    <!-- 站点统计 -->
    <ul class="footer-links">
        <li>
        <script src="http://s85.cnzz.com/stat.php?id=5087997&web_id=5087997" language="JavaScript"></script><script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fc4072883e95238b57459bb092d361d75' type='text/javascript'%3E%3C/script%3E"));
</script>

        </li>
    </ul>
  </div>
</footer>
<!--[if lte IE 9]>
</div>
<![endif]-->



<!-- js载入这部分与官网不同 --> 
<!--注意js有调用先后的顺序--> 
<!--以下为jQuery调用相关--> 

<!-- 以下方式均为严格语法格式,与官方不同 --> 
<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<!-- 请严格确保加载都在确定位置 --> 
<!-- bootstrap/2.2.2 默认配合的是jquery1.81 但和jquery官网的版本有点区别.需要特别注意 --> 
<!-- 只载入一个统一文件,避免多次载入浪费时间 --> 
<script language="javascript" type="text/javascript" src="bootstrap/jquery-3.2.1.js"></script> 
<script language="javascript" type="text/javascript" src="bootstrap/js/bootstrap.js"></script> 

<!--[if lte IE 7]>
    <script language="javascript" type="text/javascript" src="bootstrap/2.2.1/js/bootstrap-ie.js"></script>
    <![endif]--> 

<!-- 占位符img第三方插件 --> 
<script language="javascript" type="text/javascript" src="assets/js/holder/holder.js"></script> 
<!-- 引用google的js语法高亮插件与css文件配对 --> 
<script language="javascript" type="text/javascript" src="assets/js/google-code-prettify/prettify.js"></script> 

<!-- 浏览器版本判断插件 --> 
<!-- 一般同名函数会默认加载最后一个引用 --> 
<script language="javascript" type="text/javascript" src="assets/js/application.js"></script>    


</body>
</html>