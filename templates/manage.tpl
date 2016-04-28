{{include file='head.tpl'}}
<body id="main">
<div class="map">
    管理首页 &gt;&gt; 管理员管理 &gt;&gt; <strong id="title">{{$title}}</strong>
</div>

<ol>
    <li><a href="manage.php?action=show" >管理员列表</a></li>
    <li><a href="manage.php?action=add" >新增管理员</a></li>
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
                <td><a href="manage.php?action=update&id={{$item->id}}">修改</a> | <a
                            href="manage.php?action=delete&id={{$item->id}}"
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
                <td>用&ensp;户&ensp;名：<input type="text" name="admin_user" class="text"/> (* 不得小于两位，不得大于20位)</td>
            </tr>
            <tr>
                <td>密&emsp;&emsp;码：<input type="password" name="admin_pass" class="text"/> (* 不得小于六位)</td>
            </tr>
            <tr>
                <td>密码确认：<input type="password" name="admin_notpass" class="text"/> (* 必须同密码一致)</td>
            </tr>

            <tr>
                <td><input type="submit" name="send" value="新增管理员" onclick="return checkAddForm();" class="submit"/> [
                    <a
                            href="manage.php?action=show">返回列表</a> ]
                </td>
            </tr>
        </table>
    </form>
{{elseif $action eq 'update'}}
    <form method="post" name="update">
        <input type="hidden" value="{{$admin->id}}" name="id"/>
        <input type="hidden" value="" id="level"/>
        <input type="hidden" value="{{$pass}}" name="pass"/>
        <input type="hidden" value="/admin/manage.php?action=update&id={{$admin->id}}" name="prev_url"/>
        <table cellspacing="0" class="left">
            <tr>
                <td>用户名：<input type="text" name="admin_user" value="{{$admin->admin_user}}" class="text"
                               readonly="readonly"/></td>
            </tr>
            <tr>
                <td>密&emsp;码：<input type="password" name="admin_pass" class="text"/> (* 留空则不修改)</td>
            </tr>
            <tr>
                <td>等&emsp;级：<input type="text" name="level" value="{{$admin->level}}" class="text"/></td>
                </td>
            </tr>
            <tr>
                <td><input type="submit" name="send" value="修改管理员" onclick="return checkUpdateForm();" class="submit"/>
                    [ <a href="manage.php?action=show">返回列表</a> ]
                </td>
            </tr>
        </table>
    </form>
{{/if}}

</body>
</html>