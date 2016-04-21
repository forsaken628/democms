{{include file='head.tpl'}}
{{include file='header.tpl'}}
<div id="newslist">
    {{foreach from=$newsList item=list}}
        <div class="list {{cycle values=",right"}} bottom">
            <h2><a href="list.php?id={{$list.head->nav_id}}" target="_blank">更多</a>{{$list.head->nav_name}}</h2>
            <ul>
                {{foreach from=$list.body item=value}}
                    <li><em>{{$value->date|date_format:'%m-%d'}}</em><a href="details.php?id={{$value->id}}" title="{{$value->info}}" target="_blank">{{$value->title}}</a></li>
                {{/foreach}}
            </ul>
        </div>
    {{/foreach}}
</div>
{{include file = "footer.tpl"}}