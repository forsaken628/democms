{{include file='head.tpl'}}
<body id="main">
<div class="map">
    管理首页 &gt;&gt; 管理员管理 &gt;&gt; <strong id="title">管理员列表</strong>
</div>

<ol>
    <li><a href="manage.php?action=show" class="selected">管理员列表</a></li>
    <li><a href="manage.php?action=add">新增管理员</a></li>
</ol>
{{if $action eq 'show'}}
<table cellspacing="0">
    <tr>
        <th>编号</th>
        <th>用户名</th>
        <th>登录次数</th>
        <th>最近登录ip</th>
        <th>最近登录时间</th>
        <th>操作</th>
    </tr>
    {{foreach from=$adminList item=item}}
    <tr>
        <td>{{counter}}</td>
        <td>{{$item->admin_user}}</td>
        <td>{{$item->login_count}}</td>
        <td>{{$item->last_ip}}</td>
        <td>{{$item->last_time}}</td>
        <td><a href="manage.php?action=update&id={{$item->id}}">修改</a> | <a href="manage.php?action=delete&id={{$item->id}}"
                                                                 onclick="return confirm('你真的要删除这个管理员吗？') ? true : false">删除</a>
        </td>
    </tr>
    {{/foreach}}
</table>
<div id="page"><span class="me">1</span> <span class="disabled">上一页</span><span class="disabled">下一页</span></div>

{{elseif $action eq 'add'}}
<form method="post" name="add">
    <table cellspacing="0" class="left">
        <tr>
            <td>用 户 名：<input type="text" name="admin_user" class="text"/> (* 不得小于两位，不得大于20位)</td>
        </tr>
        <tr>
            <td>密　　码：<input type="password" name="admin_pass" class="text"/> (* 不得小于六位)</td>
        </tr>
        <tr>
            <td>密码确认：<input type="password" name="admin_notpass" class="text"/> (* 必须同密码一致)</td>
        </tr>

        <tr>
            <td><input type="submit" name="send" value="新增管理员" onclick="return checkAddForm();" class="submit"/> [ <a
                        href="manage.php?action=show">返回列表</a> ]
            </td>
        </tr>
    </table>
</form>
{{elseif $action eq 'update'}}
<form method="post" name="update">
    <input type="hidden" value="56" name="id"/>
    <input type="hidden" value="" id="level"/>
    <input type="hidden" value="3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d" name="pass"/>
    <input type="hidden" value="http://test.demo/CMS11.5/admin/manage.php?action=update&id=67" name="prev_url"/>
    <table cellspacing="0" class="left">
        <tr>
            <td>用户名：<input type="text" name="admin_user" value=admin class="text" readonly="readonly"/></td>
        </tr>
        <tr>
            <td>密　码：<input type="password" name="admin_pass" class="text"/> (* 留空则不修改)</td>
        </tr>

        <tr>
            <td><input type="submit" name="send" value="修改管理员" onclick="return checkUpdateForm();" class="submit"/> [ <a
                        href="manage.php?action=show">返回列表</a> ]
            </td>
        </tr>
    </table>
</form>
{{/if}}

</body>
</html>