
<?php $this->load->view('master/header') ?>
<?php $this->load->view('master/side') ?>
  <div class="col-md-6">
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Input Data Petugas </h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
          <form method="post" action="<?php echo base_url('petugas/fungsitambahdata') ?>">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Admin</label>
                  <input type="text" class="form-control" id="idnama" name="nama" placeholder="Nama Admin">
                </div>
                <div class="form-group">
                <label>Jenis Kelamin</label>
                <select class="form-control select2" id="idjk" name="jk" style="width: 100%;">
                  <option selected="selected">-Pilih Jenis Kelamin-</option>
                  <option>Laki-Laki</option>
                  <option>Perempuan</option>
                </select>
              </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">No Telephone</label>
                  <!-- <select class="form-control select2" name="sts" id="idstatus" style="width: 10%;"> -->
                  <!-- <option selected="selected">-Pilih Status-</option> -->
                  <input type="text" class="form-control" id="idtelp" name="tlp" placeholder="No Telp">
                </div>
                <div class="form-group">
                <label>Status</label>
                <select class="form-control select2" name="sts" id="idstatus" style="width: 100%;">
                  <option selected="selected">-Pilih Status-</option>
                  <option>Sekretaris 1</option>
                  <option>Admin TK</option>
                  <option>Admin SD</option>
                  <option>Admin SMP</option>
                  <option>Direktur</option>
                </select>
              </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Username</label>
                  <input type="text" class="form-control" id="idusername" name="username" placeholder="Username">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" id="idpass" name="pass" placeholder="Password">
                </div>

              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Simpan</button>
                <a href="http://localhost/kuliah/jann/petugas/petugasdata" type="button" class="btn btn-primary">Kembali</a>
              </div>
            </form>
          </div>
<?php $this->load->view('master/footer') ?>
<?php $this->load->view('master/js') ?>