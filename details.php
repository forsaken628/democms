<?php
require dirname(__FILE__).'/init.inc.php';
global $_tpl;
$_details = new IndexAction($_tpl);
$_details->detailsAction();