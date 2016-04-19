<?php

/**
 * Created by PhpStorm.
 * User: ad
 * Date: 2016/4/14
 * Time: 19:05
 */
class IndexModel extends Model
{
    /**
     * 获取首页列表
     * @return array
     */
    public function getIndexNews()
    {
        $sql = "SELECT c.id,c.title,c.attr,c.info,c.date,
n2.id nav_id,n2.nav_name
FROM cms_content c
  JOIN cms_nav n1 ON c.nav = n1.id
  JOIN cms_nav n2 ON n1.pid = n2.id
ORDER BY n2.id,c.id DESC";
        $pre_id = '';
        $temp = array();
        $newsList = array();
        foreach ($this->all($sql) as $item) {
            if ($item->nav_id != $pre_id) {
                $pre_id = $item->nav_id;
                if (!empty($temp)) {
                    $newsList[] = $temp;
                    $temp = array();
                }
                $temp['head'] = new stdClass();
                $temp['head']->nav_name = $item->nav_name;
                $temp['head']->nav_id = $item->nav_id;
            }
            $temp['body'][] = $item;
        }
        if (!empty($temp)) {
            $newsList[] = $temp;
        }
        return $newsList;
    }

    /**
     * 获取导航栏
     * @return StdClass|string
     */
    public function getHeaderNav()
    {
        $sql = "SELECT id,nav_name,nav_info FROM cms_nav WHERE pid=0 ORDER BY sort";
        return $this->all($sql);
    }


    /**
     * 获取栏目条目或数量
     * @param int $id
     * @param null $type
     * @return mixed
     */
    public function getListNews($id, $type = null)
    {
        switch ($type) {
            case COUNT_NEWS:
                $sql = "SELECT count(c.id) count
FROM cms_content c
  JOIN cms_nav n1 ON c.nav=n1.id
WHERE n1.pid=$id OR n1.id=$id";
                return $this->one($sql)->count;
                break;
            case null:
                $sql = "SELECT c.*,n1.pid,n1.nav_name
FROM cms_content c
  JOIN cms_nav n1 ON c.nav=n1.id
WHERE n1.pid=$id OR n1.id=$id " . $this->limit;
                return $this->all($sql);
        }
    }

    /**
     * @param int $id 栏目id
     * @return StdClass|string
     */
    public function getChildList($id)
    {
        $sql = "SELECT id,nav_name,nav_info
FROM cms_nav WHERE pid=$id ORDER BY sort";
        return $this->all($sql);
    }

    /**
     * @param int $id 栏目id
     * @return StdClass|string
     */
    public function getBreadCrumb($id)
    {
        $sql = "SELECT n2.id,n2.nav_name,n2.nav_info
FROM cms_nav n1 JOIN cms_nav n2 ON n1.pid=n2.id WHERE n1.id=$id
UNION SELECT id,nav_name,nav_info
FROM cms_nav WHERE id=$id";
        return $this->all($sql);
    }

    /**
     * @param string $key 搜索词
     * @param int $type 1标题，2关键词
     * @return StdClass|string
     */
    public function search($key, $type = 1)
    {
        $sql = "SELECT * FROM cms_content";
        switch ($type) {
            case 1:
                $sql .= " WHERE title like '%{$key}%'";
                break;
            case 2:
                $sql .= " WHERE keyword like '%{$key}%'";
        }
        $sql .= $this->limit;
        return $this->all($sql);
    }

    /**
     * @param string $key 搜索词
     * @param int $type 1标题，2关键词
     * @return StdClass|string
     */
    public function countSearch($key, $type = 1)
    {
        $sql = "SELECT count(id) count FROM cms_content";
        switch ($type) {
            case 1:
                $sql .= " WHERE title like '%{$key}%'";
                break;
            case 2:
                $sql .= " WHERE keyword like '%{$key}%'";
        }
        return $this->one($sql);
    }
}