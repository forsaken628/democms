<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/19
 * Time: 10:25
 */
class AdminAction extends Action
{
    protected $_model;

    public function __construct($_tpl, $_model = null)
    {
        parent::__construct($_tpl);
        $this->_model = new AdminModel();
    }

    public function adminAction()
    {
        $this->_tpl->assign('title', '欢迎光临CMS内容管理系统后台操作');
        $this->_tpl->assign('css', ['index']);
        Validate::checkSession();
        $this->_tpl->display('admin.tpl');
    }

    public function loginAction()
    {
        $this->_tpl->assign('title', '登录CMS后台管理系统');
        $this->_tpl->assign('css', ['admin']);
        $this->_tpl->assign('js', ['/js/admin_login.js']);
        if ($_GET['action'] == 'logout') {
            TOOL::unSession();
            TOOL::alertLocation('已登出', 'admin_login.php');
        }
        if (isset($_SESSION['admin'])) {
            Tool::alertLocation(null, 'admin.php');
        }
        if ($_GET['action'] == 'login') {
            $clean['username'] = $_POST['admin_user'];
            $clean['password'] = sha1(trim($_POST['admin_pass']));
            $clean['code'] = $_POST['code'];
            if (Validate::checkEquals($clean['code'], $_SESSION['code'])) {
                if ($id = $this->_model->checkLogin($clean['username'], $clean['password'])) {
                    $_SESSION['admin']['id'] = $id;
                    $_SESSION['admin']['admin_user'] = $clean['username'];
                    TOOL::alertLocation('', 'admin.php');
                } else {
                    TOOL::alertBack('账号密码不匹配');
                }
            }
        }
        $this->_tpl->display('admin_login.tpl');
    }

    public function contentAction()
    {
        Validate::checkSession();
        $this->_tpl->assign('title', 'main');
        $this->_tpl->assign('css', ['admin']);
        $this->_tpl->assign('js', ['../js/admin_content.js', '../ckeditor/ckeditor.js']);
        switch ($_GET['action']) {
            default:
            case'show':
                $this->_tpl->assign('action', 'show');
                $this->_tpl->assign('newsList', $this->_model->getNewsList($_GET['nav']));
                $this->_tpl->assign('navList', $this->_model->getNavList());
                break;
            case 'add':
                $this->_tpl->assign('action', 'add');
        }

        $this->_tpl->display('content.tpl');
    }

    public function manageAction()
    {
        Validate::checkSession();
        //Validate::checkPremission('3','警告，权限不足，您不能管理管理员！');
        $this->_tpl->assign('title', 'main');
        $this->_tpl->assign('css', ['admin']);
        $this->_tpl->assign('js', ['/js/admin_manage.js']);
        switch ($_GET['action']) {
            case 'add':
                $action = 'add';
                break;
            case 'update':
                if (isset($_POST['send'])) {
                    if ($_POST['pass'] != $_SESSION['token']) {
                        Tool::alertLocation('操作非法', '/admin/admin.php');
                    }
                    unset($_SESSION['token']);
                    if ($_SESSION['token_time'] + 5 * 60 < time()) {
                        Tool::alertLocation('操作超时', '/admin/admin.php');
                    }
                    unset($_SESSION['token_time']);
                    $data['id'] = intval($_POST['id']);
                    $data['admin_pass'] = $_POST['admin_pass'];
                    if ($this->_model->modifyAdmin($data) == 1) {
                        Tool::alertLocation('ac', $_POST['prev_url']);
                    } else {
                        Tool::alertLocation('error', $_POST['prev_url']);
                    }
                }
                $id = intval($_GET['id']);
                $action = 'update';
                $admin = $this->_model->getAdminList([$id]);
                $admin = $admin[0];
                $_SESSION['token'] = sha1(time() . mt_rand());
                $_SESSION['token_time'] = time();
                $this->_tpl->assign('pass', $_SESSION['token']);
                $this->_tpl->assign('admin', $admin);
                break;
            default:
            case 'show':
                $action = 'show';
                $this->_tpl->assign('adminList', $this->_model->getAdminList());
        }
        $this->_tpl->assign('action', $action);
        $this->_tpl->display('manage.tpl');
    }

    public function navAction()
    {
        switch ($_GET['action']) {
            default:
            case'show':
                $this->_tpl->assign('action', 'show');
                break;
            case 'add':
                $this->_tpl->assign('action', 'add');
        }
    }

    public function topAction()
    {
        $this->_tpl->assign('title', 'top');
        $this->_tpl->assign('css', ['admin']);
        $this->_tpl->assign('js', ['/js/admin_top_nav.js']);

        Validate::checkSession();
        $this->_tpl->assign('admin_user', $_SESSION['admin']['admin_user']);
        $this->_tpl->display('top.tpl');
    }
}