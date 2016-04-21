{{include file='head.tpl'}}
<body id="top">
<ul>
	<li><a href="../templates/sidebar.html" target="sidebar" id="nav1" class="selected" onclick="admin_top_nav(1)">首页</a></li>
	<li><a href="../templates/sidebarn.html" target="sidebar" id="nav2" onclick="admin_top_nav(2)">内容</a></li>  
</ul>
<p>
	您好，<strong>{{$admin_user}}</strong>   [ <a href="../" target="_blank">去首页</a> ] [ <a href="admin_login.php?action=logout" target="_parent">退出</a> ]
</p>
</body>
</html>