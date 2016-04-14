<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 15:49
 */
class NavModel extends Model
{
    const TABLE = DB_PREX . 'nav';

    function __construct()
    {
        parent::__construct();
    }

    public function header_nav()
    {
        $sql = "SELECT id,nav_name,nav_info FROM " . NavModel::TABLE . " WHERE pid=0 ORDER BY sort";
        return $this->all($sql);
    }
}