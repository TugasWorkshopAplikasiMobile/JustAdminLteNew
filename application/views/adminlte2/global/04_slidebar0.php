<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <!-- <div class="user-panel">
      <div class="pull-left image">
        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p>Dashboard</p>
        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
      </div>
    </div> -->
      <ul class="sidebar-menu" data-widget="tree">
      <h2><b><li class="header" style="text-align: center;">Menu Petugas</li></h2></b>  
        <li><a href="<?php print base_url('index.php/superadmin/dashboard');?>"><i class="fa fa-dashboard text-white"></i> <span>Home</span></a></li>
        
        <li><a href="<?php print base_url('index.php/superadmin/profile');?>"><i class="fa fa-user text-green"></i> <span>Data Siswa</span></a></li>

        <li><a href="<?php print base_url('index.php/superadmin/Petugasdata');?>"><i class="fa fa-user text-green"></i> <span>Data Petugas</span></a></li>

        <li><a href="<?php print base_url('index.php/superadmin/');?>"><i class="fa fa-envelope text-yellow"></i> <span>Pengumuman</span></a></li>

         <li><a href="<?php print base_url('index.php/superadmin/Nilai');?>"><i class="fa fa-book text-red"></i> <span>Nilai</span></a></li>

        <li><a href="<?php print base_url('index.php/superadmin/');?>"><i class="fa fa-book text-red"></i> <span>Verifikasi Daftar Ulang</span></a></li>
      </ul>
    </section>
  </aside>
