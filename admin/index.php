<?php
require dirname(__FILE__).'./../init.inc.php';
isset($_SESSION['admin']) ? Tool::alertLocation(null, 'admin.php') : Tool::alertLocation(null, 'admin_login.php');
?>