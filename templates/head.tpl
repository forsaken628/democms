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