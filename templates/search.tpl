{{include file='head.tpl'}}
<div id="list" class="searchlist">
    <h2>当前位置  &gt; 搜索: {{$search}}</h2>
    {{assign var="replace" value="<span class=\"red\">$search</span>"}}
    {{foreach from=$listNews item=news}}
        <dl>
            <dt><a href="details.php?id={{$news->id}}" target="_blank">
                    <img src="{{$news->thumbnail}}"
                         width="120" alt="{{$news->title}}"/></a>
            </dt>
            <dd>[<strong>{{$news->nav_name}}</strong>] <a href="details.php?id={{$news->id}}"
                                                          target="_blank">{{$news->title|replace:$search:$replace}}</a>
            </dd>
            <dd>日期：{{$news->date}} 点击率：{{$news->count}} 关键字：[{{$news->keyword}}]</dd>
            <dd>核心提示：{{$news->info}}</dd>
        </dl>
    {{/foreach}}
    {{$page}}
</div>
{{include file = "footer.tpl"}}