<?php
require dirname(__FILE__).'./../init.inc.php';
global $_tpl;
Validate::checkSession();
$_tpl->display('admin.tpl');