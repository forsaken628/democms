<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
$_vc = new ValidateCode();
$_vc->doimg();
$_SESSION['code'] = $_vc->getCode();