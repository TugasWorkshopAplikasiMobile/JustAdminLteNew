<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function index(){
// $data['show']=$this->mymodel->select('admin');
		if ($this->session->userdata('level')!="sekretaris1") {
            redirect(base_url());
}else{
	// $data['side']='tampil/side/side';
	// $data['content']='tampil/utama/dashboard_v';
	$data['show']=$this->mymodel->select('admin');
	$this->load->view('v-dashboard',$data);
}
}
}
