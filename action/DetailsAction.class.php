<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 12:22
 */
class DetailsAction extends Action
{
    public function __construct($_tpl, $_model=null)
    {
        parent::__construct($_tpl, $_model);
    }

    public function _action(){
        var_dump($_REQUEST);
    }
}