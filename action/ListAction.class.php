<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 12:21
 */
class ListAction extends Action
{
    public function __construct($_tpl, $_model=null)
    {
        parent::__construct($_tpl, $_model);
        $title='军事动态 - 新闻系统 - CMS内容管理系统';
        $this->_tpl->assign('title', $title);
        $this->_tpl->assign('css', ['basic','list']);
        $this->_tpl->assign('js', ['config/static.php?type=header']);
    }

    public function _action(){
        var_dump($_REQUEST);
    }
}