<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Siswa extends CI_Controller {

	public function __construct(){
		parent::__construct();

	}
	
	public function index()
	{
		$data = [
			'active_controller'=> 'siswa',
			'active_function'=>'index'];
		$this->load->view('adminlte2/global/template',$data);
	}
}
