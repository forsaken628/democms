<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
if (isset($_POST['send'])) {
	switch ($_POST['type']) {
		case 'content' :
			$_width = 150;
			$_height =  100;
			$_info = '缩略图上传成功！';
			break;
		 
		default:
			Tool::alertBack('警告：非法操作！');
	}
	$_fileupload = new FileUpload('pic',$_POST['MAX_FILE_SIZE']);
	$_path = $_fileupload->getPath();
	$_img = new Image($_path);
	$_img->thumb($_width,$_height);	
	$_img->out();
	Tool::alertOpenerClose($_info,$_path);
} else {
	Tool::alertBack('警告：文件过大或者其他未知错误导致浏览器崩溃！');
}
?>