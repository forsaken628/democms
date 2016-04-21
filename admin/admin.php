<?php
require dirname(__FILE__).'./../init.inc.php';
global $_tpl;
$admin = new AdminAction($_tpl);
$admin->adminAction();