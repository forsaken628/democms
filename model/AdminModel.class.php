<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/19
 * Time: 10:48
 */
class AdminModel extends Model
{
    public function checkLogin($username, $password)
    {
        $sql = "SELECT id FROM cms_manage WHERE admin_user='$username'AND admin_pass='$password'";
        $id = $this->one($sql)->id;
        if (is_null($id)) {
            return false;
        } else {
            return $id;
        }
    }

    public function getAdminList($id = null)
    {
        if ($id) {
            $where = 'where id in (';
            foreach ($id as $item) {
                $where .= $item . ',';
            }
            $where = substr($where, 0, -1) . ')';
        } else {
            $where = '';
        }
        $sql = "SELECT * FROM cms_manage $where";
        return $this->all($sql);
    }

    public function getNavList()
    {
        $sql = "SELECT n1.*,n2.nav_name pname FROM cms_nav n1 JOIN cms_nav n2 ON n1.pid=n2.id ORDER BY n2.sort,n1.sort";
        $pre_id = '';
        $temp = array();
        $navList = array();
        foreach ($this->all($sql) as $item) {
            if ($item->pid != $pre_id) {
                $pre_id = $item->pid;
                if (!empty($temp)) {
                    $navList[] = $temp;
                    $temp = array();
                }
                $temp['head'] = $item->pname;
            }
            $temp['body'][] = $item;
        }
        if (!empty($temp)) {
            $newsList[] = $temp;
        }
        return $navList;
    }

    public function getNewsList($nav = 0)
    {
        if (intval($nav) != 0) {
            $where = " WHERE n.id=$nav";
        }
        $sql = "SELECT c.*,n.nav_name,n.nav_info FROM cms_content c JOIN cms_nav n ON c.nav=n.id" . $where;
        return $this->all($sql);
    }
    public function modifyAdmin(){
        return 1;
    }
}

