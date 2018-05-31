<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Petugasdata extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		// $this->load->model('m_petugas');
		// $this->load->library('from_validation');
		// $this->load->helper('url','html');
	}


		public function index(){
		$this->load->view('adminlte2/profile/petugas');
	}
		public function insertptg(){
		// $this->from_validation->set_rules('');
		// $this->from_validation->set_rules('');
		// $this->from_validation->set_rules('');
	}
}