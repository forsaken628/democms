{{include file='head.tpl'}}
<form id="adminLogin" name="login" method="post" action="?action=login">
	<fieldset>
		<legend>登录CMS后台管理系统</legend>
		<label>账　号：<input type="text" name="admin_user" class="text" /></label>
		<label>密　码：<input type="password" name="admin_pass" class="text" /></label>
		<label>验证码：<input type="text" name="code" class="text" /></label>
		<label class="t">输入下图的字符，不区分大小写</label>
		<label><img src="../admin/code.php" onclick="javascript:this.src='../admin/code.php?tm='+Math.random();" /></label>
		<input type="submit" value="登录" class="submit" onclick="return checkLogin();" name="send" />
	</fieldset>
</form>
</body>
</html>