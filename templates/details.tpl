{{include file='head.tpl'}}
{{include file='header.tpl'}}
</div>
<div id="details">
    <h2>当前位置{{foreach from=$breadCrumb item="bc"}} &gt; <a href="list.php?id={{$bc->id}}" title="{{$bc->nav_info}}">{{$bc->nav_name}}</a>{{/foreach}}</h2>
    <h3>{{$details->title}}</h3>
    <div class="d1">时间：{{$details->date}} 来源：{{$details->source}} 作者：{{$details->author}} 点击量：
        <script type="text/javascript">getContentCount();</script>
        次
    </div>
    <div class="d2">
        {{$details->info}}
    </div>
    <div class="d3">
        {{$details->content}}
    </div>
</div>
{{include file = "footer.tpl"}}