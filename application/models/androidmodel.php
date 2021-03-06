<?php
if (!defined('BASEPATH'))
exit('No direct script acces allowed');

class androidmodel extends CI_Model {
 	function __construct()
    {
        parent::__construct();
    }

	public function select($table)
	{
		return $this->db->get($table);
	}

	public function selectwhere($table,$data)
	{
		return $this->db->get_where($table, $data);
	}

	function delete($table,$data)
	{
		$this->db->delete($table, $data);
	}

	function update($table,$data,$key)
	{
		$this->db->update($table,$data,$key);
	}

	function insert($table,$data)
	{
		$this->db->insert($table,$data);
	}
}
?>
