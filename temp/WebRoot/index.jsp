<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" class="no-js">
<head>
<%@include file="/public/head.jspf"%>
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
      <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <!-- 定义品牌链接导航 --> 
      <!-- 不知道为什么这么定义 --> 
      <a class="brand" href="./index.html">Bootstrap</a> 
      <!-- 定义了个响应触发点 -->
      <div class="nav-collapse collapse"> 
        <!-- 定义导航列表 -->
        <ul class="nav">
          <!-- 首页链接高亮 -->
          <li class=""> <a href="./index.html">首页</a> </li>
          <!-- 一个导航分类一个li -->
          <li class=""> <a href="./getting-started.html">入门</a> </li>
          <li class=""> <a href="./scaffolding.html">框架</a> </li>
          <li class=""> <a href="./base-css.html">基本CSS样式</a> </li>
          <li class="active"> <a href="./components.html">组件</a> </li>
          <li class=""> <a href="./javascript.html">JavaScript插件</a> </li>
          <li class=""> <a href="./customize.html">定制</a> </li>
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
    <h1>组件</h1>
    <p class="lead">Bootstrap内置几十种高可用的组件，以实现导航栏，通知，弹出框等功能。</p>
  </div>
</header>

<!-- 具体内容块 -->
<div class="container"> 
    <!-- Docs nav 文档导航
     ================================================== -->
     <!-- 由于的固定大小文档,因此没有加row-fluid -->
     <!-- 位置3/9分 -->
     <div class="row">
        <div class="span3 bs-docs-sidebar">
            <ul class="nav nav-list bs-docs-sidenav">
                <li><a href="#dropdowns"><i class="icon-chevron-right"></i> 下拉菜单</a></li>
                <li><a href="#buttonGroups"><i class="icon-chevron-right"></i> 按钮组</a></li>
                <li><a href="#buttonDropdowns"><i class="icon-chevron-right"></i> 按钮下拉菜单</a></li>
                <li><a href="#navs"><i class="icon-chevron-right"></i> 导航</a></li>
                <li><a href="#navbar"><i class="icon-chevron-right"></i> 导航条</a></li>
                <li><a href="#breadcrumbs"><i class="icon-chevron-right"></i> 面包屑(路径式)导航</a></li>
                <li><a href="#pagination"><i class="icon-chevron-right"></i> 分页</a></li>
                <li><a href="#labels-badges"><i class="icon-chevron-right"></i> 标签和标记</a></li>
                <li><a href="#typography"><i class="icon-chevron-right"></i> 排版</a></li>
                <li><a href="#thumbnails"><i class="icon-chevron-right"></i> 缩略项</a></li>
                <li><a href="#alerts"><i class="icon-chevron-right"></i> 警告对话框</a></li>
                <li><a href="#progress"><i class="icon-chevron-right"></i> 进度条</a></li>
                <li><a href="#media"><i class="icon-chevron-right"></i> 媒体对象</a></li>
                <li><a href="#misc"><i class="icon-chevron-right"></i> 杂项</a></li>
            </ul>
        </div>
        
        
        <div class="span9">
        
        <!-- Dropdowns
         ================================================== -->
         <section id="dropdowns">
            <div class="page-header">
                <h1>下拉菜单</h1>
            </div>
            
            <h2>例子</h2>
                <p>可切换的链接列表. 互动式的下拉菜单需要<a href="./javascript.html#dropdowns">dropdown JavaScript 插件</a>.</p>
                <div class="bs-docs-example">
                    <div class="dropdown clearfix">
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static; margin-bottom: 5px; *width: 180px;">
                            <li><a tabindex="-1" href="#">行为</a></li>
                            <li><a tabindex="-1" href="#">其它行为</a></li>
                            <li><a tabindex="-1" href="#">特别行为</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="#">分割链接</a></li>
                        </ul>
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu"&gt;
  &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;行为&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;其它行为&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;特别行为&lt;/a&gt;&lt;/li&gt;
  &lt;li class="divider"&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;分割链接&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</pre>
            <h2>用法</h2>
                <p>以下是下拉菜单所需的HTML. 下拉菜单的触发和下拉菜单都需要包含在<code>.dropdown</code>里, 或者声明 <code>position: relative;</code>; 其他元素. 然后, 只需创建菜单.</p>
                <pre class="prettyprint linenums">
&lt;div class="dropdown"&gt;
  &lt;!-- Link or button to toggle dropdown --&gt;
  &lt;ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"&gt;
    &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;行为&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;其它行为&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;特别行为&lt;/a&gt;&lt;/li&gt;
    &lt;li class="divider"&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;分割链接&lt;/a&gt;&lt;/li&gt;
  &lt;/ul&gt;
&lt;/div&gt;
</pre>

            <h2>选项</h2>
                <p>列表右对齐, 和包括一个多级的下拉菜单.</p>
                
                <h3>对齐</h3>
                    <p>在 <code>.dropdown-menu</code> 添加 <code>.pull-right</code> , 让下拉列表右对齐.</p>
                    <pre class="prettyprint linenums">
&lt;ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dLabel"&gt;
  ...
&lt;/ul&gt;
</pre>
                <h3>禁用菜单选项</h3>
                    <p>在下拉菜单<code>&lt;li&gt;</code>添加<code>.disabled</code>来禁用链接.</p>
                    <div class="bs-docs-example">
                        
                        <div class="dropdown clearfix">
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static; margin-bottom: 5px; *width: 180px;">
                <li><a tabindex="-1" href="#">注册</a></li>
                <li class="disabled"><a tabindex="-1" href="#">修改</a></li>
                <li><a tabindex="-1" href="#">退出</a></li>
              </ul>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu"&gt;
  &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;注册&lt;/a&gt;&lt;/li&gt;
  &lt;li class="disabled"&gt;&lt;a tabindex="-1" href="#"&gt;修改&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a tabindex="-1" href="#"&gt;退出&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</pre>
                
                <h3>下拉菜单的子列表</h3>
                    <p>添加一些简单的标记, 让下拉菜单拥有一个二级菜单, 停选效果类似OS X. 在任意的 li 添加 <code>.dropdown-submenu</code> 就会自动获得一个额外的菜单.</p>
                    <div class="bs-docs-example bs-docs-example-submenus">
                    
                    
                        <div class="pull-left">
                            <p class="muted">默认</p>
                            <div class="dropdown clearfix">
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="#">行为</a></li>
                                    <li><a tabindex="-1" href="#">其它行为</a></li>
                                    <li><a tabindex="-1" href="#">特别行为</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-submenu">
                                        <a tabindex="-1" href="#">更多选项</a>
                                        <ul class="dropdown-menu">
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        <div class="pull-left">
                            <p class="muted">向上显示</p>
                            <!-- 差别在这 -->
                            <div class="dropup">
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="#">行为</a></li>
                                    <li><a tabindex="-1" href="#">其它行为</a></li>
                                    <li><a tabindex="-1" href="#">特别行为</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-submenu">
                                        <a tabindex="-1" href="#">更多选项</a>
                                        <ul class="dropdown-menu">
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                        
                        <div class="pull-left">
                            <p class="muted">左边显示</p>
                            <!-- 差别在这 -->
                            <div class="dropdown">
                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
                                    <li><a tabindex="-1" href="#">行为</a></li>
                                    <li><a tabindex="-1" href="#">其它行为</a></li>
                                    <li><a tabindex="-1" href="#">特别行为</a></li>
                                    <li class="divider"></li>
                                    <li class="dropdown-submenu">
                                        <a tabindex="-1" href="#">更多选项</a>
                                        <ul class="dropdown-menu">
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                            <li><a tabindex="-1" href="#">二级链接</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"&gt;
  ...
  &lt;li class="dropdown-submenu"&gt;
    &lt;a tabindex="-1" href="#"&gt;More options&lt;/a&gt;
    &lt;ul class="dropdown-menu"&gt;
      ...
    &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;
</pre>
         </section>
        
        
        <!-- Button Groups
        ================================================== -->
        <section id="buttonGroups">
            <div class="page-header">
                <h1>按钮组</h1>
            </div>
            
            <h2>例子</h2>
                <p>两个基本选项, 带有两个更明确的变化.</p>
                <h3>单一按钮组</h3>
                    <p>带有 <code>.btn</code> 的按钮, 都放在 <code>.btn-group</code> 里面.</p>
                    <div class="bs-docs-example">
                        <div class="btn-group" style="margin: 9px 0 5px;">
                            <button class="btn">左</button>
                            <button class="btn">中</button>
                            <button class="btn">右</button>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="btn-group"&gt;
  &lt;button class="btn"&gt;左&lt;/button&gt;
  &lt;button class="btn"&gt;中&lt;/button&gt;
  &lt;button class="btn"&gt;右&lt;/button&gt;
&lt;/div&gt;
</pre>
                <h3>多个按钮组组合成工具条</h3>
                    <p>集合几组 <code>&lt;div class="btn-group"&gt;</code> ，再用 <code>&lt;div class="btn-toolbar"&gt;</code> 包装就可以合成工具条组件。</p>
                    <div class="bs-docs-example">
                        <div class="btn-toolbar" style="margin: 0;">
                            <div class="btn-group">
                                <button class="btn">1</button>
                                <button class="btn">2</button>
                                <button class="btn">3</button>
                                <button class="btn">4</button>                            
                            </div>
                            
                            <div class="btn-group">
                                <button class="btn">5</button>
                                <button class="btn">6</button>
                                <button class="btn">7</button>
                                                     
                            </div>
                            
                            <div class="btn-group">
                                <button class="btn">8</button>
                                                          
                            </div>
                            
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="btn-toolbar"&gt;
  &lt;div class="btn-group"&gt;
    ...
  &lt;/div&gt;
&lt;/div&gt;
</pre>
                <h3>垂直按钮组</h3>
                    <p>让一组按钮垂直摆放</p>
                    <div class="bs-docs-example">
                        <div class="btn-group btn-group-vertical">
                            <button type="button" class="btn"><i class="icon-align-left"></i></button>
                            <button type="button" class="btn"><i class="icon-align-center"></i></button>
                            <button type="button" class="btn"><i class="icon-align-right"></i></button>
                            <button type="button" class="btn"><i class="icon-align-justify"></i></button>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="btn-group btn-group-vertical"&gt;
  ...
&lt;/div&gt;
</pre>
                
                <hr class="bs-docs-separator"/>
                <h4>复选框和单选框形式</h4>
                    <p>按钮组也可实现单选和复选功能。前者只有一个按钮被按下，后者可以按下多个按钮。详见<a href="./javascript.html#buttons">JavaScript插件</a> 。</p>
                <h4>在按钮组的下拉菜单</h4>
                    <p><span class="label label-info">注意!</span> 为了渲染正常，带下拉项的按钮应该被 <code>.btn-group</code>  嵌套，然后再放入 <code>.btn-toolbar</code> 内。</p>
                
                
            
        </section>
        
        
        <!-- Split button dropdowns
        ================================================== -->
        <section id="buttonDropdowns">
            <div class="page-header">
               <h1>按钮式下拉菜单</h1> 
            </div>
            
            <h2>简介和例子</h2>
                <p>通过将其放在 <code>.btn-group</code> 并添加一些下拉菜单的标记, 让点击按钮生产一个下拉菜单.</p>
                <div class="bs-docs-example">
                    <div class="btn-toolbar" style="margin: 0;">
                        <div class="btn-group">
                            <button class="btn dropdown-toggle" data-toggle="dropdown">行为 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">行为 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">危险 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-warning dropdown-toggle" data-toggle="dropdown">警告 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-success dropdown-toggle" data-toggle="dropdown">成功 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-info dropdown-toggle" data-toggle="dropdown">信息 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-inverse dropdown-toggle" data-toggle="dropdown">反向 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                    
                    
                    </div><!-- /btn-toolbar -->
                </div>
                <pre class="prettyprint linenums">
&lt;div class="btn-group"&gt;
  &lt;a class="btn dropdown-toggle" data-toggle="dropdown" href="#"&gt;
    Action
    &lt;span class="caret"&gt;&lt;/span&gt;
  &lt;/a&gt;
  &lt;ul class="dropdown-menu"&gt;
    &lt;!-- dropdown menu links --&gt;
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                <h3>适应所有按钮的尺寸</h3>
                    <p>下拉按钮适应任何尺寸，可以是 <code>.btn-large</code>, <code>.btn-small</code>, 或 <code>.btn-mini</code> 。</p>
                    <div class="bs-docs-example">
                        <div class="btn-toolbar" style="margin: 0;">
                        
                        <div class="btn-group">
                            <button class="btn btn-large dropdown-toggle" data-toggle="dropdown">大号按钮 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-small dropdown-toggle" data-toggle="dropdown">小号按钮 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown">迷你按钮 <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        
                        </div><!-- /btn-toolbar -->
                    </div>
                <h3>需要Javascript</h3>
                    <p>下拉按钮需要 <a href="./javascript.html#dropdowns">Bootstrap 下拉插件</a> 实现功能。</p>
                    <p>在某些情况下（诸如使用手机浏览），下拉菜单会超出可视区域。这时要么手动对齐，要么使用定制的javascript。</p>
            
            <hr class="bs-docs-separator"/>
            <h2>带间隔的下拉按钮</h2>
                <p>在按钮组的样式和标记的基础上，我们可以很方便的创建带间隔的下拉按钮。间隔左侧是按钮，右侧是下拉链接。</p>
                <div class="bs-docs-example">
                    <div class="btn-toolbar" style="margin: 0;">
                        
                        <div class="btn-group">
                            <button class="btn">动作</button>
                            <button class="btn dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        
                        <div class="btn-group">
                            <button class="btn btn-primary">动作</button>
                            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        
                        <div class="btn-group">
                            <button class="btn btn-danger">危险</button>
                            <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-warning">警告</button>
                            <button class="btn btn-warning dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-success">成功</button>
                            <button class="btn btn-success dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-info">信息</button>
                            <button class="btn btn-info dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        <div class="btn-group">
                            <button class="btn btn-inverse">反向</button>
                            <button class="btn btn-inverse dropdown-toggle" data-toggle="dropdown"> <span class="caret"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">动作</a></li>
                                <li><a href="#">其他动作</a></li>
                                <li><a href="#">其他</a></li>
                                <li class="divider"></li>
                                <li><a href="#">被间隔的链接</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        
                        
                    </div><!-- /btn-toolbar -->
                </div>
                <pre class="prettyprint linenums">
&lt;div class="btn-group"&gt;
  &lt;button class="btn"&gt;Action&lt;/button&gt;
  &lt;button class="btn dropdown-toggle" data-toggle="dropdown"&gt;
    &lt;span class="caret"&gt;&lt;/span&gt;
  &lt;/button&gt;
  &lt;ul class="dropdown-menu"&gt;
    &lt;!-- dropdown menu links --&gt;
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                <h3>尺寸</h3>
                    <p>使用 <code>.btn-mini</code>, <code>.btn-small</code>, 或 <code>.btn-large</code> 指定大小。</p>
                    <div class="bs-docs-example">
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <button class="btn btn-large">大号按钮</button>
                                <button class="btn btn-large dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其他动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                        
                        </div><!-- /btn-toolbar -->
                        
                        
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <button class="btn btn-small">小号按钮</button>
                                <button class="btn btn-small dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其他动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                        
                        </div><!-- /btn-toolbar -->
                        
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <button class="btn btn-mini">迷你按钮</button>
                                <button class="btn btn-mini dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其他动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                        
                        </div><!-- /btn-toolbar -->
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="btn-group"&gt;
  &lt;button class="btn btn-mini"&gt;Action&lt;/button&gt;
  &lt;button class="btn btn-mini dropdown-toggle" data-toggle="dropdown"&gt;
    &lt;span class="caret"&gt;&lt;/span&gt;
  &lt;/button&gt;
  &lt;ul class="dropdown-menu"&gt;
    &lt;!-- dropdown menu links --&gt;
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                <h3>上弹菜单</h3>
                    <p>下拉菜单也可以变成上弹菜单，只要在 <code>.dropdown-menu</code> 最近的父标签上应用 <code>.dropup</code> 即可。它会改变 <code>.caret</code> 的箭头方向，并将菜单底部与按钮顶部对齐。</p>
                    <div class="bs-docs-example">
                        <div class="btn-toolbar" style="margin: 0;">
                            <div class="btn-group dropup">
                                <button class="btn">上弹按钮</button>
                                <button class="btn dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其他动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                        
                        
                        
                            <div class="btn-group dropup">
                                <button class="btn primary">上弹按钮(右对齐)</button>
                                <button class="btn primary dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其他动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </div><!-- /btn-group -->
                        </div><!-- /btn-toolbar -->
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="btn-group dropup"&gt;
  &lt;button class="btn"&gt;Dropup&lt;/button&gt;
  &lt;button class="btn dropdown-toggle" data-toggle="dropdown"&gt;
    &lt;span class="caret"&gt;&lt;/span&gt;
  &lt;/button&gt;
  &lt;ul class="dropdown-menu"&gt;
    &lt;!-- dropdown menu links --&gt;
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
            
        </section>
        
        
        <!-- Nav, Tabs, & Pills
        ================================================== -->
        <section id="navs">
            <div class="page-header">
                <h1>导航: 标签, 圆角, 和 列表</h1>
            </div>
            
            <h2>轻巧的默认项 <small>同样的标记，不同的类</small></h2>
                <p>所有的导航组件都在这里, 包括标签, 圆角, 列表, 通过<code>.nav</code>属性<strong>共享相同的标记和样式</strong>.</p>
                <h3>基本的标签页</h3>
                    <p>对存放链接的 <code>&lt;ul&gt;</code> 应用 <code>.nav-tabs</code> ：</p>
                    <div class="bs-docs-example">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#">首页</a></li>
                            <li><a href="#">简介</a></li>
                            <li><a href="#">信息</a></li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-tabs"&gt;
  &lt;li class="active"&gt;
    &lt;a href="#"&gt;首页&lt;/a&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;...&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;...&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</pre>
                <h3>基本圆角标签页</h3>
                    <p>HTML不变，使用 <code>.nav-pills</code> ：</p>
                    <div class="bs-docs-example">
                        <ul class="nav nav-pills">
                            <li class="active"><a href="#">首页</a></li>
                            <li><a href="#">简介</a></li>
                            <li><a href="#">信息</a></li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-pills"&gt;
  &lt;li class="active"&gt;
    &lt;a href="#"&gt;Home&lt;/a&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;...&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;...&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</pre>
                <h3>不可用状态</h3>
                    <p>在任何的导航组件(标签, 圆角或列表)添加 <code>.disabled</code>, <strong>链接将变成灰色</strong>, 且没有停悬效果. 但是链接仍然保持可点击, 除非删除了<code>href</code>属性. 或者你也可用JavaScript来防止点击.</p>
                    <div class="bs-docs-example">
                        <ul class="nav nav-pills">
                            <li><a href="#">可点击链接</a></li>
                            <li><a href="#">可点击链接</a></li>
                            <li class="disabled"><a href="#">不可点击链接</a></li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-pills"&gt;
  ...
  &lt;li class="disabled"&gt;&lt;a href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
            
                <h3>组件对齐方式</h3>
                    <p>使用 <code>.pull-left</code> 或 <code>.pull-right</code> 让导航链接对齐. 它们都是添加了CSS float来指定方向.</p>
                
                
            <hr class="bs-docs-separator"/>
            <h2>叠放式导航 <small>竖直排放标签和圆角链接</small></h2>
                <p>默认情况下标签和圆角链接是水平排放的，使用 <code>.nav-stacked</code> 就可以将其变成竖直叠放。</p>
                <h3>叠放式标签</h3>
                    <div class="bs-docs-example">
                        <ul class="nav nav-tabs nav-stacked">
                            <li class="active"><a href="#">首页</a></li>
                            <li><a href="#">简介</a></li>
                            <li><a href="#">信息</a></li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-tabs nav-stacked"&gt;
  ...
&lt;/ul&gt;
</pre>
                <h3>叠放式圆角链接</h3>
                    <div class="bs-docs-example">
                        <ul class="nav nav-pills nav-stacked">
                            <li class="active"><a href="#">首页</a></li>
                            <li><a href="#">简介</a></li>
                            <li><a href="#">信息</a></li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-pills nav-stacked"&gt;
  ...
&lt;/ul&gt;
</pre>
            
            <hr class="bs-docs-separator"/>
            <h2>下拉菜单 <small>改良的导航组件</small></h2>
                <p>添加下拉菜单需要添加一些额外的HTML代码和<a href="./javascript.html#dropdowns">下拉菜单的JavaScript插件</a>.</p>
                <h3>带下拉项的标签页</h3>
                    <div class="bs-docs-example">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#">首页</a></li>
                            <li><a href="#">帮助</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">下拉菜单 <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其它动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </li>
                            <li class="dropdown dropup">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">上弹菜单 <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其它动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-tabs"&gt;
  &lt;li class="dropdown"&gt;
    &lt;a class="dropdown-toggle"
       data-toggle="dropdown"
       href="#"&gt;
        Dropdown
        &lt;b class="caret"&gt;&lt;/b&gt;
      &lt;/a&gt;
    &lt;ul class="dropdown-menu"&gt;
      &lt;!-- links --&gt;
    &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;
</pre>
                <h3>带下拉的圆角链接</h3>
                    <div class="bs-docs-example">
                        <ul class="nav nav-pills">
                        <li class="active"><a href="#">首页</a></li>
                            <li><a href="#">帮助</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">下拉菜单 <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其它动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </li>
                            <li class="dropdown dropup">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">上弹菜单 <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">动作</a></li>
                                    <li><a href="#">其它动作</a></li>
                                    <li><a href="#">其他</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">被间隔的链接</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-pills"&gt;
  &lt;li class="dropdown"&gt;
    &lt;a class="dropdown-toggle"
       data-toggle="dropdown"
       href="#"&gt;
        Dropdown
        &lt;b class="caret"&gt;&lt;/b&gt;
      &lt;/a&gt;
    &lt;ul class="dropdown-menu"&gt;
      &lt;!-- links --&gt;
    &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;
</pre>
            
            <hr class="bs-docs-separator"/>
            <h2>导航列表 <small>构建简单的叠放式导航，适用于侧边栏</small></h2>
                <p>导航列表可以便捷地创建带有标头(可选)的导航链接组，非常适合用做侧边栏（与OS X中的Finder类似）。</p>
                <h3>导航列表例子</h3>
                    <p>对存放一组链接的列表使用 <code>class="nav nav-list"</code> :</p>
                    <div class="bs-docs-example">
                        <div class="well" style="max-width: 340px; padding: 8px 0;">
                            <ul class="nav nav-list">
                                <li class="nav-header">列表头</li>
                                <li class="active"><a href="#">首页</a></li>
                                <li><a href="#">库</a></li>
                                <li><a href="#">应用程序</a></li>
                                <li class="nav-header">其它列表头</li>
                                <li><a href="#">简介</a></li>
                                <li><a href="#">设置</a></li>
                                <li class="divider"></li>
                                <li><a href="#">帮助</a></li>
                            </ul>
                        </div><!-- /well -->
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-list"&gt;
  &lt;li class="nav-header"&gt;List header&lt;/li&gt;
  &lt;li class="active"&gt;&lt;a href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;Library&lt;/a&gt;&lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
                    <p>
                        <span class="label label-info">注意</span>
                        对于嵌入在导航列表的任何 <code>&lt;ul&gt;</code> 都需要添加 <code>class="nav nav-list"</code> .
                    </p>
                    
                <h3>水平分隔符</h3>
                    <p>添加一个水平分隔符, 只需在空列表项添加<code>.divider</code>, 像这样:</p>
                    <pre class="prettyprint linenums">
&lt;ul class="nav nav-list"&gt;
  ...
  &lt;li class="divider"&gt;&lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
            
            <hr class="bs-docs-separator"/>
            <h2>标签页切换导航 <small>通过javascript让标签生动起来</small></h2>
                <p>我们使用一个简单的插件切换标签页对应的内容，从而让标签页变得生动。 Bootstrap 提供了四种样式的标签页：置顶(默认)，居右，置底，居左。应用时只需修改很少的标记。</p>
                <h3>标签页切换的例子</h3>
                    <p>让标签可切换, 需在.tab-content里创建.tab-pane, 并对每个标签设置一个唯一的ID.</p>
                    <div class="bs-docs-example">
                        <div class="tabbable" style="margin-bottom: 18px;">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#tab1" data-toggle="tab">Section 1</a></li>
                                <li><a href="#tab2" data-toggle="tab">Section 2</a></li>
                                <li><a href="#tab3" data-toggle="tab">Section 3</a></li>
                            </ul>
                            
                            
                            <div class="tab-content" style="padding-bottom: 9px; border-bottom: 1px solid #ddd;">
                            <div class="tab-pane active" id="tab1">
                  <p>I'm in Section 1.</p>
                </div>
                <div class="tab-pane" id="tab2">
                  <p>Howdy, I'm in Section 2.</p>
                </div>
                <div class="tab-pane" id="tab3">
                  <p>What up girl, this is Section 3.</p>
                </div>
                           </div>
                        </div>
                        
                        
                        
                         <!-- /tabbable -->
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="tabbable"&gt; &lt;!-- Only required for left/right tabs --&gt;
  &lt;ul class="nav nav-tabs"&gt;
    &lt;li class="active"&gt;&lt;a href="#tab1" data-toggle="tab"&gt;Section 1&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#tab2" data-toggle="tab"&gt;Section 2&lt;/a&gt;&lt;/li&gt;
  &lt;/ul&gt;
  &lt;div class="tab-content"&gt;
    &lt;div class="tab-pane active" id="tab1"&gt;
      &lt;p&gt;I'm in Section 1.&lt;/p&gt;
    &lt;/div&gt;
    &lt;div class="tab-pane" id="tab2"&gt;
      &lt;p&gt;Howdy, I'm in Section 2.&lt;/p&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
                    <h4>淡入</h4>
                        <p>要让内容淡入, 需在每个<code>.tab-pane</code>添加<code>.fade</code> .</p>
                    <h4>需要jQuery插件</h4>
                        <p>所有可切换标签都采用了轻量级的jQuery插件. 在<a href="./javascript.html#tabs">JavaScript文档页面</a>了解更多如果创建可切换标签.</p>
                <h3>各个方向的标签</h3>
                    <h4>底部</h4>
                        <p>反转HTML的顺序，用 <code>.tabs-below</code> 将标签居底。</p>
                        <div class="bs-docs-example">
            <div class="tabbable tabs-below">
              <div class="tab-content">
                <div class="tab-pane active" id="A">
                  <p>I'm in Section A.</p>
                </div>
                <div class="tab-pane" id="B">
                  <p>Howdy, I'm in Section B.</p>
                </div>
                <div class="tab-pane" id="C">
                  <p>What up girl, this is Section C.</p>
                </div>
              </div>
              <ul class="nav nav-tabs">
                <li class="active"><a href="#A" data-toggle="tab">Section 1</a></li>
                <li><a href="#B" data-toggle="tab">Section 2</a></li>
                <li><a href="#C" data-toggle="tab">Section 3</a></li>
              </ul>
            </div> <!-- /tabbable -->
          </div>
<pre class="prettyprint linenums">
&lt;div class="tabbable tabs-below"&gt;
  &lt;div class="tab-content"&gt;
    ...
  &lt;/div&gt;
  &lt;ul class="nav nav-tabs"&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                    <h4>左边</h4>
                        <p>，用 <code>.tabs-left</code> 将标签居底。</p>
                        <div class="bs-docs-example">
            <div class="tabbable tabs-left">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#lA" data-toggle="tab">Section 1</a></li>
                <li><a href="#lB" data-toggle="tab">Section 2</a></li>
                <li><a href="#lC" data-toggle="tab">Section 3</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="lA">
                  <p>I'm in Section A.</p>
                </div>
                <div class="tab-pane" id="lB">
                  <p>Howdy, I'm in Section B.</p>
                </div>
                <div class="tab-pane" id="lC">
                  <p>What up girl, this is Section C.</p>
                </div>
              </div>
            </div> <!-- /tabbable -->
          </div>
<pre class="prettyprint linenums">
&lt;div class="tabbable tabs-left"&gt;
  &lt;ul class="nav nav-tabs"&gt;
    ...
  &lt;/ul&gt;
  &lt;div class="tab-content"&gt;
    ...
  &lt;/div&gt;
&lt;/div&gt;
</pre>
                    <h4>右边</h4>
                        <p>使用 <code>.tabs-right</code> 将标签居右。</p>
                        <div class="bs-docs-example">
            <div class="tabbable tabs-right">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#rA" data-toggle="tab">Section 1</a></li>
                <li><a href="#rB" data-toggle="tab">Section 2</a></li>
                <li><a href="#rC" data-toggle="tab">Section 3</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="rA">
                  <p>I'm in Section A.</p>
                </div>
                <div class="tab-pane" id="rB">
                  <p>Howdy, I'm in Section B.</p>
                </div>
                <div class="tab-pane" id="rC">
                  <p>What up girl, this is Section C.</p>
                </div>
              </div>
            </div> <!-- /tabbable -->
          </div>
<pre class="prettyprint linenums">
&lt;div class="tabbable tabs-right"&gt;
  &lt;ul class="nav nav-tabs"&gt;
    ...
  &lt;/ul&gt;
  &lt;div class="tab-content"&gt;
    ...
  &lt;/div&gt;
&lt;/div&gt;
</pre>
        </section>
        
        
        <!-- Navbar
        ================================================== -->
        <section id="navbar">
            <div class="page-header">
                <h1>导航条</h1>
            </div>
            
            <h2>基本导航条</h2>
                <p>导航条是静态的(未固定在顶部), 并包括项目名词和一些导航该有的功能. 将导航条放在任意一个 <code>.container</code>, 其宽度是与网站内容相同.</p>
                <div class="bs-docs-example">
                    <div class="navbar">
                        <div class="navbar-inner">
                            <a class="brand" href="#">标题</a>
                            <ul class="nav">
                                <li class="active"><a href="#">首页</a></li>
                                <li><a href="#">链接</a></li>
                                <li><a href="#">链接</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="navbar"&gt;
  &lt;div class="navbar-inner"&gt;
    &lt;a class="brand" href="#"&gt;Title&lt;/a&gt;
    &lt;ul class="nav"&gt;
      &lt;li class="active"&gt;&lt;a href="#"&gt;Home&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;Link&lt;/a&gt;&lt;/li&gt;
      &lt;li&gt;&lt;a href="#"&gt;Link&lt;/a&gt;&lt;/li&gt;
    &lt;/ul&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
            
            <hr class="bs-docs-separator"/>
            <h2>导航条组件</h2>
                <h3>仅标题</h3>
                    <p>用于展示品牌或项目名称的一个简单链接，只需要一个锚标签。</p>
                    <div class="bs-docs-example">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <a class="brand" href="#">标题</a>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;a class="brand" href="#"&gt;项目名称&lt;/a&gt;
</pre>
                <h3>导航链接</h3>
                    <p>可以简单的往导航添加列表.</p>
                    <div class="bs-docs-example">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <ul class="nav">
                                    <li class="active"><a href="#">首页</a></li>
                                    <li><a href="#">链接</a></li>
                                    <li><a href="#">链接</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav"&gt;
  &lt;li class="active"&gt;
    &lt;a href="#">Home&lt;/a&gt;
  &lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;Link&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;Link&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</pre>
                    <p>添加分隔符同样的简单, 只需在每个空白的列表项添加一个属性即可. 在每个链接间添加, 如下:</p>
                    <div class="bs-docs-example">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <ul class="nav">
                                    <li class="active"><a href="#">首页</a></li>
                                    <li class="divider-vertical"></li>
                                    <li><a href="#">链接</a></li>
                                    <li class="divider-vertical"></li>
                                    <li><a href="#">链接</a></li>
                                    <li class="divider-vertical"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;ul class="nav"&gt;
  ...
  &lt;li class="divider-vertical"&gt;&lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
                <h3>表单</h3>
                    <p>导航条内的表单, 用 <code>.navbar-form</code> 进行样式化,由 <code>.pull-left</code> 或 <code>.pull-right</code> 决定居左还是居右.</p>
                    <div class="bs-docs-example">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <form class="navbar-form pull-left">
                                    <input type="text" class="span2"/>
                                    <button type="submit" class="btn">提交</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;form class="navbar-form pull-left"&gt;
  &lt;input type="text" class="span2"&gt;
  &lt;button type="submit" class="btn"&gt;Submit&lt;/button&gt;
&lt;/form&gt;
</pre>
                <h3>搜索表单</h3>
                    <p>在导航条内, 对 <code>form</code> 添加 <code>.navbar-search</code> 并在输入框添加专门的一个属性 <code>.search-query</code>, 就可获得一个搜索表单.</p>
                    <div class="bs-docs-example">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <form class="navbar-search pull-left">
                                    <input type="text" class="search-query" placeholder="Search" />
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;form class="navbar-search pull-left"&gt;
  &lt;input type="text" class="search-query" placeholder="Search"&gt;
&lt;/form&gt;
</pre>
                <h3>对齐</h3>
                    <p>使用 <code>.pull-left</code> 或 <code>.pull-right</code> 对齐导航链接, 搜索表单或文本. 它们都是添加了CSS float来指定方向.</p>
                <h3>使用下拉菜单</h3>
                    <p>在导航添加下拉菜单只需要加入一点点标记和<a href="./javascript.html#dropdowns">下拉菜单JavaScript插件</a>.</p>
                    <pre class="prettyprint linenums">
&lt;ul class="nav"&gt;
  &lt;li class="dropdown"&gt;
    &lt;a href="#" class="dropdown-toggle" data-toggle="dropdown"&gt;
      Account
      &lt;b class="caret"&gt;&lt;/b&gt;
    &lt;/a&gt;
    &lt;ul class="dropdown-menu"&gt;
      ...
    &lt;/ul&gt;
  &lt;/li&gt;
&lt;/ul&gt;
</pre>
                    <p>查看更多<a href="./javascript.html#dropdowns">JavaScript下拉菜单文档</a>.</p>
                <h3>文本</h3>
                    <p>在 <code>.navbar-text</code> 下使用文本元素, 对于需要突出或设置颜色, 通常使用 <code>&lt;p&gt;</code> 标签.</p>
            <hr class="bs-docs-separator"/>
            <h2>可选的显示方法</h2>
                <p>在最外层div上应用,<code>.navbar</code>添加一个额外的属性, 就可以将导航条固定到顶部或是底部.</p>
                <h3>固定在顶部</h3>
                    <p>添加 <code>.navbar-fixed-top</code> 以及记得在<code>&lt;body&gt;</code>的顶部添加一个至少40px的<code>padding</code>. 确保是添加在Bootstrap核心CSS之后, 和响应式CSS(可选的)之前.</p>
                    <div class="bs-docs-example bs-navbar-top-example">
                        <div class="navbar navbar-fixed-top" style="position: absolute;">
                            <div class="container" style="width: auto; padding: 0 20px;">
                                <a class="brand" href="#">标题</a>
                                
                                <ul class="nav">
                                    <li class="active"><a href="#">首页</a></li>
                                    <li><a href="#">链接</a></li>
                                    <li><a href="#">链接</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="navbar navbar-fixed-top"&gt;
  ...
&lt;/div&gt;
</pre>
                <h3>固定在底部</h3>
                    <p>添加 <code>.navbar-fixed-bottom</code> .</p>
                    <div class="bs-docs-example bs-navbar-bottom-example">
                        <div class="navbar navbar-fixed-bottom" style="position: absolute;">
                            <div class="navbar-inner">
                                <div class="container" style="width: auto; padding: 0 20px;">
                                    <a class="brand" href="#">标题</a>
                                    <ul class="nav">
                                        <li class="active"><a href="#">首页</a></li>
                                        <li><a href="#">链接</a></li>
                                        <li><a href="#">链接</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="navbar navbar-fixed-bottom"&gt;
  ...
&lt;/div&gt;
</pre>
                <h3>顶部静态导航条</h3>
                    <p>通过添加 <code>.navbar-static-top</code> 创建一个全宽(full-width)的导航条. 这不像<code>.navbar-fixed-top</code>, 因为你不需要在<code>body</code>改动任何padding.</p>
                    <div class="bs-docs-example bs-navbar-top-example">
                        <div class="navbar navbar-static-top" style="margin: -1px -1px 0;">
                            <div class="navbar-inner">
                                <div class="container" style="width: auto; padding: 0 20px;">
                                    <a class="brand" href="#">标题</a>
                                    <ul class="nav">
                                        <li class="active"><a href="#">首页</a></li>
                                        <li><a href="#">链接</a></li>
                                        <li><a href="#">链接</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="navbar navbar-static-top"&gt;
  ...
&lt;/div&gt;
</pre>
            <hr class="bs-docs-separator"/>
            <h2>响应式导航条</h2>
                <p>要实现一个响应式导航条, 需要把导航条包含在div,<code>.nav-collapse.collapse</code>里面, 并添加一个触发展开导航(适用在屏幕较窄的设备)的按钮<code>.btn-navbar</code>.</p>
                <div class="bs-docs-example">
            <div class="navbar">
              <div class="navbar-inner">
                <div class="container">
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <a class="brand" href="#">标题</a>
                  <div class="nav-collapse collapse navbar-responsive-collapse">
                    <ul class="nav">
                      <li class="active"><a href="#">首页</a></li>
                      <li><a href="#">链接</a></li>
                      <li><a href="#">链接</a></li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">行为</a></li>
                          <li><a href="#">其它行为</a></li>
                          <li><a href="#">点击这</a></li>
                          <li class="divider"></li>
                          <li class="nav-header">导航头部</li>
                          <li><a href="#">Separated link</a></li>
                          <li><a href="#">One more separated link</a></li>
                        </ul>
                      </li>
                    </ul>
                    <form class="navbar-search pull-left" action="">
                      <input type="text" class="search-query span2" placeholder="Search">
                    </form>
                    <ul class="nav pull-right">
                      <li><a href="#">链接 </a></li>
                      <li class="divider-vertical"></li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">行为</a></li>
                          <li><a href="#">其它行为</a></li>
                          <li><a href="#">点击这</a></li>
                          <li class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                        </ul>
                      </li>
                    </ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div><!-- /navbar -->
          </div>
          <pre class="prettyprint linenums">
&lt;div class="navbar"&gt;
  &lt;div class="navbar-inner"&gt;
    &lt;div class="container"&gt;

      &lt;!-- .btn-navbar is used as the toggle for collapsed navbar content --&gt;
      &lt;a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"&gt;
        &lt;span class="icon-bar"&gt;&lt;/span&gt;
        &lt;span class="icon-bar"&gt;&lt;/span&gt;
        &lt;span class="icon-bar"&gt;&lt;/span&gt;
      &lt;/a&gt;

      &lt;!-- Be sure to leave the brand out there if you want it shown --&gt;
      &lt;a class="brand" href="#"&gt;Project name&lt;/a&gt;

      &lt;!-- Everything you want hidden at 940px or less, place within here --&gt;
      &lt;div class="nav-collapse collapse"&gt;
        &lt;!-- .nav, .navbar-search, .navbar-form, etc --&gt;
      &lt;/div&gt;

    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
            <div class="alert alert-info">
            <strong>注意!</strong>  响应式导航条需要 切换(<a href="./javascript.html#collapse">collapse)插件</a> 和 <a href="./scaffolding.html#responsive">Bootstrap响应式CSS文件</a>.
          </div>
            
            <hr class="bs-docs-separator"/>
            <h2>逆变化</h2>
            <p>需要变化导航条外观(变成黑色), 可添加<code>.navbar-inverse</code>.</p>
            <div class="bs-docs-example">
                 <div class="navbar navbar-inverse" style="position: static;">
                    <div class="navbar-inner">
                        <div class="container">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                            <a class="brand" href="#">标题</a>
                            <div class="nav-collapse collapse navbar-inverse-collapse">
                            <ul class="nav">
                                <li class="active"><a href="#">首页</a></li>
                                <li><a href="#">链接</a></li>
                                <li><a href="#">链接</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单 <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">动作</a></li>
                                        <li><a href="#">另一个动作</a></li>
                                        <li><a href="#">其它动作</a></li>
                                        <li class="divider"></li>
                                        <li class="nav-header">导航头</li>
                                        <li><a href="#">被间隔的链接</a></li>
                                        <li><a href="#">另一个链接</a></li>
                                    </ul>
                                </li>
                            </ul>
                            
                            
                            <form class="navbar-search pull-left" action="">
                                <input type="text" class="search-query span2" placeholder="Search"/>
                            </form>
                            
                            <ul class="nav pull-right">
                                <li><a href="#">链接</a></li>
                                <li class="divider-vertical"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单 <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">行为</a></li>
                                        <li><a href="#">另一个动作</a></li>
                                        <li><a href="#">其它动作</a></li>
                                        <li class="divider"></li>
                                        <li class="nav-header">导航头</li>
                                        <li><a href="#">被间隔的链接</a></li>
                                        
                                    </ul>
                                </li>
                            </ul>
                            
                            
                            </div><!-- /.nav-collapse -->
                  
                  
                        </div>
                    </div><!-- /navbar-inner -->
                 </div><!-- /navbar -->
            </div>
            <pre class="prettyprint linenums">
&lt;div class="navbar navbar-inverse"&gt;
  ...
&lt;/div&gt;
</pre>
        </section>
        
        
        <!-- Breadcrumbs
        ================================================== -->
        <section id="breadcrumbs">
            <div class="page-header">
                <h1>面包屑(路径式)导航 </h1>
            </div>
            
            <h2>例子</h2>
                <p>面包屑导航栏用于展示用户当前在网站/应用中的位置，但并不是首要导航。适宜布局清爽，简洁明了的场合。即查看某个页面, 可以需要跳转多个页面, 可使用路径式导航方便使用者返回.</p>
                <div class="bs-docs-example">
                    <ul class="breadcrumb">
                        <li class="active">首页</li>
                    </ul>
                    
                    <ul class="breadcrumb">
                        <li><a href="#">首页</a> <span class="divider">/</span></li>
                        <li class="active">库</li>
                    </ul>
                    
                    <ul class="breadcrumb" style="margin-bottom: 5px;">
                        <li><a href="#">首页</a> <span class="divider">/</span></li>
                        <li><a href="#">库</a> <span class="divider">/</span></li>
                        <li class="active">数据</li>
                    </ul>
                </div>
                <pre class="prettyprint linenums">
&lt;ul class="breadcrumb"&gt;
  &lt;li&gt;&lt;a href="#"&gt;Home&lt;/a&gt; &lt;span class="divider"&gt;/&lt;/span&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;Library&lt;/a&gt; &lt;span class="divider"&gt;/&lt;/span&gt;&lt;/li&gt;
  &lt;li class="active"&gt;Data&lt;/li&gt;
&lt;/ul&gt;
</pre>
            
        </section>
        
        <!-- Pagination
        ================================================== -->
        <section  id="pagination">
            <div class="page-header">
                <h1>分页 <small>供两种可选择内容分页</small></h1>
            </div>
            
            <h2>标准分页</h2>
                <p>受Rdio启发，我们设计了极为简致的页码样式，适用于应用和搜索结果。页码区域尺寸大，易于吸引注意力，易于扩展，易于点击。</p>
                <div class="bs-docs-example">
                    <div class="pagination">
                    <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="pagination"&gt;
  &lt;ul&gt;
    &lt;li&gt;&lt;a href="#"&gt;Prev&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#"&gt;1&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#"&gt;2&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#"&gt;3&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#"&gt;4&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#"&gt;5&lt;/a&gt;&lt;/li&gt;
    &lt;li&gt;&lt;a href="#"&gt;Next&lt;/a&gt;&lt;/li&gt;
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
            
            <hr class="bs-docs-separator" />
            <h2>选项</h2>
                <h3>不可用和当前状态</h3>
                    <p>Bootstrap使用一组样式类定制页码的状态，<code>.disabled</code> 用于不可点击链接，而 <code>.active</code> 用于表示当前页链接。</p>
                    <div class="bs-docs-example">
                        <div class="pagination pagination-centered">
                        <ul>
                <li class="disabled"><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
             </ul>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="pagination"&gt;
  &lt;ul&gt;
    &lt;li class="disabled"&gt;&lt;a href="#"&gt;&amp;laquo;&lt;/a&gt;&lt;/li&gt;
    &lt;li class="active"&gt;&lt;a href="#"&gt;1&lt;/a&gt;&lt;/li&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                    <p>也可以使用span标签替换a标签, 这样可以删除点击功能, 同时又保留了样式.</p>
                    <pre class="prettyprint linenums">
&lt;div class="pagination"&gt;
  &lt;ul&gt;
    &lt;li class="disabled"&gt;&lt;span&gt;&amp;laquo;&lt;/span&gt;&lt;/li&gt;
    &lt;li class="active"&gt;&lt;span&gt;1&lt;/span&gt;&lt;/li&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                <h3>大小</h3>
                    <p>想要更大或更小的分页? 添加<code>.pagination-large</code>, <code>.pagination-small</code>, 或 <code>.pagination-mini</code> 就可改变分页大小.</p>
                    <div class="bs-docs-example">
            <div class="pagination pagination-large">
              <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
            <div class="pagination">
              <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
             </ul>
            </div>
            <div class="pagination pagination-small">
              <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
            <div class="pagination pagination-mini">
              <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
          </div>
<pre class="prettyprint linenums">
&lt;div class="pagination pagination-large"&gt;
  &lt;ul&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
&lt;div class="pagination"&gt;
  &lt;ul&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
&lt;div class="pagination pagination-small"&gt;
  &lt;ul&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
&lt;div class="pagination pagination-mini"&gt;
  &lt;ul&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;
</pre>
                <h3>对齐</h3>
                    <p>使用 <code>.pagination-centered</code> 和 <code>.pagination-right</code> 可以改变页码的对齐方式，前者居中，后者居右。</p>
                    <div class="bs-docs-example">
            <div class="pagination pagination-centered">
              <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
             </ul>
            </div>
          </div>
<pre class="prettyprint linenums">
&lt;div class="pagination pagination-centered"&gt;
  ...
&lt;/div&gt;
</pre>
          <div class="bs-docs-example">
            <div class="pagination pagination-right">
              <ul>
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
              </ul>
            </div>
          </div>
<pre class="prettyprint linenums">
&lt;div class="pagination pagination-right"&gt;
  ...
&lt;/div&gt;
</pre>

            
            <hr class="bs-docs-separator" />
            <h2>翻页</h2>
                <p>用更少的标记和样式, 创建用于简单快速分页. 非常适用于简单的网站, 像博客或者杂志网站.</p>
                <h3>默认</h3>
                    <p>默认情况下, 翻页链接居中.</p>
                    <div class="bs-docs-example">
            <ul class="pager">
              <li><a href="#">上一页</a></li>
              <li><a href="#">下一页</a></li>
            </ul>
          </div>
<pre class="prettyprint linenums">
&lt;ul class="pager"&gt;
  &lt;li&gt;&lt;a href="#"&gt;上一页&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href="#"&gt;下一页&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
</pre>
                <h3>居于左右端的链接</h3>
                    <p>另一种情况下，链接分别居于左右端：</p>
                    <div class="bs-docs-example">
            <ul class="pager">
              <li class="previous"><a href="#">&larr; 过去的</a></li>
              <li class="next"><a href="#">更新的 &rarr;</a></li>
            </ul>
          </div>
<pre class="prettyprint linenums">
&lt;ul class="pager"&gt;
  &lt;li class="previous"&gt;
    &lt;a href="#"&gt;&amp;larr; 过去的&lt;/a&gt;
  &lt;/li&gt;
  &lt;li class="next"&gt;
    &lt;a href="#"&gt;更新的 &amp;rarr;&lt;/a&gt;
  &lt;/li&gt;
&lt;/ul&gt;
</pre>
                <h3>不可用状态</h3>
                    <p>同样也是使用 <code>.disabled</code> 让其显示不可用状态.</p>
                    <div class="bs-docs-example">
            <ul class="pager">
              <li class="previous disabled"><a href="#">&larr; 过去的</a></li>
              <li class="next"><a href="#">更新的 &rarr;</a></li>
            </ul>
          </div>
<pre class="prettyprint linenums">
&lt;ul class="pager"&gt;
  &lt;li class="previous disabled"&gt;
    &lt;a href="#"&gt;&amp;larr; Older&lt;/a&gt;
  &lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
        </section>
        
        <!-- Labels and badges
        ================================================== -->
        <section id="labels-badges">
            <div class="page-header">
                <h1>标签和标记<small>标签和注释文本</small></h1>

            </div>
            
            <h3>标签</h3>
            <table class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>标签</th>
                <th>标记</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <span class="label">默认</span>
                </td>
                <td>
                  <code>&lt;span class="label"&gt;默认&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  <span class="label label-success">成功</span>
                </td>
                <td>
                  <code>&lt;span class="label label-success"&gt;成功&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  <span class="label label-warning">警告</span>
                </td>
                <td>
                  <code>&lt;span class="label label-warning"&gt;警告&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  <span class="label label-important">重要</span>
                </td>
                <td>
                  <code>&lt;span class="label label-important"&gt;重要&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  <span class="label label-info">信息</span>
                </td>
                <td>
                  <code>&lt;span class="label label-info"&gt;信息&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  <span class="label label-inverse">反向</span>
                </td>
                <td>
                  <code>&lt;span class="label label-inverse"&gt;反向&lt;/span&gt;</code>
                </td>
              </tr>
            </tbody>
          </table>
            <h3>标记</h3>
            <table class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>名称</th>
                <th>例子</th>
                <th>标记</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  默认
                </td>
                <td>
                  <span class="badge">1</span>
                </td>
                <td>
                  <code>&lt;span class="badge"&gt;1&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  成功
                </td>
                <td>
                  <span class="badge badge-success">2</span>
                </td>
                <td>
                  <code>&lt;span class="badge badge-success"&gt;2&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  警告
                </td>
                <td>
                  <span class="badge badge-warning">4</span>
                </td>
                <td>
                  <code>&lt;span class="badge badge-warning"&gt;4&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  重要
                </td>
                <td>
                  <span class="badge badge-important">6</span>
                </td>
                <td>
                  <code>&lt;span class="badge badge-important"&gt;6&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  信息
                </td>
                <td>
                  <span class="badge badge-info">8</span>
                </td>
                <td>
                  <code>&lt;span class="badge badge-info"&gt;8&lt;/span&gt;</code>
                </td>
              </tr>
              <tr>
                <td>
                  反向
                </td>
                <td>
                  <span class="badge badge-inverse">10</span>
                </td>
                <td>
                  <code>&lt;span class="badge badge-inverse"&gt;10&lt;/span&gt;</code>
                </td>
              </tr>
            </tbody>
          </table>
                <h3>容易的标记</h3>
                    <p>为了方便编写,请将标签和标记存在空的元素当中(通过 CSS's <code>:empty</code> 定义)</p>
            
        </section>
        
        <!-- Typographic components
        ================================================== -->
        <section id="typography">
            <div class="page-header">
                <h1>排版组件</h1>
            </div>
            
            <h2>Hero单元</h2>
                <p>Bootstrap提供了一个轻巧又灵活的组件，用以在网站中着重展示内容，称之为"hero unit"/主角单元。 适用于市场类或强调内容的网站。</p>
                <div class="bs-docs-example">
                    <div class="hero-unit">
                        <h1>Hello, world!</h1>
                        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
                        <p><a class="btn btn-primary btn-large">Learn more</a></p>
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="hero-unit"&gt;
  &lt;h1&gt;Heading&lt;/h1&gt;
  &lt;p&gt;Tagline&lt;/p&gt;
  &lt;p&gt;
    &lt;a class="btn btn-primary btn-large"&gt;
      Learn more
    &lt;/a&gt;
  &lt;/p&gt;
&lt;/div&gt;
</pre>
            <h2>页面标题</h2>
                <p>相当于一个简单的 <code>h1</code> 外壳，它有适当的留白，以便在页面中分割内容片段。 还可以在 <code>h1</code> 内嵌入 <code>small</code> ，html元素或是其他组件。</p>
                <div class="bs-docs-example">
                    <h1>页面标题的例子 <small>子标题文字</small></h1>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="page-header"&gt;
  &lt;h1&gt;页面标题的例子 &lt;small&gt;子标题文字&lt;/small&gt;&lt;/h1&gt;
&lt;/div&gt;
</pre>
            
        </section>
        
        <!-- Thumbnails
        ================================================== -->
        <section id="thumbnails">
            <div class="page-header">
                <h1>缩略项 <small>网格式图片, 视频, 文本, 等等</small></h1>
            </div>
            
            <h2>默认缩略项</h2>
                <p>默认情况下，Bootstrap的缩略项使用很少的标记来展示链接图象。</p>
                <div class="row-fluid">
                    <ul class="thumbnails">
                        <li class="span3">
                            <a href="#" class="thumbnail">
                                <img data-src="holder.js/260x180" alt=""/>
                            </a>
                        </li>
                        
                        <li class="span3">
                            <a href="#" class="thumbnail">
                                <img data-src="holder.js/260x180" alt=""/>
                            </a>
                        </li>
                        
                        <li class="span3">
                            <a href="#" class="thumbnail">
                                <img data-src="holder.js/260x180" alt=""/>
                            </a>
                        </li>
                        
                        <li class="span3">
                            <a href="#" class="thumbnail">
                                <img data-src="holder.js/260x180" alt=""/>
                            </a>
                        </li>
                    </ul>
                </div>
            <h2>高可定制</h2>
                <p>使用少量其他标记就可以在缩略项中添加任何一种HTML内容，比如标题，段落，或按钮。</p>
                <div class="row-fluid">
                    <ul class="thumbnails">
                        <li class="span4">
                            <div class="thumbnail">
                                <img data-src="holder.js/300x200" alt=""/>
                                <div class="caption">
                                    <h3>Thumbnail label</h3>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <p><a href="#" class="btn btn-primary">动作</a> <a href="#" class="btn">动作</a></p>
                                </div>
                            </div>
                        </li>
                        
                        <li class="span4">
                            <div class="thumbnail">
                                <img data-src="holder.js/300x200" alt=""/>
                                <div class="caption">
                                    <h3>Thumbnail label</h3>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <p><a href="#" class="btn btn-primary">动作</a> <a href="#" class="btn">动作</a></p>
                                </div>
                            </div>
                        </li>
                        
                        <li class="span4">
                            <div class="thumbnail">
                                <img data-src="holder.js/300x200" alt=""/>
                                <div class="caption">
                                    <h3>Thumbnail label</h3>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <p><a href="#" class="btn btn-primary">动作</a> <a href="#" class="btn">动作</a></p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <h3>为什么使用缩略项</h3>
                    <p>缩略项（1.4版之前使用 <code>.media-grid</code> ）适用于栅格化的图片和视频，图片搜索结果，零售产品，文件夹等等。缩略项可以是链接，也可以是静态内容。</p>
                <h3>简洁灵活的标记</h3>
                    <p>缩略项标记既简单又灵活&mdash;只须用一个 <code>ul</code> 嵌套多个 <code>li</code> 元素。缩略项内容可以是任何一种HTML内容，只须少许标记。</p>
                <h3>使用栅格列确定大小</h3>
                    <p>最后，缩略项组件使用栅格类—诸如 <code>.span2</code> 或 <code>.span3</code> &mdash;确定缩略项的尺寸。</p>
            <h2>标记</h2>
                <p>正如之前所提到的，缩略项所需的标记是很少的。下面就是一个 <strong>带链接图象</strong> 的默认设置：</p>
                <pre class="prettyprint linenums">
&lt;ul class="thumbnails"&gt;
  &lt;li class="span4"&gt;
    &lt;a href="#" class="thumbnail"&gt;
      &lt;img data-src="holder.js/300x200" alt=""&gt;
    &lt;/a&gt;
  &lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
                <p>缩略项中的HTML内容仅须更改少许标记。将 <code>&lt;a&gt;</code> 变成 <code>&lt;div&gt;</code> 即可定制块状内容，如下：</p>
                <pre class="prettyprint linenums">
&lt;ul class="thumbnails"&gt;
  &lt;li class="span4"&gt;
    &lt;div class="thumbnail"&gt;
      &lt;img data-src="holder.js/300x200" alt=""&gt;
      &lt;h3&gt;Thumbnail label&lt;/h3&gt;
      &lt;p&gt;Thumbnail caption...&lt;/p&gt;
    &lt;/div&gt;
  &lt;/li&gt;
  ...
&lt;/ul&gt;
</pre>
            <h2>更多例子</h2>
                <p>尝试更多栅格类，混用不同的尺寸。</p>
                <ul class="thumbnails">
                    <li class="span4">
                        <a href="#" class="thumbnail">
                            <img data-src="holder.js/360x270" alt=""/>
                        </a>
                    </li>
                    
                    <li class="span3">
                        <a href="#" class="thumbnail">
                            <img data-src="holder.js/260x120" alt=""/>
                        </a>
                    </li>
                    
                    <li class="span2">
                        <a href="#" class="thumbnail">
                            <img data-src="holder.js/160x120" alt=""/>
                        </a>
                    </li>
                    
                    <li class="span3">
                        <a href="#" class="thumbnail">
                            <img data-src="holder.js/260x120" alt=""/>
                        </a>
                    </li>
                    
                    <li class="span2">
                        <a href="#" class="thumbnail">
                            <img data-src="holder.js/160x120" alt=""/>
                        </a>
                    </li>
                </ul>
        </section>
        
        
        <!-- Alerts
        ================================================== -->
        <section id="alerts">
            <div class="page-header">
                <h1>通知 <small>给成功，警告和错误消息指定样式</small></h1>
            </div>
            
            <h2>默认样式</h2>
                <p>在 <code>.alert</code> 里面添加任何文本内容和关闭按钮.</p>
                <div class="bs-docs-example">
                    <div class="alert">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>警告!</strong> Best check yo self, you're not looking too good.
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="alert"&gt;
  &lt;button type="button" class="close" data-dismiss="alert"&gt;&amp;times;&lt;/button&gt;
  &lt;strong&gt;Warning!&lt;/strong&gt; Best check yo self, you're not looking too good.
&lt;/div&gt;
</pre>
                <h3>关闭按钮</h3>
                    <p>在移动设备的Safari和Opera浏览器中, 当使用<code>&lt;a&gt;</code>标签用以关闭通知框, 除了在<code>data-dismiss="alert"</code>属性之外, 还需要包含一个<code>href="#"</code>.</p>
                    <pre class="prettyprint linenums">&lt;a href="#" class="close" data-dismiss="alert"&gt;&amp;times;&lt;/a&gt;</pre>
                    <p>另外, 你可以使用<code>&lt;button&gt;</code>元素的数据属性, 我们的文档就是使用这个元素. 当使用<code>&lt;button&gt;</code>, 必须包含<code>type="button"</code>, 或者表单中没有提交.</p>
                    <pre class="prettyprint linenums">&lt;button type="button" class="close" data-dismiss="alert"&gt;&amp;times;&lt;/button&gt;</pre>
                <h3>通过JavaScript关闭通知</h3>
                    <p>使用 <a href="./javascript.html#alerts">通知(alerts)jQuery插件</a> 快速和容易的关闭通知.</p>
            <hr class="bs-docs-separator"/>
            <h2>选项</h2>
                <p>对于较长的信息, 添加<code>.alert-block</code>增加通知框顶部和底部的padding.</p>
                <div class="bs-docs-example">
                    <div class="alert alert-block">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <h4>警告!</h4>
                        <p>Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="alert alert-block"&gt;
  &lt;button type="button" class="close" data-dismiss="alert"&gt;&amp;times;&lt;/button&gt;
  &lt;h4&gt;Warning!&lt;/h4&gt;
  Best check yo self, you're not...
&lt;/div&gt;
</pre>
            <hr class="bs-docs-separator"/>
            <h2>语境下的强化</h2>
                <p>根据通知的涵义使用不同的类</p>
                <h3>危险/错误</h3>
                    <div class="bs-docs-example">
                        <div class="alert alert-error">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>错误!</strong> Change a few things up and try submitting again.
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="alert alert-error"&gt;
  ...
&lt;/div&gt;
</pre>
                <h3>成功</h3>
                    <div class="bs-docs-example">
                        <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>不错!</strong> You successfully read this important alert message.
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="alert alert-success"&gt;
  ...
&lt;/div&gt;
</pre>
                <h3>重要</h3>
                    <div class="bs-docs-example">
                        <div class="alert alert-info">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>注意!</strong> This alert needs your attention, but it's not super important.
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="alert alert-info"&gt;
  ...
&lt;/div&gt;
</pre>
            
        </section>
        
        
        <!-- Progress bars
        ================================================== -->
        <section id="progress">
            <div class="page-header">
                <h1>进度条 <small>加载, 重定向, 状态</small></h1>
            </div>
            
            <h2>例子</h2>
                <h3>基本效果</h3>
                    <p>默认的垂直渐变进度条。</p>
                    <div class="bs-docs-example">
                        <div class="progress">
                            <div class="bar" style="width: 60%;"></div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="progress"&gt;
  &lt;div class="bar" style="width: 60%;"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
                <h3>条纹效果</h3>
                    <p>使用渐变创建条纹进度条（不支持IE7-8）</p>
                    <div class="bs-docs-example">
                        <div class="progress progress-striped">
                            <div class="bar" style="width: 20%;"></div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="progress progress-striped"&gt;
  &lt;div class="bar" style="width: 20%;"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
                <h3>动画效果</h3>
                    <p>在 <code>.progress-striped</code> 添加 <code>.active</code> , 创建一个从右到左移动的动画条纹. 同样不支持IE.</p>
                    <div class="bs-docs-example">
                        <div class="progress progress-striped active">
                            <div class="bar" style="width: 45%"></div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="progress progress-striped active"&gt;
  &lt;div class="bar" style="width: 40%;"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
                <h3>堆叠效果</h3>
                    <p>将多个不同的进度条放在一个 <code>.progress</code> 里来堆叠它们.</p>
                    <div class="bs-docs-example">
                    <div class="progress">
                        <div class="bar bar-success" style="width: 35%"></div>
                        <div class="bar bar-warning" style="width: 20%"></div>
                        <div class="bar bar-danger" style="width: 10%"></div>
                    </div>
                    </div>
                    
                    <pre class="prettyprint linenums">
&lt;div class="progress"&gt;
  &lt;div class="bar bar-success" style="width: 35%;"&gt;&lt;/div&gt;
  &lt;div class="bar bar-warning" style="width: 20%;"&gt;&lt;/div&gt;
  &lt;div class="bar bar-danger" style="width: 10%;"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
            <hr class="bs-docs-separator"/>
            <h2>选项</h2>
                <h3>其他颜色</h3>
                    <p>进度条使用和按钮/警告类相似的样式，提供一致的颜色风格。</p>
                    <div class="bs-docs-example">
                        <div class="progress progress-info" style="margin-bottom: 9px;">
                            <div class="bar" style="width: 20%"></div>
                        </div>
                        
                        <div class="progress progress-success" style="margin-bottom: 9px;">
                            <div class="bar" style="width: 40%"></div>
                        </div>
                        
                        <div class="progress progress-warning" style="margin-bottom: 9px;">
                            <div class="bar" style="width: 60%"></div>
                        </div>
                        
                        <div class="progress progress-danger">
                            <div class="bar" style="width: 80%"></div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="progress progress-info"&gt;
  &lt;div class="bar" style="width: 20%"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="progress progress-success"&gt;
  &lt;div class="bar" style="width: 40%"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="progress progress-warning"&gt;
  &lt;div class="bar" style="width: 60%"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="progress progress-danger"&gt;
  &lt;div class="bar" style="width: 80%"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
                <h3>条纹进度条</h3>
                    <p>与纯色相似，也可以使用多色的条纹进度条。</p>
                    <div class="bs-docs-example">
                        <div class="progress progress-info progress-striped" style="margin-bottom: 9px;">
                            <div class="bar" style="width: 20%"></div>
                        </div>
                        
                        <div class="progress progress-success progress-striped" style="margin-bottom: 9px;">
                            <div class="bar" style="width: 40%"></div>
                        </div>
                        
                        <div class="progress progress-warning progress-striped" style="margin-bottom: 9px;">
                            <div class="bar" style="width: 60%"></div>
                        </div>
                        
                        <div class="progress progress-danger progress-striped">
                            <div class="bar" style="width: 80%"></div>
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="progress progress-info progress-striped"&gt;
  &lt;div class="bar" style="width: 20%"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="progress progress-success progress-striped"&gt;
  &lt;div class="bar" style="width: 40%"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="progress progress-warning progress-striped"&gt;
  &lt;div class="bar" style="width: 60%"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="progress progress-danger progress-striped"&gt;
  &lt;div class="bar" style="width: 80%"&gt;&lt;/div&gt;
&lt;/div&gt;
</pre>
            <hr class="bs-docs-separator"/>
            <h2>浏览器的支持</h2>
                <p>进度条使用CSS3渐变/过渡/动画以实现所有效果. IE7到IE9，以及某些老版本的Firefox还不能完全支持这些特性.</p>
                <p>IE10之前的版本和Opera12, 均不支持动画.</p>
        </section>
        
         <!-- Media object
         ================================================== -->
         <section id="media">
            <div class="page-header">
                <h1>媒体对象</h1>
            </div>
            <p>建立各种类型的组件的抽象对象样式(像博客评论, Tweets, 等等), 该功能沿着文本内容左对齐或右对齐图像.</p>
            
            <h2>例子</h2>
                <p>默认的媒体浮动在一个媒体对象(图像, 视频, 音频)的左边或右边.</p>
                <div class="bs-docs-example">
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" data-src="holder.js/64x64"/>
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">Media heading</h4>
                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        </div>
                    </div>
                    
                    
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" data-src="holder.js/64x64"/>
                        </a>
                        <div class="media-body">
                             <h4 class="media-heading">Media heading</h4>
                             Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                             <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object" data-src="holder.js/64x64"/>
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Media heading</h4>
                                    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                                </div>
                             </div>
                        </div>
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="media"&gt;
  &lt;a class="pull-left" href="#"&gt;
    &lt;img class="media-object" data-src="holder.js/64x64"&gt;
  &lt;/a&gt;
  &lt;div class="media-body"&gt;
    &lt;h4 class="media-heading"&gt;Media heading&lt;/h4&gt;
    ...

    &lt;!-- Nested media object --&gt;
    &lt;div class="media"&gt;
      ...
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
</pre>
            <h2>媒体列表</h2>
                <p>使用一些额外的标记, 你可以让媒体包含在列表内(对评论或文章列表十分有用).</p>
                <div class="bs-docs-example">
                    <ul class="media-list">
                        <li class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" data-src="holder.js/64x64"/>
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Media heading</h4>
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.</p>
                                <!-- Nested media object -->
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object" data-src="holder.js/64x64"/>
                                    </a>
                                    <div class="media-body">
                                        
                                        <h4 class="media-heading">Nested media heading</h4>
                      Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                        <!-- Nested media object -->
                                         <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="media-object" data-src="holder.js/64x64"/>
                                            </a>
                                                <div class="media-body">
                                                    <h4 class="media-heading">Nested media heading</h4>
                                                   Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. 
                                                </div>
                                            
                                         </div>
                                    </div>
                                </div>
                                <!-- Nested media object -->
                                <div class="media">
                                     <a class="pull-left" href="#">
                                        <img class="media-object" data-src="holder.js/64x64"/>
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">Nested media heading</h4>
                                            Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                                        </div>
                                     
                                </div>
                            </div>
                        </li>
                        
                        
                        <li class="media">
                            <a class="pull-right" href="#">
                                <img class="media-object" data-src="holder.js/64x64"/>
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Media heading</h4>
                                Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
                            </div>
                        </li>
                    </ul>
                </div>
                <pre class="prettyprint linenums">
&lt;ul class="media-list"&gt;
  &lt;li class="media"&gt;
    &lt;a class="pull-left" href="#"&gt;
      &lt;img class="media-object" data-src="holder.js/64x64"&gt;
    &lt;/a&gt;
    &lt;div class="media-body"&gt;
      &lt;h4 class="media-heading"&gt;Media heading&lt;/h4&gt;
      ...

      &lt;!-- Nested media object --&gt;
      &lt;div class="media"&gt;
        ...
     &lt;/div&gt;
    &lt;/div&gt;
  &lt;/li&gt;
&lt;/ul&gt;
</pre>
            
         </section>
        
        <!-- Miscellaneous
        ================================================== -->
        <section id="misc">
            <div class="page-header">
                <h1>杂项 <small>轻量级的实用组件</small></h1>
            </div>
            
            <h2>消息墙</h2>
                <p>用来给某个元素添加包框效果。</p>
                <div class="bs-docs-example">
                    <div class="well">
                        来看呀来看呀，这就是消息墙！
                    </div>
                </div>
                <pre class="prettyprint linenums">
&lt;div class="well"&gt;
  ...
&lt;/div&gt;
</pre>
                <h3>可选的类</h3>
                    <p>有两个可选的修饰类可以控制填充和圆角效果</p>
                    <div class="bs-docs-example">
                        <div class="well well-large">
                            来看呀来看呀，这就是消息墙！
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="well well-large"&gt;
  ...
&lt;/div&gt;
</pre>
                    <div class="bs-docs-example">
                        <div class="well well-small">
                            来看呀来看呀，这就是消息墙！
                        </div>
                    </div>
                    <pre class="prettyprint linenums">
&lt;div class="well well-small"&gt;
  ...
&lt;/div&gt;
</pre>
            <h2>关闭图标</h2>
                <p>象对话框和弹出框一样，用常见的叉叉图标关闭内容。</p>
                <div class="bs-docs-example">
                    <p><button class="close" style="float: none;">&times;</button></p>
                </div>
                <pre class="prettyprint linenums">&lt;button class="close"&gt;&amp;times;&lt;/button&gt;</pre>
                <p>如果你使用a标签, 在iOS设备需要包含一个 <code>href="#"</code> 用作点击事件.</p>
                <pre class="prettyprint linenums">&lt;a class="close" href="#"&gt;&amp;times;&lt;/a&gt;</pre>
            <h2>辅助属性</h2>
                <p>简单的, 集中的为小屏幕或行为做调整.</p>
                <h4>.pull-left</h4>
                    <p>左浮动元素</p>
                    <pre class="prettyprint linenums">
class="pull-right"
</pre>
<pre class="prettyprint linenums">
.pull-right {
  float: right;
}
</pre>
                <h4>.pull-right</h4>
                    <p>右浮动元素</p>
                    <pre class="prettyprint linenums">
class="pull-right"
</pre>
<pre class="prettyprint linenums">
.pull-right {
  float: right;
}
</pre>
                <h4>.muted</h4>
                    <p>改变元素颜色为 <code>#999</code></p>
                    <pre class="prettyprint linenums">
class="muted"
</pre>
<pre class="prettyprint linenums">
.muted {
  color: #999;
}
</pre>
                <h4>.clearfix</h4>
                    <p>清除元素<code>float</code></p>
                    <pre class="prettyprint linenums">
class="clearfix"
</pre>
<pre class="prettyprint linenums">
.clearfix {
  *zoom: 1;
  &:before,
  &:after {
    display: table;
    content: "";
  }
  &:after {
    clear: both;
  }
}
</pre>
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
