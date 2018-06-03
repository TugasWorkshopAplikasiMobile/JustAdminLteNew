<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_petugas extends CI_Model{
 	public $id_admin;
    public $nama_admin;
    public $jenis_kelamin;
    public $no_telp;
    public $status;
    public $username_admin;
    public $password_admin;
 
    public $labels = [];

    public function __construct(){
    	parent:: __construct();
    	$this->labels = $this-> _attributeLabels();
    	$this->load->database();
    }

  public function petugasinsert() {
  		$sql = sprintf("INSERT INTO admin VALUES('id','nama','kelamin','tlpon','stats,'username','pass')",
  			$this->id_admin,
  			$this->nama_admin,
  			$this->jenis_kelamin,
  			$this->no_telp,
  			$this->status,
  			$this->username_admin,
  			$this->password_admin);
  		$this->db->query($sql);
   }
    public function petugasupdate() {
  		$sql = sprintf("UPDATE admin SET nama_admin='nama',jenis_kelamin='kelamin',no_telp='tlpon',status='stats',username_admin='username',password_admin='pass', WHERE id_admin='id'",
  			$this->id_admin,
  			$this->nama_admin,
  			$this->jenis_kelamin,
  			$this->no_telp,
  			$this->status,
  			$this->username_admin,
  			$this->password_admin);
  		$this->db->query($sql);
   }
    public function petugasdelete() {
  		$sql = sprintf("DELETE FROM admin WHERE id_admin='id'",$this->id_admin);
  		$this->db->query($sql);
   }
    public function read() {
        // $sql = "SELECT * FROM admin ORDER BY id_admin";
        $query = $this->db->get('admin');
        return $query->result();
    }
     private function _attributeLabels() {
        return [
            'id_admin'=>'id_admin: ',
            'nama_admin'=>'nama_admin: ',
            'jenis_kelamin'=>'jenis_kelamin:',
            'no_telp'=>'no_telp: ',
            'status'=>'status: ',
            'username_admin'=>'username_admin: ',
            'password_admin'=>'password_admin: '
        ];
    }
 }
 ?>