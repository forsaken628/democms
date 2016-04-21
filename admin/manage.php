<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
global $_tpl;
$admin = new AdminAction($_tpl);
$admin->manageAction();