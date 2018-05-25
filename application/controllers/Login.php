<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct(){
		parent::__construct();
  	$this->load->model('m_login');
		// redirect(base_url('superadmin/dashboard'));
		// if(!$this->session->userdata('nama')){
		// 	redirect(base_url("login"));
		// }
	}


	public function index()
	{
		$this->load->view('/adminlte2/login');
}

public function login_action(){
    $cek = $this->m_login->login($this->input->post('username'), ($this->input->post('password')));
    if($cek > 0){
      $data_session = array(
        'nama'=>$user,
        'status'=> "login"
      );
      $this->session->set_userdata($data_session);
      redirect(base_url('dashboard'));
    }else{
      echo "Username dan password salah.";
    }
	}

	function logout(){
		$this->session->sess_destroy();
		redirect('login');
	}

}
