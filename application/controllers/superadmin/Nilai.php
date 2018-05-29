<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Nilai extends CI_Controller {

	public function index(){
		$data = [
			'active_controller'=> 'profile',
			'active_function'=>'index'];
		$this->load->view('adminlte2/nilai/nilai',$data);
	}
	public function insert()
	{
		$data = array('Matematika'=> $this->input->POST('Matematika',true),
						'BahasaInggris'=> $this->input->POST('BahasaInggris',true),
						 'IPA'=> $this->input->POST('IPA',true),
							'Psikotest'=> $this->input->POST('Psikotest',true));
		$insert = $this->m_nilai->insert('nilai_test',$data);
		if ($insert>0) {
			echo "berhasil";
		}else{
			echo "gagal disimpan";
		}
	}
}
