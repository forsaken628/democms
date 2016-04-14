<?php
	//模型基类
	class Model {
		protected $_db;
		function __construct()
		{
			$this->_db = DB::getDB();
		}

		//执行多条SQL语句
		public function multi($_sql) {
			$this->_db->multi_query($_sql);
			DB::unDB($_result = null, $this->_db);
			return true;
		}
		
		//获取下一个增值id模型
		public function nextid($_table) {
			$_sql = "SHOW TABLE STATUS LIKE '$_table'";
			$_object = $this->one($_sql);
			return $_object->Auto_increment;
		}
		
		//查找总记录模型
		protected function total($_sql) {
			$_result = $this->_db->query($_sql);
			$_total = $_result->fetch_row();
			DB::unDB($_result, $this->_db);
			return $_total[0];
		}
		
		//查找单个数据模型
		protected function one($_sql) {
			$_result = $this->_db->query($_sql);
			$_objects = $_result->fetch_object();
			DB::unDB($_result, $this->_db);
			return Tool::htmlString($_objects);
		}
		
		//查找多个数据模型
		protected function all($_sql) {
			$_result = $this->_db->query($_sql);
			$_html = array();
			while (!!$_objects = $_result->fetch_object()) {
				$_html[] = $_objects;
			}
			DB::unDB($_result, $this->_db);
			return Tool::htmlString($_html);
		}
		
		//增删修模型
		protected function aud($_sql) {
			$this->_db->query($_sql);
			$_affected_rows = $this->_db->affected_rows;
			DB::unDB($_result = null, $this->_db);
			return $_affected_rows;
		}
	}