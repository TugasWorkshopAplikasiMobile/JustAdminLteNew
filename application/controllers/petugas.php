<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class petugas extends CI_Controller {
	function __construct()
    {
        parent::__construct();
        $this->load->model('mymodel');
         if ($this->session->userdata('level')!="sekretaris1") {
            redirect(base_url());
        }
    }
	public function index()
	{
		$data['show']=$this->mymodel->select('admin');
		$this->load->view('petugas/v-petugas',$data);
	}
	public function tambahData(){
		$data = array('page_title'    => ucwords(str_replace("_", " ", $this->uri->segment(1))),);
		$this->load->view('petugas/t-petugas',$data);
	}
	public function fungsitambahdata(){
		$data['NAMA_ADMIN']=$this->input->post('nama');
		$data['JENIS_KELAMIN']=$this->input->post('jk');
		$data['NO_TELP']=$this->input->post('tlp');
		$data['STATUS']=$this->input->post('sts');
		$data['USERNAME_ADMIN']=$this->input->post('username');
		$data['PASSWORD_ADMIN']=$this->input->post('pass');
		$this->mymodel->insert('admin',$data);
		header('location:'.base_url().'petugas');
	}
	public function deletedata()
	{
		$id=$this->uri->segment(3);
		$delete=array('ID_ADMIN'=>$id);
		$this->mymodel->delete('admin',$delete);
		header('location:'.base_url().'petugas');
	}
	public function editData(){
		// header('Content-Type: application/json');
		$id=$this->uri->segment(3);
		$data['dataupdate']= $this->db->query("SELECT * FROM admin WHERE ID_ADMIN='$id'");
		$this->load->view('petugas/e-petugas',$data);
		// echo json_encode($data['dataupdate']->row());
	}
	public function fungsieditdata(){
		// header('Content-Type: application/json');
		$id=$this->input->post('id');
		// $where= array('no'=>$id);
		$where= array('ID_ADMIN'=>$id);
		$data['NAMA_ADMIN']=$this->input->post('nama');
		$data['JENIS_KELAMIN']=$this->input->post('jk');
		$data['NO_TELP']=$this->input->post('tlp');
		$data['STATUS']=$this->input->post('sts');
		$data['USERNAME_ADMIN']=$this->input->post('username');
		$data['PASSWORD_ADMIN']=$this->input->post('pass');
		$this->mymodel->update('admin',$data,$where);
		header('location:'.base_url().'petugas');
	// echo json_encode($data);	
	}
	}