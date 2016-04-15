<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 11:17
 */
class IndexAction extends Action
{
    public function __construct($_tpl, $_model = null)
    {
        parent::__construct($_tpl, $_model);
        $title='新闻系统-CMS内容管理系统';
        $this->_tpl->assign('title', $title);
        $this->_tpl->assign('css', ['basic','index']);
        $this->_tpl->assign('js', ['js/reg.js','config/static.php?type=header']);
    }

    public function _action()
    {
        $index = new IndexModel();
        $this->_tpl->assign('newslist',$index->getNewsList());
//        $this->_tpl->assign('nav', $nav->header_nav());
    }
}