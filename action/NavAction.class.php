<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 11:14
 */
class NavAction extends Action
{
    public function __construct($_tpl, $_model = null)
    {
        parent::__construct($_tpl, $_model);
    }

    public function showfront()
    {
        $nav = new NavModel();
        $this->_tpl->assign('nav', $nav->header_nav());
    }
}

