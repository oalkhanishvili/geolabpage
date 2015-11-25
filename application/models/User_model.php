<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model{
	/**
	 * SELECT * FROM {NAME}
	 * @param string $table 
	 * @return array
	 */
	public function select($table, $key='', $order_by = '', $limit = '', $offset = ''){
		$query = $this->db->select('*')
			->order_by($key, $order_by)
			->get($table, $limit, $offset);
		if ( $query->num_rows() > 0 ){
			foreach ( $query->result_array() as $row ){
				$result[] = $row;
			}
			$result[0]['num'] = $query->num_rows();
			return $result;
		}
		return false;
	}
	/**
	 * SELECT * FROM {NAME} WHERE
	 * @param string $table 
	 * @param int $id 
	 * @return array
	 */
	public function selectById($table, $id){
		$query = $this->db->select('*')
			->where('id', $id)
			->get($table);
		if ( $query->num_rows() > 0 ){
			$result = $query->row_array();
			return $result;
		}
		return false;
	}
	/**
	 * MERGE LECTURE WITH PROJECTS
	 * @param int $id 
	 * @return array
	 */
	public function innerSelectProject($id=''){
		$this->db->select('project.*,lecture.id as lec_id,lecture.pic_name,lecture.name');
		if ( !empty($id) ){
		$this->db->where('lecture.id', $id );
		}
		$this->db->join('project','merge.project_id=project.id');
		$this->db->join('lecture', 'merge.lecture_id=lecture.id');
		$query = $this->db->get('merge');
		if ( $query->num_rows() > 0 ){
			foreach ( $query->result_array() as $row ){
				$result[] = $row;
			}
			return $result;
		}
		return false;
	}
	/**
	 * SELECT RAMDOM QUERY WITH LIMIT AND SELECTED ITEMS
	 * @param stirng $table 
	 * @param int $limit 
	 * @param string $select [query items] 
	 * @return array
	 */
	public function randomSelect($table, $limit = NULL, $select = '*'){
		$query = $this->db->select($select)
			->order_by('id' , 'RANDOM')
			->limit($limit)
			->get($table);
		if ( $query->num_rows() > 0 ){
			foreach ( $query->result_array() as $row ){
				$result[] = $row;
			}
			return $result;
		}
		return false;
	}
	/**
	 * SELECT STATIC PAGES (model,environment...etc)
	 * @param string $table 
	 * @param string $pageName 
	 * @return array
	 */
	public function selectPages($table,$pageName){
		$query = $this->db->select('*')
			->get_where($table, array('controller' => $pageName));
		if ( $query->num_rows() > 0 ){
			$result = $query->row_array();
			return $result;
		}
		return false;
	}
}