<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_petugas extends CI_Model{

  public function petugas($inputpetugas) {
  		$insertptg = $this->db->insert($inputpetugas);
  		return $insertptg;
   }
   
 }
 ?>
