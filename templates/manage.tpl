
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>main</title>
<link rel="stylesheet" type="text/css" href="../style/admin.css" />
<script type="text/javascript" src="../js/admin_manage.js"></script>
</head>
<body id="main">

<div class="map">
	管理首页 &gt;&gt; 管理员管理 &gt;&gt; <strong id="title">管理员列表</strong>
</div>

<ol>
	<li><a href="manage.php?action=show" class="selected">管理员列表</a></li>
	<li><a href="manage.php?action=add">新增管理员</a></li>
	</ol>

<table cellspacing="0">
	<tr><th>编号</th><th>用户名</th> <th>登录次数</th><th>最近登录ip</th><th>最近登录时间</th><th>操作</th></tr>
			<tr>
		<td><script type="text/javascript">document.write(1+0);</script></td>
		<td>Lee</td>
		 
		<td>0</td>
		<td>000.000.000.000</td>
		<td>0000-00-00 00:00:00</td>
		<td><a href="manage.php?action=update&id=67">修改</a> | <a href="manage.php?action=delete&id=67" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(2+0);</script></td>
		<td>admin</td>
		 
		<td>184</td>
		<td>127.0.0.1</td>
		<td>2016-02-29 10:44:54</td>
		<td><a href="manage.php?action=update&id=56">修改</a> | <a href="manage.php?action=delete&id=56" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(3+0);</script></td>
		<td>蜡笔小新</td>
		 
		<td>2</td>
		<td>127.0.0.1</td>
		<td>2015-10-20 03:30:41</td>
		<td><a href="manage.php?action=update&id=53">修改</a> | <a href="manage.php?action=delete&id=53" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(4+0);</script></td>
		<td>蜡笔小新1</td>
		 
		<td>0</td>
		<td>000.000.000.000</td>
		<td>0000-00-00 00:00:00</td>
		<td><a href="manage.php?action=update&id=27">修改</a> | <a href="manage.php?action=delete&id=27" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(5+0);</script></td>
		<td>流川枫</td>
		 
		<td>1</td>
		<td>127.0.0.1</td>
		<td>2011-09-14 19:53:14</td>
		<td><a href="manage.php?action=update&id=8">修改</a> | <a href="manage.php?action=delete&id=8" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(6+0);</script></td>
		<td>樱桃小丸子</td>
		 
		<td>1</td>
		<td>127.0.0.1</td>
		<td>2011-09-10 22:47:54</td>
		<td><a href="manage.php?action=update&id=6">修改</a> | <a href="manage.php?action=delete&id=6" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(7+0);</script></td>
		<td>赤木晴子</td>
		 
		<td>3</td>
		<td>127.0.0.1</td>
		<td>2011-09-10 22:41:38</td>
		<td><a href="manage.php?action=update&id=5">修改</a> | <a href="manage.php?action=delete&id=5" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(8+0);</script></td>
		<td>樱木花道</td>
		 
		<td>0</td>
		<td>000.000.000.000</td>
		<td>0000-00-00 00:00:00</td>
		<td><a href="manage.php?action=update&id=4">修改</a> | <a href="manage.php?action=delete&id=4" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		<tr>
		<td><script type="text/javascript">document.write(9+0);</script></td>
		<td>李炎恢</td>
		 
		<td>3</td>
		<td>127.0.0.1</td>
		<td>2011-06-20 11:16:40</td>
		<td><a href="manage.php?action=update&id=2">修改</a> | <a href="manage.php?action=delete&id=2" onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a></td>
	</tr>
		</table>
<div id="page"> <span class="me">1</span> <span class="disabled">上一页</span><span class="disabled">下一页</span></div>


 

<form method="post" name="add">
	<table cellspacing="0" class="left">
		<tr><td>用 户 名：<input type="text" name="admin_user" class="text" /> (* 不得小于两位，不得大于20位)</td></tr>
		<tr><td>密　　码：<input type="password" name="admin_pass" class="text" /> (* 不得小于六位)</td></tr>
		<tr><td>密码确认：<input type="password" name="admin_notpass" class="text" /> (* 必须同密码一致)</td></tr>
		 
		<tr><td><input type="submit" name="send" value="新增管理员" onclick="return checkAddForm();" class="submit" /> [ <a href="http://test.demo/CMS11.5/admin/manage.php?action=update&id=56">返回列表</a> ]</td></tr>
	</table>
</form>



<form method="post" name="update">
	<input type="hidden" value="56" name="id" />
	<input type="hidden" value="" id="level" />
	<input type="hidden" value="3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d" name="pass" />
	<input type="hidden" value="http://test.demo/CMS11.5/admin/manage.php?action=update&id=67" name="prev_url" />
	<table cellspacing="0" class="left">
		<tr><td>用户名：<input type="text" name="admin_user" value=admin class="text" readonly="readonly" /></td></tr>
		<tr><td>密　码：<input type="password" name="admin_pass" class="text" /> (* 留空则不修改)</td></tr>
		 
		<tr><td><input type="submit" name="send" value="修改管理员" onclick="return checkUpdateForm();" class="submit" /> [ <a href="http://test.demo/CMS11.5/admin/manage.php?action=update&id=67">返回列表</a> ]</td></tr>
	</table>
</form>





</body>
</html>