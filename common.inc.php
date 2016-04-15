<?php
//模板句柄
global $_tpl;
$_tpl->debugging_ctrl = 'URL';
$_index = new IndexAction($_tpl);
$_index->showHeaderNav();  //列出主导航

//if (false) {
//	$_tpl->assign('header','<script type="text/javascript">getHeader();</script>');
//} else {
//	if ($_cookie->getCookie()) {
//		$_tpl->assign('header',$_cookie->getCookie().'，您好！ <a href="register.php?action=logout">退出</a> ');
//	} else {
//		$_tpl->assign('header','	<a href="register.php?action=reg" class="user">注册</a> <a href="register.php?action=login" class="user">登录</a>');
//	}
//}

$_tpl->assign('webname', WEBNAME);