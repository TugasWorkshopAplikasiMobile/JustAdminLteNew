<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class notifcontroler extends CI_Controller {


public function peringatan(){
  if (isset($_GET['id_notif'])) {
            $data = array(
                'id_notif' => $_GET['id_notif'],
                'readpesan' => 'y' 
            );
            $this->m_notif->update($data['id_notif'],$data);
            if($_GET['jenis']=="user daftar"){
            	redirect(base_url('userdaftar/detail'.$_GET['id']));
            }elseif($_GET['jenis']=="formulir") {
            	redirect(base_url('formulirsiswa/detail'.$_GET['id']));
            }elseif($_GET['jenis']=="daftar ulang") {
            	redirect(base_url('daftarulangsiswa/detail'.$_GET['id']));
            }
	}else{
		if (isset($_POST['pingping'])) {
			$data_notifupdate = array('notifstatus' => 'y' );
			$this->m_notif->updateonuser($this->session->userdata('ID_USER'),$data_notifupdate);
		}else{
			 $iduser_login=$this->session->userdata('ID_USER');
			 $jmlnotif=$this->m_notif->get_where("WHERE readpesan='t' AND ID_USER='$iduser_login'")->num_rows();
			 $jmlping=$this->m_notif->get_where("WHERE readpesan='t' AND ID_USER='$iduser_login'")->num_rows();
			 $keluaran="";
			 $keluaran2="";
			 $url="";
			 $type="";
			 $url2="";
			 $notif_data=$this->m_notif->get_where("WHERE readpesan='t' AND ID_USER='$iduser_login' ORDER BY id_notif DESC")->result();
			 $urut=0;
			 foreach ($notif_data as $peringatan) {
			 	++$urut;
			 	if ($urut%2==0) {
			 		$hr="<hr>";
			 	}else{
			 		$hr="";
			 	}
			 	$url = base_url('awal/pengingat/?id_notif='.$peringatan->id_notif.'&id='.$peringatan->id.'&jenis='.$peringatan->jenis_notif);
				 $keluaran.=$hr."<a class='dropdown-item' href='".$url."'>
                    <div class='row'>
                    <b>".$peringatan->kop_notif
                    ." "
                    ."</b>"
                    .$peringatan->isi_notif
                    .
                    "</div>
                    </a>";
			 }
			 	$data_notifping=$this->m_notif->get_where("WHERE status_notif='t' AND ID_USER='$iduser_login'")->result();
			 	foreach ($data_notifping as $notifping) {
			 		 $url1 = "url: '".base_url('awal/notification/?id_notif='.$notifping->id_notif.'&id='.$notifping->id.'&jenis='.$notifping->jenis_notif)."',";
			 		if ($notifping->jenis_notif=="user daftar") {
			 			$type = "type : 'primary',";
			 		}elseif($notifping->jenis_notif=="formulir"){
			 			$type = "type : 'info',";
			 		}elseif($notifping->jenis_notif=="daftar ulang"){
			 			$type = "type : 'secondary',";
			 		}else{
			 			$type = "type : 'success',";
				}
				$keluaran2.=
				"<script>
                        $.notify({
                            icon: 'report',
                            title: '<strong>".$notifping->judul_notif."</strong><br>',
                            message: '".$notifping->isi_notif."',
                            ".$url2."
                        },{
                        	".$type."
                            animate: {
                                enter: 'animated fadeInUp',
                                exit: 'animated fadeOutRight'
                            },
                            placement: {
                                from: 'bottom',
                                align: 'right'
                            },
                            z_index: 1031,
                        });
                    </script>";
                }
                $data = array(
                    'peringatan'          => $output,
                    'notificationping'    => $output2,
                    'unseen_peringatan'   => $jmlnotif,
                    'jmlping'             => $jmlping, 
                );
                $data1 = json_encode($data);
                echo $data1;
			}
		}
	}
}