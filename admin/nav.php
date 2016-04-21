<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
//Validate::checkSession();
global $_tpl;
$_nav = new AdminAction($_tpl);   //入口
$_nav->navAction();
$_tpl->display('nav.tpl');
