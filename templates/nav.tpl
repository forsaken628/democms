{{include file='head.tpl'}}
<body id="main">

<div class="map">
    内容管理 &gt;&gt; 设置网站导航 &gt;&gt; <strong id="title">{{$title}}</strong>
</div>

<ol>
    <li><a href="nav.php?action=show">导航列表</a></li>
    <li><a href="nav.php?action=add">新增导航</a></li>
</ol>
{{if $action eq "show"}}
    <form method="post" action="nav.php?action=sort">
        <table cellspacing="0">
            <tr>
                <th>编号</th>
                <th>导航名称</th>
                <th>描述</th>
                <th>子类</th>
                <th>操作</th>
                <th>排序</th>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(1 + 0);</script>
                </td>
                <td>军事动态</td>
                <td>主要是军事方面的新闻。</td>
                <td><a href="nav.php?action=showchild&id=1">查看</a> | <a href="nav.php?action=addchild&id=1">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=1">修改</a> | <a href="nav.php?action=delete&id=1"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[1]" value="1" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(2 + 0);</script>
                </td>
                <td>热门汽车</td>
                <td>关于汽车方面的信息。</td>
                <td><a href="nav.php?action=showchild&id=8">查看</a> | <a href="nav.php?action=addchild&id=8">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=8">修改</a> | <a href="nav.php?action=delete&id=8"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[8]" value="2" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(3 + 0);</script>
                </td>
                <td>时尚女人</td>
                <td>关于时尚和女人方面的信息。</td>
                <td><a href="nav.php?action=showchild&id=3">查看</a> | <a href="nav.php?action=addchild&id=3">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=3">修改</a> | <a href="nav.php?action=delete&id=3"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[3]" value="3" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(4 + 0);</script>
                </td>
                <td>科技频道</td>
                <td>关于科技方面的资讯。</td>
                <td><a href="nav.php?action=showchild&id=4">查看</a> | <a href="nav.php?action=addchild&id=4">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=4">修改</a> | <a href="nav.php?action=delete&id=4"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[4]" value="4" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(5 + 0);</script>
                </td>
                <td>智能手机</td>
                <td>关于智能手机方面的推荐。</td>
                <td><a href="nav.php?action=showchild&id=5">查看</a> | <a href="nav.php?action=addchild&id=5">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=5">修改</a> | <a href="nav.php?action=delete&id=5"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[5]" value="5" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(6 + 0);</script>
                </td>
                <td>美容护肤</td>
                <td>关于美容方面的信息。</td>
                <td><a href="nav.php?action=showchild&id=7">查看</a> | <a href="nav.php?action=addchild&id=7">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=7">修改</a> | <a href="nav.php?action=delete&id=7"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[7]" value="7" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(7 + 0);</script>
                </td>
                <td>房产家居</td>
                <td>关于房产家居的信息。</td>
                <td><a href="nav.php?action=showchild&id=9">查看</a> | <a href="nav.php?action=addchild&id=9">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=9">修改</a> | <a href="nav.php?action=delete&id=9"
                                                                     onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[9]" value="9" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(8 + 0);</script>
                </td>
                <td>读书教育</td>
                <td>关于教育方面的信息。</td>
                <td><a href="nav.php?action=showchild&id=10">查看</a> | <a href="nav.php?action=addchild&id=10">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=10">修改</a> | <a href="nav.php?action=delete&id=10"
                                                                      onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[10]" value="10" class="text sort"/></td>
            </tr>
            <tr>
                <td>
                    <script type="text/javascript">document.write(9 + 0);</script>
                </td>
                <td>股票基金</td>
                <td>关于股票基金的信息。</td>
                <td><a href="nav.php?action=showchild&id=11">查看</a> | <a href="nav.php?action=addchild&id=11">增加子类</a>
                </td>
                <td><a href="nav.php?action=update&id=11">修改</a> | <a href="nav.php?action=delete&id=11"
                                                                      onclick="return confirm('你真的要删除这个导航吗？') ? true : false">删除</a>
                </td>
                <td><input type="text" name="sort[11]" value="11" class="text sort"/></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><input type="submit" name="send" value="排序" style="cursor:pointer;"/></td>
            </tr>
        </table>
    </form>
    <div id="page"><span class="me">1</span> <span class="disabled">上一页</span><span class="disabled">下一页</span></div>
{{/if}}

{{if $action eq "add"}}
    <form method="post" name="add">
        <input type="hidden" value="0" name="pid"/>
        <table cellspacing="0" class="left">
            <tr>
                <td>导航名称：<input type="text" name="nav_name" class="text"/> (* 导航名称不得小于两位，不得大于20位！)</td>
            </tr>
            <tr>
                <td><textarea name="nav_info"></textarea> (* 描述不得大于200位！)</td>
            </tr>
            <tr>
                <td><input type="submit" name="send" value="新增导航" onclick="return checkForm();" class="submit level"/> [
                    <a href="{$prev_url}">返回列表</a> ]
                </td>
            </tr>
        </table>
    </form>
{{/if}}


</body>
</html>   
  