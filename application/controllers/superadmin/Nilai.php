<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Nilai extends CI_Controller {

	public function __construct(){
		parent::__construct();

	}
	
	public function index()
	{
		$data = [
			'active_controller'=> 'profile',
			'active_function'=>'index'];
		$this->load->view('adminlte2/nilai/nilai',$data);
	}
}
