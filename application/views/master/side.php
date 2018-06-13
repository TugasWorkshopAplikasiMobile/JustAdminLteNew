<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
        <p style="color: #ffffff;">Sekretaris Pusat</p>
        </div>
        <div class="pull-left info">
          
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">Menu</li>
        <li class="treeview <?php if($this->uri->segment(1)==""){echo "active";}?>">
          <a href="<?php echo base_url('dashboard')?>">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>
      </ul>

      <?php if ($this->session->userdata('level')=="sekretaris1") { ?>
      <ul class="sidebar-menu <?php if($this->uri->segment(1)=="petugas" OR $this->uri->segment(1)=="siswa" OR $this->uri->segment(1)=="nilai" OR $this->uri->segment(1)=="pengumuman" OR $this->uri->segment(1)=="verifikasi"){echo "active";}?>">
          <a href="<?php echo base_url('petugas')?>">
       <!--  <li class="header">MAIN NAVIGATION</li> -->
        <li class="treeview" >
            <i class="fa fa-user"></i> <span>Petugas</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>
      </ul>

      <ul class="sidebar-menu">
      <ul class="sidebar-menu">
        <li class="header">Siswa</li>
      <ul class="sidebar-menu">
       <!--  <li class="header">MAIN NAVIGATION</li> -->
        <li class="treeview">
          <a href="#">
            <i class="fa fa-graduation-cap"></i> <span>Siswa</span>

            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i> 
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url('siswa/siswa')?>"><i class="fa fa-circle-o"></i>TK</a></li>
            <li><a href="<?php echo base_url('siswa/siswa')?>"><i class="fa fa-circle-o"></i> SD</a></li>
            <li><a href="<?php echo base_url('siswa/siswa')?>"><i class="fa fa-circle-o"></i> SMP</a></li>
          </ul>
        </li>
      </ul>
      <ul class="sidebar-menu">
       <!--  <li class="header">MAIN NAVIGATION</li> -->
        <li class="treeview">
          <a href="<?php echo base_url('nilai/nilai')?>">
            <i class="fa fa-pencil"></i> <span>Nilai</span>

            <span class="pull-right-container">
               <i class="fa fa-angle-left pull-right"></i> 
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url('nilai/nilai')?>"><i class="fa fa-circle-o"></i>TK</a></li>
            <li><a href="<?php echo base_url('nilai/nilai')?>"><i class="fa fa-circle-o"></i> SD</a></li>
            <li><a href="<?php echo base_url('nilai/nilai')?>"><i class="fa fa-circle-o"></i> SMP</a></li>
          </ul>
        </li>
      </ul>
<?php  } ?>
       
    </section>
    <!-- /.sidebar -->
  </aside>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content" style="padding-bottom: 50px;">