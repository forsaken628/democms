{{include file='head.tpl'}}
<div id="newslist">
    {{foreach from=$newslist item=list}}
        <div class="list {{cycle values=",right"}} bottom">
            <h2><a href="list.php?id=1" target="_blank">更多</a>军事动态</h2>
            <ul>
                {{foreach from=$list item=value}}
                    <li><em>11-27</em><a href="details.php?id=57" target="_blank">{{$value->title}}</a></li>
                {{/foreach}}
            </ul>
        </div>
    {{/foreach}}
</div>
{{include file = "footer.tpl"}}