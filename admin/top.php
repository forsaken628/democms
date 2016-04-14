<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
global $_tpl;
Validate::checkSession();
$_tpl->assign('admin_user',$_SESSION['admin']['admin_user']); 
$_tpl->display('top.tpl');
?>