{{include file='head.tpl'}}
<body id="main">
<div class="map">
    内容管理 &gt;&gt; 查看文档列表 &gt;&gt; <strong id="title">{{$title}}</strong>
</div>

<ol>
    <li><a href="content.php?action=show">文档列表</a></li>
    <li><a href="content.php?action=add">新增文档</a></li>
</ol>

{{if $action eq "show"}}
    <table cellspacing="0">
        <tr>
            <th>编号</th>
            <th>标题</th>
            <th>属性</th>
            <th>文档类别</th>
            <th>浏览次数</th>
            <th>发布时间</th>
            <th>操作</th>
        </tr>
        {{foreach from=$newsList item=item}}
            <tr>
                <td>{{counter}}</td>
                <td><a href="../details.php?id={{$item->id}}" title="{{$item->title}}"
                       target="_blank">{{$item->title}}</a>
                </td>
                <td>{{$item->attr}}</td>
                <td><a href="?action=show&nav={{$item->nav}}">{{$item->nav_name}}</a></td>
                <td>{{$item->count}}</td>
                <td>{{$item->date}}</td>
                <td><a href="/admin/content.php?action=update&id={{$item->id}}">修改</a> | <a
                            href="/admin/content.php?action=delete&id={{$item->id}}"
                            onclick="return confirm('你真的要删除这个文档吗？') ? true : false">删除</a>
                </td>
            </tr>
        {{/foreach}}
    </table>
    <form action="?" method="get">
        <div id="page">
            <span class="me">1</span> <a href=/admin/content.php?action=show&page=2">2</a> <span
                    class="disabled">上一页</span>
            <a href="/admin/content.php?action=show&page=2">下一页</a>
            <input type="hidden" name="action" value="show"/>
            <select name="nav" class="select">
                <option value="0">默认全部</option>
                {{foreach from=$navList item=nav}}
                    <optgroup label="{{$nav.head}}">
                        {{foreach from=$nav.body item=item}}
                            <option value="{{$item->id}}">{{$item->nav_name}}</option>
                        {{/foreach}}
                    </optgroup>
                {{/foreach}}
            </select>
            <input value="查询" type="submit"/>
        </div>
    </form>
{{/if}}

{{if $action eq "add"}}
    <form name="content" method="post" action="?action=add">
        <table cellspacing="0" class="content">
            <tr>
                <th><strong>发布一条新文档</strong></th>
            </tr>
            <tr>
                <td>文档标题：<input type="text" name="title" class="text"/> <span class="red">[必填]</span> ( * 标题2-50字符之间)
                </td>
            </tr>
            <tr>
                <td>栏　　目：<select name="nav">
                        <option value="" style="padding:0;">请选择一个栏目类别</option>
                        {$nav}</select> <span class="red">[必选]</span></td>
            </tr>
            <tr>
                <td>定义属性：<input type="checkbox" name="attr[]" value="头条"/>头条
                    <input type="checkbox" name="attr[]" value="推荐"/>推荐
                    <input type="checkbox" name="attr[]" value="加粗"/>加粗
                    <input type="checkbox" name="attr[]" value="跳转"/>跳转
                </td>
            </tr>

            <tr>
                <td>关 键 字：<input type="text" name="keyword" class="text"/> ( * 每个关键字用','隔开，总长30位之内)</td>
            </tr>
            <tr>
                <td>缩 略 图：<input type="text" name="thumbnail" class="text" readonly="readonly"/>
                    <input type="button" value="上传缩略图"
                           onclick="centerWindow('upfile.php?type=content','upfile','400','130')"/>
                    <img name="pic" style="display:none;"/> ( * 必须是jpg,gif,png，并且200k内)
                </td>
            </tr>
            <tr>
                <td>文章来源：<input type="text" name="source" class="text"/> ( * 文章来源20位之内)</td>
            </tr>
            <tr>
                <td>作　　者：<input type="text" value="{$author}" name="author" class="text"/> ( * 作者10位之内)</td>
            </tr>
            <tr>
                <td><span class="middle">内容摘要：</span><textarea name="info"></textarea> <span
                            class="middle">( * 内容摘要200之内)</span></td>
            </tr>
            <tr class="ckeditor">
                <td><textarea id="TextArea1" name="content" class="ckeditor"></textarea></td>
            </tr>
            <tr>
                <td>
                    　
                    　 　　标题颜色：<select name="color">
                        <option value="">默认颜色</option>
                        <option value="red" style="color:red;">红色</option>
                        <option value="blue" style="color:blue;">蓝色</option>
                        <option value="orange" style="color:orange;">橙色</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><input type="submit" name="send" onclick="return checkAddContent();" value="发布文档"/> <input
                            type="reset"
                            value="重置"/>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
    </form>
{{/if}}
</body>
</html>
   