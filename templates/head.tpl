<!DOCTYPE html>
<html lang="cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    {{foreach from=$css item=value}}
    <link rel="stylesheet" type="text/css" href="style/{{$value}}.css" />
    {{/foreach}}
    {{foreach from=$js item=value}}
    <script type="text/javascript" src="{{$value}}"></script>
    {{/foreach}}
    <title>{{$title}}</title>
</head>
<body>

<div id="top">
{{$header}}
</div>

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