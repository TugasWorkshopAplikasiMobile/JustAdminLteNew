<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct(){
		parent::__construct();
  	$this->load->model('m_login');
	}


	public function index()
	{
		$this->load->view('/adminlte2/login');
}

public function login_action(){

	if($this->session->userdata('status_login') == "login"){
		redirect(base_url("dashboard"));
	}
    $data_login = $this->m_login->login($this->input->post('username'), ($this->input->post('password')));
		$cek = count($data_login);
    if($cek > 0){
			$data_login = $this->m_login->login($this->input->post('username'), ($this->input->post('password')));
			$user = $this->input->post('username');
			// $status = $data_login->status;
      $data_session = array(
        'nama'=>$user,
				'status_login' => "login",
				'status' => $data_login->status
      );
      $this->session->set_userdata($data_session);
      // redirect(base_url('dashboard'));
			if ($status == 'adminpusat') {
				redirect(base_url('dashboard'));
			}
    }else{
      echo "Username dan password salah.";
    }
	}

	function logout(){
		$this->session->sess_destroy();
		redirect('login');
	}

}
