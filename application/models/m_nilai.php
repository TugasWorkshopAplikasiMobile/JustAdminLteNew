<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_nilai extends CI_Model{

  public function nilai($table_name) {
  		$insert = $this->db->insert($table_name);
  		return $insert;
   }
   
 }
 ?>
