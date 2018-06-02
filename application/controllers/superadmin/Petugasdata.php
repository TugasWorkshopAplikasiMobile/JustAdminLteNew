<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Petugasdata extends CI_Controller {

	public $model = NULL;

	public function __construct()
	{
		parent::__construct();
			//Memuat Model
		$this->load->model('m_petugas');
		$this->model = $this->m_petugas;	
		$this->load->database();
		//memuat helper url
		$this->load->helper('url');//sbg redirecrt
	}
		public function index(){
		$this->read();
	}
		public function create(){
			 if(isset($_POST['btnSubmit'])) {
            $this->model->id_admin = $_POST['id_admin'];
            $this->model->nama_admin = $_POST['nama_admin'];
            $this->model->no_telp = $_POST['no_telp'];
            $this->model->status = $_POST['status'];
            $this->model->username_admin = $_POST['username_admin'];
            $this->model->password_admin = $_POST['password_admin'];
            $this->model->petugasinsert();
            redirect('Petugasdata');
        }
        	$this->load->view('adminlte2/profile/petugas', ['model'=>$this->model]);
        }
        public function read(){
        	$rows = $this ->model->read();
        	//$query = $this->db->query("SELECT * FROM admin ORDER BY id_admin");
        	$this->load->view('adminlte2/profile/petugas', ['rows'=>$rows]);
        }
         public function update($id){
			 if(isset($_POST['btnSubmit'])) {
            $this->model->id_admin = $_POST['id_admin'];
            $this->model->nama_admin = $_POST['nama_admin'];
            $this->model->no_telp = $_POST['no_telp'];
            $this->model->status = $_POST['status'];
            $this->model->username_admin = $_POST['username_admin'];
            $this->model->password_admin = $_POST['password_admin'];
            $this->model->petugasupdate();
            
            redirect('Petugasdata');
        }
	}
}