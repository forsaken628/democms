{{include file='head.tpl'}}
</div>
<div id="list">
    <h2>当前位置{{foreach from=$breadCrumb item="bc"}} &gt; <a href="list.php?id={{$bc->id}}" title="{{$bc->nav_info}}">{{$bc->nav_name}}</a>{{/foreach}}
    {{foreach from=$listNews item=news}}
        <dl>
            <dt><a href="details.php?id={{$news->id}}" target="_blank">
                    <img src="{{$news->thumbnail}}"
                         width="120" alt="{{$news->title}}"/></a>
            </dt>
            <dd>[<strong>{{$news->nav_name}}</strong>] <a href="details.php?id={{$news->id}}" target="_blank" title="{{$news->info}}">{{$news->title}}</a>
            </dd>
            <dd>日期：{{$news->date}} 点击率：{{$news->count}} 关键字：[{{$news->keyword}}]</dd>
            <dd>核心提示：DFDSSDFSDFS</dd>
        </dl>
    {{/foreach}}
    {{$page}}
</div>
<div id="sidebar">
    <div class="nav">
        <h2>子栏目列表</h2>
        {{foreach from=$childList item="item"}}
        <strong><a href="list.php?id={{$item->id}}" title="{{$item->nav_info}}">{{$item->nav_name}}</a></strong>
        {{/foreach}}
    </div>
</div>
{{include file = "footer.tpl"}}