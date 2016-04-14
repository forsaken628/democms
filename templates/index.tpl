{{include file='head.tpl'}}
<div id="top">

</div>
<!---
<div id="header">
	<h1><a href="###">新闻系统</a></h1>
	<div class="adver"><script type="text/javascript" src="js/header_adver.js"></script></div>
</div>  -->
<div id="nav">
    <ul>
        <li><a href="./">首页</a></li>
        {{foreach from=$nav item=value}}
        <li><a href="list.php?id={{$value->id}}" title="{{$value->nav_info}}">{{$value->nav_name}}</a></li>
        {{/foreach}}
    </ul>
</div>
<div id="search">
    <form method="get" action="search.php">
        <select name="type">
            <option selected="selected" value="1">按标题</option>
            <option value="2">按关键字</option>
        </select>
        <input type="text" name="inputkeyword" class="text"/>
        <input type="submit" class="submit" value="搜索"/>
    </form>

</div>
<div id="newslist">
    <div class="list bottom">
        <h2><a href="list.php?id=1" target="_blank">更多</a>军事动态</h2>
        <ul>
            <li><em>11-27</em><a href="details.php?id=57" target="_blank">俄海军11月将接收2艘水文调查船 明年将...</a></li>
            <li><em>11-27</em><a href="details.php?id=56" target="_blank">所得税法</a></li>
            <li><em>11-27</em><a href="details.php?id=55" target="_blank">tttttttttt</a></li>
            <li><em>11-27</em><a href="details.php?id=54" target="_blank">tttttttttt</a></li>
            <li><em>10-20</em><a href="details.php?id=45" target="_blank">英国第二艘女王级航母舰岛到货</a></li>
            <li><em>10-20</em><a href="details.php?id=44" target="_blank">解放军对美军南海示弱 后患无穷！</a></li>
            <li><em>10-20</em><a href="details.php?id=43" target="_blank">深度：中国长剑10导弹让印度眼红 印度失...</a></li>
        </ul>
    </div>
    <div class="list right bottom">
        <h2><a href="list.php?id=8" target="_blank">更多</a>热门汽车</h2>
        <ul>
            <li><em>10-21</em><a href="details.php?id=51" target="_blank">长安奔奔EV纯电动版亮相 续航里程达20...</a></li>
            <li><em>10-21</em><a href="details.php?id=50" target="_blank">北京光伏充电站首尝PPP模式 落子石景山...</a></li>
            <li><em>10-21</em><a href="details.php?id=49" target="_blank">92号汽油每升涨0.04元 对私家车主的...</a></li>
        </ul>
    </div>
    <div class="list bottom">
        <h2><a href="list.php?id=3" target="_blank">更多</a>时尚女人</h2>
        <ul>
            <li><em>10-21</em><a href="details.php?id=48" target="_blank">时尚加绒针织毛衣搭配 4款潮流搭配sho...</a></li>
            <li><em>10-21</em><a href="details.php?id=47" target="_blank">SEC对分众传媒巨额罚款 分众传媒为何选...</a></li>
            <li><em>10-21</em><a href="details.php?id=46" target="_blank">雅虎女高管加盟Square 雅虎复兴无望...</a></li>
        </ul>
    </div>
    <div class="list right bottom">
        <h2><a href="list.php?id=4" target="_blank">更多</a>科技频道</h2>
        <ul>
            <li><em>10-21</em><a href="details.php?id=53" target="_blank">亚洲消息应用的营收远胜美国同行</a></li>
            <li><em>10-21</em><a href="details.php?id=52" target="_blank">淘宝百色馆上线运营</a></li>
        </ul>
    </div>
</div>
{{include file = "footer.tpl"}}