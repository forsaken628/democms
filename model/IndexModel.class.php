<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 19:05
 */
class IndexModel extends Model
{
    public function getNewsList()
    {
        $sql = "SELECT c.id,c.title,c.attr,c.info,DATE_FORMAT(c.date,'%m-%d') date,
n2.id nav_id,n2.nav_name
FROM cms_content c
  JOIN cms_nav n1 ON c.nav = n1.id
  JOIN cms_nav n2 ON n1.pid = n2.id
ORDER BY n2.id,c.id DESC";
        $a = '';
        $newsList = array();
        foreach ($this->all($sql) as $item) {
            if ($item->nav_id != $a) {
                $a = $item->nav_id;
                if (isset($temp)) {
                    $newsList[] = $temp;
                }
                $temp = array();
            }
            $temp[] = $item;
        }
        $newsList[] = $temp;
        TPL::getInstance()->assign('debug',$newsList);
        return $newsList;
    }
}