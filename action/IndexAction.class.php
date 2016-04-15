<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 11:17
 */
class IndexAction extends Action
{
    private $indexModel;

    public function __construct($_tpl, $_model = null)
    {
        parent::__construct($_tpl, new IndexModel());
        $this->indexModel = $this->_model;
    }

    //导航nav
    public function showHeaderNav()
    {
        $this->_tpl->assign('nav', $this->indexModel->getHeaderNav());
    }

    //主页
    public function indexAction()
    {
        $this->_tpl->assign('title', '新闻系统-CMS内容管理系统');
        $this->_tpl->assign('css', ['basic', 'index']);
        $this->_tpl->assign('js', ['js/reg.js', 'config/static.php?type=header']);
        $this->_tpl->assign('newsList', $this->indexModel->getIndexNews());
        $this->_tpl->display('index.tpl');
    }

    //
    public function listAction()
    {
        $id = intval($_GET['id']);
        $this->_tpl->assign('css', ['basic', 'list']);
        $this->_tpl->assign('js', ['config/static.php?type=header']);


        $this->page($this->indexModel->countListNews($id)->count, 2);
        $listNews = $this->indexModel->getListNews($id);


        $this->_tpl->assign('listNews', $listNews);
        $this->_tpl->assign('childList', $this->indexModel->getChildList($id));
        $breadCrumb = $this->indexModel->getBreadCrumb($id);
        $this->_tpl->assign('title', $breadCrumb[count($breadCrumb) - 1]->nav_name . ' - 新闻系统 - CMS内容管理系统');
        $this->_tpl->assign('breadCrumb', $breadCrumb);
        $this->_tpl->display('list.tpl');
    }

    //
    public function searchAction()
    {
    }

    //
    public function detailsAction()
    {
        $this->_tpl->display('details.tpl');
    }
}