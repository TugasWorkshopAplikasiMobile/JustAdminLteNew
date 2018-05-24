<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_login extends CI_Model{

  function login($user,$pass) {
       $this->db->where('nama_admin', $user);
       $this->db->where('password_admin', $pass);
       $query =  $this->db->get('admin');
       return $query->num_rows();
   }
 }
 ?>