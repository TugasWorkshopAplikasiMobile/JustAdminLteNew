<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if($this->session->userdata('status_login') != "login" && ('status') == 'adminpusat'){
			redirect(base_url("login"));
		}
	}
	public function index()
	{
		$data = [
			'active_controller'=> 'dashboard',
		'active_function'=>'index'];
		$this->load->view('adminlte2/global/template',$data);
	}
}
