<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 11:17
 */
class IndexAction extends Action
{
    /**
     * @var IndexModel
     */
    private $indexModel;

    /**
     * IndexAction constructor.
     * @param TPL $_tpl
     * @param null $_model
     */
    public function __construct($_tpl, $_model = null)
    {
        parent::__construct($_tpl, new IndexModel());
        $this->indexModel = $this->_model;
    }

    /**
     *显示导航nav
     */
    public function showHeaderNav()
    {
        $this->_tpl->assign('nav', $this->indexModel->getHeaderNav());
    }

    /**
     *主页
     */
    public function indexAction()
    {
        $this->_tpl->assign('title', '新闻系统-CMS内容管理系统');
        $this->_tpl->assign('css', ['basic', 'index']);
        $this->_tpl->assign('js', ['js/reg.js', 'config/static.php?type=header']);
        $this->_tpl->assign('newsList', $this->indexModel->getIndexNews());
        $this->_tpl->display('index.tpl');
    }

    /**
     *
     */
    public function listAction()
    {
        $id = intval($_GET['id']);
        $this->_tpl->assign('css', ['basic', 'list']);
        $this->_tpl->assign('js', ['config/static.php?type=header']);

        $this->page($this->indexModel->getListNews($id,COUNT_NEWS), 8);

        //结果集
        $listNews = $this->indexModel->getListNews($id);
        $this->_tpl->assign('listNews', $listNews);
        //子栏目列表
        $this->_tpl->assign('childList', $this->indexModel->getChildList($id));
        /*面包屑
        array:stdClass(id,info,title)
        */
        $breadCrumb = $this->indexModel->getBreadCrumb($id);
        $this->_tpl->assign('title', $breadCrumb[count($breadCrumb) - 1]->nav_name . ' - 新闻系统 - CMS内容管理系统');
        $this->_tpl->assign('breadCrumb', $breadCrumb);
        $this->_tpl->display('list.tpl');
    }

    /**
     *
     */
    public function searchAction()
    {
        $this->_tpl->assign('css', ['basic', 'list']);
        $this->_tpl->assign('js', ['config/static.php?type=header']);

        $clean['keyword'] = $_GET['inputkeyword'];
        $clean['type'] = intval($_GET['type']);
        //初始化分页
        $this->page($this->indexModel->countSearch($clean['keyword'], $clean['type'])->count, 8);

        $this->_tpl->assign('title', '搜索:' . $clean['keyword'] . ' - 新闻系统 - CMS内容管理系统');
        //面包屑
        $this->_tpl->assign('search', $clean['keyword']);
        //结果集

        $listNews = $this->indexModel->search($clean['keyword'], $clean['type']);
        $this->_tpl->assign('listNews', $listNews);
        $this->_tpl->display('search.tpl');
    }

    /**
     *
     */
    public function detailsAction()
    {
        $this->_tpl->assign('css', ['basic', 'details']);
        $this->_tpl->assign('js', ['js/details.js', 'config/static.php?type=header']);

        $this->_tpl->assign('title', '解放军对美军南海示弱 后患无穷！ - 新闻系统 - CMS内容管理系统');
        $this->_tpl->display('details.tpl');
    }
}